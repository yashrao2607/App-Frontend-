import 'package:flutter/material.dart';
import 'package:myapp/widgets/app_drawer.dart';

class TermsOfUseScreen extends StatelessWidget {
  const TermsOfUseScreen({super.key});

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
              'Terms of Use',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Rules for using our service.',
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
                label: const Text('Back to Settings'),
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
            _buildTermsText(),
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

  Widget _buildTermsText() {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Last Updated: August 25, 2025',
              style: TextStyle(color: Colors.white70, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 24),
            _buildTermSection(
              title: 'Acceptance of Terms',
              content:
                  'By accessing and using KishanBhai, you accept and agree to be bound by the terms and provision of this agreement.',
            ),
            _buildTermSection(
              title: 'Use of Service',
              content:
                  'You agree to use our services for lawful purposes only and in a way that does not infringe the rights of, restrict or inhibit anyone else’s use and enjoyment of the service.\n\n• You are responsible for maintaining the confidentiality of your account and password.\n\n• The advice provided by the AI is for informational purposes only and should not be considered a substitute for professional agricultural advice.\n\n• You must not misuse our services by knowingly introducing viruses or other material that is malicious or technologically harmful.',
            ),
             _buildTermSection(
              title: 'Disclaimer of Warranties',
              content:
                  'The service is provided on an ‘as is’ and ‘as available’ basis without any warranties of any kind, either express or implied.',
            ),
              _buildTermSection(
              title: 'Limitation of Liability',
              content:
                  'In no event shall KishanBhai or its developers be liable for any indirect, incidental, special, consequential or punitive damages, including without limitation, loss of profits, data, use, goodwill, or other intangible losses.',
            ),
            _buildTermSection(
              title: 'Termination',
              content:
                  'We may terminate or suspend your account immediately, without prior notice or liability, for any reason whatsoever, including without limitation if you breach the Terms.',
            ),
             _buildTermSection(
              title: 'Governing Law',
              content:
                  'These Terms shall be governed and construed in accordance with the laws of India, without regard to its conflict of law provisions.',
            ),
             _buildTermSection(
              title: 'Changes',
              content:
                  'We reserve the right, at our sole discretion, to modify or replace these Terms at any time.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTermSection({required String title, required String content}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(color: Colors.white70, height: 1.5),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
