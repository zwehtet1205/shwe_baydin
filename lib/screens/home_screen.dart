import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_baydin/widgets/bottom_nav_bar.dart';
import '../l10n/app_localizations.dart';
import '../widgets/language_switcher.dart';
import '../controllers/nav_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const Color _brownColor = Color.fromARGB(255, 110, 62, 51);
  static const double _spacing = 16.0;
  static const double _cardElevation = 4.0;
  static const double _iconSize = 30.0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF5E8E2), Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: ClipPath(
                clipper: QuarterTopRightToBottomLeftCircleClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [_brownColor, Colors.yellow[700]!],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(_spacing),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.welcomeToAstro,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: _brownColor,
                            shadows: [
                              Shadow(
                                blurRadius: 2.0,
                                color: Colors.black12,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                        ),
                        
                        const LanguageSwitcher(),
                      ],
                    ),
                    const SizedBox(height: _spacing),
                    const SizedBox(height: _spacing),
                    const SizedBox(height: _spacing),
                    Text( 
                      l10n.welcomeSubtitle,
                      style: TextStyle(
                        fontSize: 16,
                        color: _brownColor.withOpacity(0.7),
                      ),
                    ),
                    const SizedBox(height: _spacing),
                    _buildZodiacSignsSection(context),
                    const SizedBox(height: _spacing),
                    _buildAstroServicesSection(context, l10n),
                    const SizedBox(height: _spacing),
                    _buildFeaturedAstrologersSection(context),
                    const SizedBox(height: _spacing),
                    _buildVenusTransitCard(context, l10n),
                    const SizedBox(height: _spacing),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Zodiac Signs Section
  Widget _buildZodiacSignsSection(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Zodiac Signs", // Assuming you've added this to your localization
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: _brownColor,
          ),
        ),
        const SizedBox(height: _spacing / 2),
        SizedBox(
          height: 150, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 12, // Replace with your actual zodiac sign count
            itemBuilder: (context, index) {
              // Replace with your ZodiacCard widget or inline implementation
              return _buildZodiacCard(context, index);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildZodiacCard(BuildContext context, int index) {
    // Replace with actual data fetching or model
    final String signName = "Sign ${index + 1}";
    final String signImage = "assets/leo.png"; // Ensure you have these assets

    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 10),
      child: Card(
        elevation: _cardElevation,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(signImage, height: 50),
              const SizedBox(height: 8),
              Text(
                signName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: _brownColor,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Astro Services Section
  Widget _buildAstroServicesSection(
    BuildContext context,
    AppLocalizations l10n,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.astroServices, // Localized title
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: _brownColor,
          ),
        ),
        const SizedBox(height: _spacing / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildServiceIcon(context, Icons.chat, l10n.chat, () {
              // Implement chat functionality
            }),
            _buildServiceIcon(context, Icons.call, l10n.call, () {
              // Implement call functionality
            }),
            _buildServiceIcon(context, Icons.video_call, l10n.video, () {
              // Implement video call functionality
            }),
            _buildServiceIcon(
              context,
              Icons.feedback_rounded,
              l10n.feedback,
              () {
                // Implement reports functionality
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildServiceIcon(
    BuildContext context,
    IconData icon,
    String label,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: _iconSize, color: _brownColor),
          const SizedBox(height: 8),
          Text(
            label,
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(color: _brownColor),
          ),
        ],
      ),
    );
  }

  // Featured Astrologers Section (placeholders)
  Widget _buildFeaturedAstrologersSection(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.astrologers, // Localized title
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: _brownColor,
          ),
        ),
        const SizedBox(height: _spacing / 2),
        SizedBox(
          height: 200, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5, // Replace with your actual astrologer count
            itemBuilder: (context, index) {
              return _buildAstrologerCard(context, index);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAstrologerCard(BuildContext context, int index) {
    // Replace with actual data fetching or model
    final String astrologerName = "Astrologer ${index + 1}";
    final String astrologerImage =
        "assets/logo.png"; // Ensure you have these assets
    final String astrologerDescription = "Expertise: ...";

    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 10),
      child: Card(
        elevation: _cardElevation,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(astrologerImage),
                radius: 40,
              ),
              const SizedBox(height: 8),
              Text(
                astrologerName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: _brownColor,
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                astrologerDescription,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement consult action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700],
                    foregroundColor: _brownColor,
                  ),
                  child: const Text("Consult"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Venus Transit Card
  Widget _buildVenusTransitCard(BuildContext context, AppLocalizations l10n) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: const EdgeInsets.all(_spacing),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.yellow[700]!, _brownColor.withOpacity(0.8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.venusTransit,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: _spacing / 2),
            Text(
              l10n.venusTransitDescription,
              style: const TextStyle(fontSize: 14, color: Colors.white70),
            ),
            const SizedBox(height: _spacing / 2),
            ElevatedButton(
              onPressed: () {
                print("View more clicked");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: _brownColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text("View more"),
            ),
          ],
        ),
      ),
    );
  }
}

class QuarterTopRightToBottomLeftCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.moveTo(0, 0); // Start at the top-left
    path.lineTo(size.width, 0); // Go to the top-right
    // Add the quarter-circle arc from top-right to bottom-left
    path.quadraticBezierTo(
      size.width,
      size.height, // Control point at bottom-right
      0,
      size.height, // End point at bottom-left
    );
    path.lineTo(0, 0); // Close the path back to top-left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
