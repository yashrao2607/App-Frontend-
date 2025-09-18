import 'package:flutter/material.dart';

class ELearningScreen extends StatefulWidget {
  const ELearningScreen({super.key});

  @override
  State<ELearningScreen> createState() => _ELearningScreenState();
}

class _ELearningScreenState extends State<ELearningScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.grey[900],
              pinned: true,
              floating: true,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'E-Learning Hub',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Expand your knowledge with our collection of farming guides and tutorials.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton.icon(
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
                      const SizedBox(height: 24),
                      _buildSearchBar(),
                    ],
                  ),
                ),
              ),
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.green,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                tabs: const [
                  Tab(text: 'Articles & Guides'),
                  Tab(text: 'Video Tutorials'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            _buildArticlesList(),
            _buildVideoTutorialsList(),
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

  Widget _buildSearchBar() {
    return TextField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: 'Search for articles, videos, or...',
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: Colors.grey[800],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(Icons.search, color: Colors.white70),
        suffixIcon: const Icon(Icons.mic, color: Colors.white70),
      ),
    );
  }

  Widget _buildArticlesList() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildArticleCard(
          title: 'Mastering Drip Irrigation',
          summary:
              'A comprehensive guide to setting up and maintaining drip irrigation systems for maximizing water efficiency and boosting crop yields. Covers component selection, layout planning, and troubleshooting common issues.',
        ),
        const SizedBox(height: 16),
        _buildArticleCard(
          title: 'Integrated Pest Management (IPM)',
          summary:
              'Explore sustainable, eco-friendly strategies to manage pests. This guide covers biological controls, cultural practices, and the targeted use of pesticides to protect your crops and the environment.',
        ),
        const SizedBox(height: 16),
        _buildArticleCard(
          title: 'Soil Health and Nutrition',
          summary:
              'Unlock the secrets to rich, fertile soil. This article delves into the fundamentals of soil science, including composition, pH balance, and how to enrich your soil for healthier, more productive plants.',
        ),
        const SizedBox(height: 16),
        _buildArticleCard(
          title: 'Advanced Composting Techniques',
          summary:
              'Learn to transform farm waste into black gold. This guide details various composting methods, including hot and cold composting, vermicomposting, and how to create balanced compost piles.',
        ),
        const SizedBox(height: 16),
        _buildArticleCard(
          title: 'Understanding Crop Rotation',
          summary:
              'Discover the benefits of strategic crop rotation, including improved soil fertility, pest and disease cycle disruption, and increased biodiversity. Includes sample rotation plans for common crops.',
        ),
         const SizedBox(height: 16),
        _buildArticleCard(
          title: 'Basics of Organic Farming',
          summary:
              'An essential introduction to the core principles and practices of organic agriculture. Covers certification, natural fertilization, weed control, and marketing organic produce for sustainable farming.',
        ),
      ],
    );
  }

  Widget _buildArticleCard({required String title, required String summary}) {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: const Center(
              child: Text(
                '600 x 400',
                style: TextStyle(color: Colors.white54, fontSize: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
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
                  summary,
                  style: const TextStyle(color: Colors.white70),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Read More'),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVideoTutorialsList() {
    return const Center(
      child: Text(
        'Video tutorials will be available soon.',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
