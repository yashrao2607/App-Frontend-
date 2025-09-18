import 'package:flutter/material.dart';
import 'package:myapp/widgets/app_drawer.dart';

class CropRecommenderScreen extends StatefulWidget {
  const CropRecommenderScreen({super.key});

  @override
  State<CropRecommenderScreen> createState() => _CropRecommenderScreenState();
}

class _CropRecommenderScreenState extends State<CropRecommenderScreen> {
  String? _soilType;
  String? _waterSource;
  String? _currentSeason;
  int _farmTypeIndex = 0; // 0 for Irrigated, 1 for Rainfed

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
              'AI Crop Recommender',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Get intelligent crop suggestions based on your location, farm type, and market trends.',
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
            _buildFarmDetailsCard(),
            const SizedBox(height: 24),
            _buildRecommendationsCard(),
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

  Widget _buildFarmDetailsCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Farm Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Provide details about your farm to get the best recommendations.',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 24),
          _buildTextField(label: 'Location (District)', initialValue: 'Pune, Maharashtra'),
          const SizedBox(height: 16),
          _buildFarmTypeSelector(),
          const SizedBox(height: 16),
          _buildTextField(label: 'Land Size (e.g., 2 acres)', hint: 'e.g., 2 acres'),
          const SizedBox(height: 16),
          _buildDropdown(
            label: 'Soil Type (Optional)',
            hint: 'Select soil type',
            value: _soilType,
            items: ['Alluvial', 'Black', 'Red', 'Laterite'],
            onChanged: (value) {
              setState(() {
                _soilType = value;
              });
            },
          ),
          const SizedBox(height: 16),
          _buildDropdown(
            label: 'Water Source (Optional)',
            hint: 'Select water source',
            value: _waterSource,
            items: ['Borewell', 'Canal', 'River', 'Pond'],
            onChanged: (value) {
              setState(() {
                _waterSource = value;
              });
            },
          ),
          const SizedBox(height: 16),
          _buildDropdown(
            label: 'Current Season',
            value: _currentSeason,
            hint: 'Kharif',
            items: ['Kharif', 'Rabi', 'Zaid'],
             onChanged: (value) {
              setState(() {
                _currentSeason = value;
              });
            },
          ),
          const SizedBox(height: 16),
          _buildTextField(label: 'Previous Crop (Optional)', hint: 'e.g., Wheat'),
          const SizedBox(height: 16),
          _buildTextField(label: 'Budget (Optional)', hint: 'e.g., 10,000 INR'),
          const SizedBox(height: 16),
          _buildTextField(label: 'Crop Preference (Optional)', hint: 'e.g., Vegetables, Millets'),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Get Recommendations'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({required String label, String? initialValue, String? hint}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          initialValue: initialValue,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Colors.white54),
            filled: true,
            fillColor: Colors.grey[800],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            suffixIcon: const Icon(Icons.mic, color: Colors.white70),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String label,
    required String hint,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: value,
          hint: Text(hint, style: const TextStyle(color: Colors.white54)),
          dropdownColor: Colors.grey[800],
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[800],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _buildFarmTypeSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Farm Type',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            _buildFarmTypeChip(
              label: 'Irrigated',
              icon: Icons.opacity,
              isSelected: _farmTypeIndex == 0,
              onTap: () {
                setState(() {
                  _farmTypeIndex = 0;
                });
              },
            ),
            const SizedBox(width: 16),
            _buildFarmTypeChip(
              label: 'Rainfed / Dry',
              icon: Icons.grain,
              isSelected: _farmTypeIndex == 1,
              onTap: () {
                setState(() {
                  _farmTypeIndex = 1;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFarmTypeChip({
    required String label,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.green.withOpacity(0.2) : Colors.grey[800],
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? Colors.green : Colors.transparent,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.green : Colors.white70,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.green : Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationsCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: const [
          Text(
            'AI-Powered Recommendations',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 24),
          Icon(
            Icons.android,
            color: Colors.white70,
            size: 64,
          ),
          SizedBox(height: 16),
          Text(
            'Your personalized crop recommendations will appear here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
