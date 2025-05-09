import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_baydin/screens/astrologer_detail_screen.dart';
import '../l10n/app_localizations.dart';
import '../widgets/bottom_nav_bar.dart';

class AstrologersScreen extends StatelessWidget {
  const AstrologersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final astrologers = [
      {
        'name': l10n.acharyaVenkat,
        'specialty': 'Vedic Astrology',
        'rating': '4.5',
        'experience': '8 years',
        'status': 'Online',
        'image': 'https://via.placeholder.com/100',
      },
      {
        'name': l10n.acharyaAru,
        'specialty': 'Life Astrology',
        'rating': '4.8',
        'experience': '12 years',
        'status': 'Offline',
        'image': 'https://via.placeholder.com/100',
      },
      {
        'name': l10n.acharyaVikram,
        'specialty': 'Planetary Aspects',
        'rating': '4.2',
        'experience': '6 years',
        'status': 'Online',
        'image': 'https://via.placeholder.com/100',
      },
      {
        'name': 'acharyaPriya',
        'specialty': 'Numerology',
        'rating': '4.7',
        'experience': '10 years',
        'status': 'Offline',
        'image': 'https://via.placeholder.com/100',
      },
    ];


    final _categories = [
      "vedic",
      "life",
      "planetary",
      "numerology"
    ];

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Theme.of(context).colorScheme.surface, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Luxurious Header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.astrologers,
                      style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.sort),
                      onPressed: () {
                        Get.snackbar("sort",l10n.comingSoon);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                // dividerl
                const Divider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
                // categories
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _categories.map((category) {
                    return InkWell(
                      onTap: () {
                        Get.snackbar("category", '$category - ${l10n.comingSoon}');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          category.capitalizeFirst!,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 16),
                // Astrologer List
                ...astrologers.map((astrologer) => _buildAstrologerCard(context, astrologer)).toList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget _buildAstrologerCard(BuildContext context, Map<String, String> astrologer) {
    final l10n = AppLocalizations.of(context);
    final isOnline = astrologer['status'] == 'Online';

    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: () {
            Get.to(AstrologerDetailScreen());
          },
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Image
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(astrologer['image']!),
                  backgroundColor: Colors.white,
                  // onError: (exception, stackTrace) => const Icon(Icons.person, size: 40),
                ),
                const SizedBox(width: 16),
                // Details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name and Status
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            astrologer['name']!,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color: isOnline ? Colors.green[50] : Colors.grey[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              astrologer['status']!,
                              style: TextStyle(
                                color: isOnline ? Colors.green[700] : Colors.grey[600],
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      // Specialty
                      Text(
                        astrologer['specialty']!,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.teal[600],
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Experience
                      Text(
                        'Experience: ${astrologer['experience']}',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Rating
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.orange, size: 18),
                          const SizedBox(width: 4),
                          Text(
                            '${astrologer['rating']} ★',
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}