import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color darkBg = Color(0xFF181A20);
    const Color cardBg = Color(0xFF252830);
    const Color primaryGreen = Color(0xFF00E081);

    return Scaffold(
      backgroundColor: darkBg,
      appBar: AppBar(
        backgroundColor: darkBg,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: IconButton(
          icon: const Icon(Icons.translate, color: Colors.white),
          onPressed: () {},
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome back, Farmer!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Here's a quick overview of your farm and market.",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            _buildDashboardCard(
              icon: Icons.shield_outlined,
              title: 'Crop Doctor',
              subtitle: 'Diagnose crop diseases instantly.',
              iconColor: primaryGreen,
              cardColor: cardBg,
            ),
            const SizedBox(height: 16),
            _buildDashboardCard(
              icon: Icons.eco_outlined,
              title: 'Crop Recommender',
              subtitle: 'Get AI-powered crop suggestions.',
              iconColor: primaryGreen,
              cardColor: cardBg,
            ),
            const SizedBox(height: 16),
            _buildDashboardCard(
              icon: Icons.bar_chart_outlined,
              title: 'Market Analyst',
              subtitle: 'Get real-time price analysis.',
              iconColor: primaryGreen,
              cardColor: cardBg,
            ),
            const SizedBox(height: 16),
            _buildDashboardCard(
              icon: Icons.account_balance_outlined,
              title: 'Govt Schemes',
              subtitle: 'Find government schemes for you.',
              iconColor: primaryGreen,
              cardColor: cardBg,
            ),
            const SizedBox(height: 16),
            _buildDashboardCard(
              icon: Icons.track_changes_outlined,
              title: 'Tracker',
              subtitle: 'Track your farm expenses and profits.',
              iconColor: primaryGreen,
              cardColor: cardBg,
            ),
            const SizedBox(height: 16),
            _buildDashboardCard(
              icon: Icons.book_outlined,
              title: 'E-Learning',
              subtitle: 'Browse guides and tutorials.',
              iconColor: primaryGreen,
              cardColor: cardBg,
            ),
            const SizedBox(height: 24),
            _buildWeatherWidget(cardColor: cardBg),
            const SizedBox(height: 24),
            _buildSeasonalRecommendations(cardColor: cardBg, accentColor: primaryGreen),
            const SizedBox(height: 24),
            _buildNotificationsWidget(cardColor: cardBg),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryGreen,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildDashboardCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color iconColor,
    required Color cardColor,
  }) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 32, color: iconColor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWeatherWidget({required Color cardColor}) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Current Weather',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Icon(Icons.cloud_outlined, color: Colors.white),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(Icons.wb_sunny_outlined, color: Colors.yellow, size: 48),
                SizedBox(width: 16),
                Text(
                  '31°C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              'Humidity: 52% | Rainfall: 0.0 mm',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildSeasonalRecommendations({required Color cardColor, required Color accentColor}) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Seasonal Crop Recommendations',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Crops suggested for the current season based on your location and weather.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 16),
            _buildCropRecommendationItem(
              imagePath: 'assets/pigeon_pea.png',
              name: 'Pigeon Pea (Tur)',
              description: 'Pigeon pea is a drought-resistant legume...',
              accentColor: accentColor,
            ),
            const SizedBox(height: 16),
            _buildCropRecommendationItem(
              imagePath: 'assets/soybean.png',
              name: 'Soybean',
              description: 'Soybean is a high-yield oilseed crop...',
              accentColor: accentColor,
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildCropRecommendationItem({
    required String imagePath,
    required String name,
    required String description,
    required Color accentColor,
  }) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.image, color: Colors.grey),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              Text(description, style: const TextStyle(color: Colors.grey)),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Text('Learn More', style: TextStyle(color: accentColor)),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationsWidget({required Color cardColor}) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Notifications',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Important updates and alerts for your farm.',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 24),
            Center(
              child: Column(
                children: const [
                  Icon(Icons.notifications_off_outlined,
                      color: Colors.grey, size: 48),
                  SizedBox(height: 16),
                  Text(
                    'No new notifications',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Check back later for updates on weather, market prices, and more.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
