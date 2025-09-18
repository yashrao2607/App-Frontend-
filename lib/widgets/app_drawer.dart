import 'package:flutter/material.dart';
import 'package:myapp/dashboard_screen.dart';
import 'package:myapp/crop_doctor_screen.dart';
import 'package:myapp/crop_recommender_screen.dart';
import 'package:myapp/market_analyst_screen.dart';
import 'package:myapp/govt_schemes_screen.dart';
import 'package:myapp/tracker_screen.dart';
import 'package:myapp/e_learning_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
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
            isSelected: true,
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const DashboardScreen(),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.favorite_border,
            text: 'Crop Doctor',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CropDoctorScreen(),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.eco_outlined,
            text: 'Crop Recommender',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CropRecommenderScreen(),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.show_chart,
            text: 'Market Analyst',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MarketAnalystScreen(),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.account_balance_wallet_outlined,
            text: 'Govt Schemes',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GovtSchemesScreen(),
              ),
            ),
          ),
          _createDrawerItem(
            icon: Icons.track_changes_outlined,
            text: 'Tracker',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TrackerScreen(),
              ),
            ),
          ),
          _createDrawerItem(
              icon: Icons.wb_sunny_outlined, text: 'Weather', onTap: () {}),
          _createDrawerItem(
              icon: Icons.people_outline, text: 'Community', onTap: () {}),
          _createDrawerItem(
              icon: Icons.shopping_cart_outlined, text: 'Shop', onTap: () {}),
          _createDrawerItem(
            icon: Icons.book_outlined,
            text: 'E-Learning',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ELearningScreen(),
              ),
            ),
          ),
          _createDrawerItem(
              icon: Icons.settings_outlined, text: 'Settings', onTap: () {}),
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
