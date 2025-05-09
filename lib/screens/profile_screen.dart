import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../models/user.dart';
import '../widgets/bottom_nav_bar.dart';
import 'update_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static final User user = User.fromJson({
    "id": 2,
    "name": "John Doe",
    "email": "kaung@gmail.com",
    "phone": "09785220691",
    "role": "customer",
    "otp": null,
    "address": "123 Main St",
    "hour": "10",
    "minute": "30",
    "dob": "1990-01-01",
    "image": [
      {"1": "http://127.0.0.1:8000/storage/user_images/iWPmvV1mcYw8m2nNc9ObGtr9AUJIKxxRMuQVWVVT.png"},
      {"2": "http://127.0.0.1:8000/storage/user_images/ZqEwDGTSHqqQEOZ6w4nzOg1Xzur3GJRcezAoFZdI.png"},
      {"3": "http://127.0.0.1:8000/storage/user_images/SF4bUyLkibNvQfDn7oWFqMKHXJ5ExtSF61nFBgrU.png"},
      {"4": "http://127.0.0.1:8000/storage/user_images/X2uOyfXSVyj9CqDUM59skmIMTKqGpZVQctnB5bCN.png"},
      {"5": "http://127.0.0.1:8000/storage/user_images/3TcNAeb4iUbMlNQK85do0RB5fY6tU9R0OGAXSHnz.png"}
    ],
    "profile": "http://127.0.0.1:8000/storage/profiles/e5C3qzp6E3pIZelnqU0RxhuKSpBNrPF8CdWMlSRV.jpg",
    "is_verified": true,
    "created_at": "2025-05-05T01:51:41.000000Z",
    "updated_at": "2025-05-05T02:58:34.000000Z"
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.profilePreferences),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Header
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(user.profile),
                    backgroundColor: Colors.grey.shade300,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        l10n.profilePreferences,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // User Details Section
              Text(
                l10n.userDetails,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailRow(context, l10n.email, user.email, Icons.email_outlined),
                      const SizedBox(height: 8),
                      _buildDetailRow(context, l10n.phone, user.phone, Icons.phone_outlined),
                      const SizedBox(height: 8),
                      _buildDetailRow(context, l10n.address, user.address, Icons.home_outlined),
                      const SizedBox(height: 8),
                      _buildDetailRow(context, l10n.dob, user.dob, Icons.calendar_today_outlined),
                      const SizedBox(height: 8),
                      _buildDetailRow(context, l10n.joined, user.createdAt.split('T')[0], Icons.history_outlined),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Image Gallery
              Text(
                'Gallery',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: user.images.length,
                  itemBuilder: (context, index) {
                    final imageUrl = user.images[index].values.first;
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          imageUrl,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) => const Icon(
                            Icons.broken_image,
                            color: Colors.black54,
                            size: 50,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),

              // Update Profile Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => UpdateProfileScreen(user: user));
                  },
                  child: Text(l10n.updatePreferences),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget _buildDetailRow(BuildContext context, String label, String value, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Theme.of(context).colorScheme.secondary),
        const SizedBox(width: 8),
        Text(label, style: Theme.of(context).textTheme.labelMedium),
        const Spacer(),
        Text(value, style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}