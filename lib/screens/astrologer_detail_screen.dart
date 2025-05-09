import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
// import '../widgets/bottom_nav_bar.dart';

class AstrologerDetailScreen extends StatelessWidget {
  const AstrologerDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Astro Astrologer K'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {},
          ),
        ],
      ),
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
                // Profile Header
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: const NetworkImage('https://via.placeholder.com/100'),
                      backgroundColor: Colors.white,
                      // onError: (exception, stackTrace) => const Icon(Icons.person, size: 40),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Astro Astrologer K',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Numerology, Planetary Transit',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.teal[600],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                '₹20/min',
                                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(width: 16),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.green[50],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  'Online',
                                  style: TextStyle(
                                    color: Colors.green[700],
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.check_circle, color: Colors.green),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // About Me
                Text(
                  l10n.aboutMe,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                // Rating Overview
                Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.ratingOverview,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              '5/5',
                              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                                fontSize: 24,
                                color: Colors.yellow[700],
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.8,
                                backgroundColor: Colors.grey[300],
                                color: Colors.yellow[700],
                                minHeight: 10,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text('400 x 192'),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('5 ★', style: Theme.of(context).textTheme.labelSmall),
                            Text('4 ★', style: Theme.of(context).textTheme.labelSmall),
                            Text('3 ★', style: Theme.of(context).textTheme.labelSmall),
                            Text('2 ★', style: Theme.of(context).textTheme.labelSmall),
                            Text('1 ★', style: Theme.of(context).textTheme.labelSmall),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Reviews
                Text(
                  l10n.reviews,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anonymous',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Amazing astrologer, mostly all of my doubts are clear.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Farhez',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Astrology perfectly answered my questions and gave me solutions to my problems.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: () {},
                          child: Text(l10n.seeAllReviews),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Reports
                Text(
                  l10n.reports,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildReportItem('1 Year Education Report', '₹299'),
                        _buildReportItem('Saturn Transit Report', '₹250'),
                        _buildReportItem('1 Year Professional Career Report', '₹350'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Similar Consultants
                Text(
                  l10n.similarConsultants,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _buildConsultantRow('Ananya', '₹50/min', 'https://via.placeholder.com/50'),
                        _buildConsultantRow('Dharmik', '₹60/min', 'https://via.placeholder.com/50'),
                        _buildConsultantRow('Sujoy sen', '₹55/min', 'https://via.placeholder.com/50'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget _buildReportItem(String title, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontSize: 16)),
          Text(price, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildConsultantRow(String name, String rate, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(imageUrl),
            // onError: (exception, stackTrace) => const Icon(Icons.person, size: 20),
          ),
          const SizedBox(width: 16),
          Text(name, style: const TextStyle(fontSize: 16)),
          const Spacer(),
          Text(rate, style: const TextStyle(fontSize: 16, color: Colors.purple)),
        ],
      ),
    );
  }
}