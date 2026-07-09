// urban_farming_homepage.dart
// Fully stateful UI (now includes Discover Features slider with multiple cards)

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UrbanFarmingHomePage extends StatefulWidget {
  const UrbanFarmingHomePage({super.key});

  @override
  State<UrbanFarmingHomePage> createState() => _UrbanFarmingHomePageState();
}

class _UrbanFarmingHomePageState extends State<UrbanFarmingHomePage> {
  // Color palette
  static const headerGradient = [
    Color.fromRGBO(112, 206, 128, 1),
    Color.fromRGBO(80, 191, 122, 1),
  ];
  static const cardShadow = Color.fromRGBO(143, 172, 163, 0.08);

  // Quick Access background colors
  static const quickAccessColors = [
    Color.fromRGBO(236, 252, 241, 1),
    Color.fromRGBO(239, 248, 255, 1),
    Color.fromRGBO(250, 241, 255, 1),
    Color.fromRGBO(255, 247, 240, 1),
    Color.fromRGBO(236, 252, 241, 1),
  ];

  final tasks = const [
    {'title': 'Water tomato plants', 'time': '9:00 AM'},
    {'title': 'Check herb garden', 'time': '11:00 AM'},
    {'title': 'Fertilize lettuce', 'time': '2:00 PM'},
  ];

  int _currentFeaturePage = 0;
  final PageController _featurePageController =
      PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6FBF6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerSection(),
              const SizedBox(height: 18),
              _roundedCard(child: _quickAccessSection()),
              const SizedBox(height: 18),
              _roundedCard(child: _discoverFeaturesSection()),
              const SizedBox(height: 18),
              _roundedCard(child: _tasksSection()),
              const SizedBox(height: 18),
              _roundedCard(child: _featuredGardenSection()),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // ------------------ Common Rounded Card ------------------
  Widget _roundedCard({required Widget child}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(color: cardShadow, blurRadius: 18, offset: Offset(0, 8))
        ],
      ),
      child: child,
    );
  }

  // ------------------ Header Section ------------------
  Widget _headerSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: headerGradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerTopRow(),
          const SizedBox(height: 10),
          _subtitle("Ready to grow something amazing today?"),
          const SizedBox(height: 16),
          _weatherCard(),
        ],
      ),
    );
  }

  Widget _headerTopRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _title('Hello, UserName 🌱'),
        ],
      );

  Widget _weatherCard() => Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.18),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _subtitle("Today's Weather"),
                const SizedBox(height: 6),
                Row(
                  children: [
                    _title('24°C', size: 20),
                    const SizedBox(width: 8),
                    _subtitle('• Sunny'),
                  ],
                ),
                const SizedBox(height: 6),
                _subtitle('Perfect for gardening!'),
              ],
            ),
            const Icon(Icons.wb_sunny, color: Colors.white, size: 36),
          ],
        ),
      );

  Widget _title(String text, {double size = 18}) => Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: size,
          fontWeight: FontWeight.w600,
        ),
      );

  Widget _subtitle(String text) => Text(
        text,
        style: GoogleFonts.poppins(color: Colors.white70, fontSize: 13),
      );

  // ------------------ Quick Access Section ------------------
  Widget _quickAccessSection() {
    final quickAccessItems = [
      ['Grow Guide', 'Learn how to grow\nvegetables', Icons.eco],
      ['AI Suggestions', 'Get personalized\nadvice', Icons.lightbulb],
      ['Community', 'Connect with\ngardeners', Icons.people],
      ['Marketplace', 'Buy seeds &\ntools', Icons.shopping_bag],
      ['My Plants', 'Track your\ngarden', Icons.park],
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('Quick Access'),
        const SizedBox(height: 12),
        GridView.builder(
          itemCount: quickAccessItems.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) => _featureTile(
            title: quickAccessItems[index][0] as String,
            subtitle: quickAccessItems[index][1] as String,
            icon: quickAccessItems[index][2] as IconData,
            bg: quickAccessColors[index],
          ),
        ),
      ],
    );
  }

  Widget _featureTile({
    required String title,
    required String subtitle,
    required IconData icon,
    required Color bg,
  }) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: bg, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 18, color: Colors.black87),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w600)),
                Text(subtitle,
                    style:
                        GoogleFonts.poppins(fontSize: 11, color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ------------------ Discover Features Section ------------------
  Widget _discoverFeaturesSection() {
    final featureCards = [
      _aiPlantDoctorCard(),
      _premiumSeedsCard(),
      _joinCommunityCard(),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('Discover Features'),
        const SizedBox(height: 12),
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: _featurePageController,
            itemCount: featureCards.length,
            onPageChanged: (index) {
              setState(() => _currentFeaturePage = index);
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: featureCards[index],
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(featureCards.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 6,
              width: _currentFeaturePage == index ? 20 : 6,
              decoration: BoxDecoration(
                color: _currentFeaturePage == index
                    ? Colors.green
                    : Colors.grey.shade400,
                borderRadius: BorderRadius.circular(6),
              ),
            );
          }),
        ),
      ],
    );
  }

  Widget _aiPlantDoctorCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(0, 191, 115, 1),
            Color.fromRGBO(6, 179, 116, 1),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _aiPlantDoctorContent(),
          const Icon(Icons.healing, size: 40, color: Colors.white70),
        ],
      ),
    );
  }

  Widget _aiPlantDoctorContent() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('AI Plant Doctor',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600)),
          const SizedBox(height: 8),
          SizedBox(
            width: 220,
            child: Text(
              'Get instant plant health diagnosis and treatment recommendations',
              style: GoogleFonts.poppins(color: Colors.white70, fontSize: 12),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.14),
            ),
            child: Text('Try Now',
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w600)),
          ),
        ],
      );

  Widget _premiumSeedsCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 183, 77, 1),
            Color.fromRGBO(255, 152, 0, 1),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Premium Seeds',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              SizedBox(
                width: 220,
                child: Text(
                  'Organic, non-GMO seeds with 90% germination guarantee',
                  style:
                      GoogleFonts.poppins(color: Colors.white70, fontSize: 12),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.14),
                ),
                child: Text('Shop Now',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          const Icon(Icons.local_florist, size: 40, color: Colors.white70),
        ],
      ),
    );
  }

  Widget _joinCommunityCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(156, 39, 176, 1),
            Color.fromRGBO(123, 31, 162, 1),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Join Community',
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              SizedBox(
                width: 220,
                child: Text(
                  'Connect with 10,000+ urban farmers worldwide',
                  style:
                      GoogleFonts.poppins(color: Colors.white70, fontSize: 12),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white.withOpacity(0.14),
                ),
                child: Text('Connect',
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          const Icon(Icons.groups, size: 40, color: Colors.white70),
        ],
      ),
    );
  }

  // ------------------ Tasks Section ------------------
  Widget _tasksSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle("Today's Tasks"),
        const SizedBox(height: 12),
        Column(
          children: tasks
              .map((t) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: _taskRow(t['title']!, t['time']!),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _taskRow(String title, String time) {
    const taskGreen = Color.fromRGBO(106, 201, 118, 1);
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              color: taskGreen, borderRadius: BorderRadius.circular(10)),
          child: const Icon(Icons.opacity, color: Colors.white, size: 18),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w600)),
              Text(time,
                  style:
                      GoogleFonts.poppins(fontSize: 12, color: Colors.black54)),
            ],
          ),
        ),
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.green.shade100),
          ),
        ),
      ],
    );
  }

  // ------------------ Featured Garden Section ------------------
  Widget _featuredGardenSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _sectionTitle('Featured Garden'),
        const SizedBox(height: 12),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.network(
                'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce?auto=format&fit=crop&w=800&q=60',
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 12,
                bottom: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Urban Herb Garden',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)),
                    Text('Perfect for beginners • 30 days to harvest',
                        style: GoogleFonts.poppins(
                            color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // ------------------ Section Title ------------------
  Widget _sectionTitle(String title) => Text(
        title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      );
}
