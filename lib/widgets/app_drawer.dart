import 'package:flutter/material.dart';
import 'package:myapp/dashboard_screen.dart';
import 'package:myapp/crop_doctor_screen.dart';
import 'package:myapp/crop_recommender_screen.dart';
import 'package:myapp/market_analyst_screen.dart';
import 'package:myapp/govt_schemes_screen.dart';
import 'package:myapp/tracker_screen.dart';
import 'package:myapp/e_learning_screen.dart';
import 'package:myapp/weather_screen.dart';
import 'package:myapp/community_screen.dart';
import 'package:myapp/shop_screen.dart';
import 'package:myapp/settings_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    return Drawer(
      backgroundColor: const Color(0xFF1C1C1E),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF1C1C1E),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'KishanBhai',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.green),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
          _createDrawerItem(
              icon: Icons.person_outline, text: 'Profile', onTap: () {}),
          _createDrawerItem(
            icon: Icons.dashboard_outlined,
            text: 'Dashboard',
            isSelected: currentRoute == '/',
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboardScreen(),
                settings: const RouteSettings(name: '/'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.favorite_border,
            text: 'Crop Doctor',
            isSelected: currentRoute == '/crop_doctor',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CropDoctorScreen(),
                settings: const RouteSettings(name: '/crop_doctor'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.eco_outlined,
            text: 'Crop Recommender',
            isSelected: currentRoute == '/crop_recommender',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CropRecommenderScreen(),
                settings: const RouteSettings(name: '/crop_recommender'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.show_chart,
            text: 'Market Analyst',
            isSelected: currentRoute == '/market_analyst',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MarketAnalystScreen(),
                settings: const RouteSettings(name: '/market_analyst'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.account_balance_wallet_outlined,
            text: 'Govt Schemes',
            isSelected: currentRoute == '/govt_schemes',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GovtSchemesScreen(),
                settings: const RouteSettings(name: '/govt_schemes'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.track_changes_outlined,
            text: 'Tracker',
            isSelected: currentRoute == '/tracker',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackerScreen(),
                settings: const RouteSettings(name: '/tracker'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.wb_sunny_outlined,
            text: 'Weather',
            isSelected: currentRoute == '/weather',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WeatherScreen(),
                settings: const RouteSettings(name: '/weather'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.people_outline,
            text: 'Community',
            isSelected: currentRoute == '/community',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CommunityScreen(),
                settings: const RouteSettings(name: '/community'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.shopping_cart_outlined,
            text: 'Shop',
            isSelected: currentRoute == '/shop',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ShopScreen(),
                settings: const RouteSettings(name: '/shop'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.book_outlined,
            text: 'E-Learning',
            isSelected: currentRoute == '/e_learning',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ELearningScreen(),
                settings: const RouteSettings(name: '/e_learning'),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.settings_outlined,
            text: 'Settings',
            isSelected: currentRoute == '/settings',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SettingsScreen(),
                settings: const RouteSettings(name: '/settings'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap,
      bool isSelected = false}) {
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? Colors.green : Colors.white70,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.green : Colors.white,
        ),
      ),
      tileColor: isSelected ? Colors.grey[800] : null,
      onTap: onTap,
    );
  }
}
