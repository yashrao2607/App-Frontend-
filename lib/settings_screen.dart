import 'package:flutter/material.dart';
import 'package:myapp/privacy_policy_screen.dart';
import 'package:myapp/terms_of_use_screen.dart';
import 'package:myapp/widgets/app_drawer.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.translate, color: Colors.white),
            onPressed: () {},
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.white),
                onPressed: () {},
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  child: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
          ),
          const SizedBox(width: 16),
        ],
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Application Settings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Customize the look and feel of the application.',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Back to Dashboard'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            _buildInfoCard(
              title: 'About KishanBhai',
              icon: Icons.info_outline,
              content: const Text(
                'KishanBhai is an AI-powered farming assistant designed to support small-scale Indian farmers with real-time crop diagnosis, mandi prices, government schemes, and personalized farming advice in local languages.',
                style: TextStyle(color: Colors.white70),
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              title: 'App Version',
              icon: Icons.tag,
              content: const Text(
                '1.0.0',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              title: 'Powered By',
              icon: Icons.memory,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('• Google Cloud Vertex AI', style: TextStyle(color: Colors.white70)),
                  Text('• Firebase', style: TextStyle(color: Colors.white70)),
                  Text('• Gemini Multimodal Models', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildThemeSelector(),
            const SizedBox(height: 16),
             _buildInfoCard(
              title: 'Developed By',
              icon: Icons.people_outline,
              content: const Text(
                'Team WinnerBoys',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
             const SizedBox(height: 16),
            _buildInfoCard(
              title: 'Contact Us',
              icon: Icons.contact_mail_outlined,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Email: support@kishanbhai.in', style: TextStyle(color: Colors.white70)),
                  Text('WhatsApp: +91-7374084224', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildPolicyButtons(context),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.support_agent, color: Colors.white),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required IconData icon,
    required Widget content,
  }) {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.green, size: 24),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            content,
          ],
        ),
      ),
    );
  }

  Widget _buildThemeSelector() {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Theme',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Select a theme for the application.',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildThemeButton('Light', Icons.wb_sunny),
                _buildThemeButton('Dark', Icons.nightlight_round),
                _buildThemeButton('System', Icons.desktop_windows, isSelected: true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeButton(String label, IconData icon, {bool isSelected = false}) {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: Icon(icon, color: isSelected ? Colors.green : Colors.white),
      label: Text(
        label,
        style: TextStyle(color: isSelected ? Colors.green : Colors.white),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: isSelected ? Colors.green : Colors.grey[800]!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    );
  }

  Widget _buildPolicyButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        OutlinedButton.icon(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PrivacyPolicyScreen()),
            );
          },
          icon: const Icon(Icons.privacy_tip_outlined, color: Colors.white70),
          label: const Text('Privacy Policy', style: TextStyle(color: Colors.white70)),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.grey[800]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        OutlinedButton.icon(
          onPressed: () {
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const TermsOfUseScreen()),
            );
          },
          icon: const Icon(Icons.gavel_outlined, color: Colors.white70),
          label: const Text('Terms of Use', style: TextStyle(color: Colors.white70)),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.grey[800]!),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ],
    );
  }
}
