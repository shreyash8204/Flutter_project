import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpinachGrowScreen extends StatefulWidget {
  const SpinachGrowScreen({super.key});

  @override
  State<SpinachGrowScreen> createState() => _SpinachGrowScreenState();
}

class _SpinachGrowScreenState extends State<SpinachGrowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 250, 247, 1), // light mint bg
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(129, 199, 132, 1), // light green top
                      Color.fromRGBO(56, 142, 60, 1),   // darker green bottom
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    // bottomLeft: Radius.circular(24),
                    // bottomRight: Radius.circular(24),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Spinach",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Growing Guide",
                          style: GoogleFonts.poppins(
                            color: Colors.white.withOpacity(0.9),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Plant Image
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.network(
                  "https://www.trustbasket.com/cdn/shop/articles/Spinach.webp?v=1686909241",
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 16),

              // Plant Info Card
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Spinach",
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(51, 51, 51, 1),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 133, 201, 136),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "Easy",
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 25, 77, 28),
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Nutrient-dense leafy green that tolerates partial shade.",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: const Color.fromRGBO(97, 97, 97, 1),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Growing Conditions Card
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(240, 249, 244, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Growing Conditions",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const  Color.fromRGBO(51, 51, 51, 1),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildConditionItem(
                            Icons.schedule, "Growth Time", "40-50 days"),
                        _buildConditionItem(
                            Icons.crop_square, "Space Needed", "0.4 sq ft"),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildConditionItem(Icons.thermostat, "Temperature",
                            "50-70°F"),
                        _buildConditionItem(Icons.water_drop, "Watering", "Every 2 days"),
                      ],
                    ),
                    const SizedBox(height: 12),
                    _buildConditionItem(
                        Icons.wb_sunny, "Sunlight", "3-4 hours"),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Growing Tips Card
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Growing Tips",
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const  Color.fromRGBO(51, 51, 51, 1),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildTipItem("Plant in cool weather"),
                    _buildTipItem("Succession plant for continuous harvest"),
                    _buildTipItem(
                        "Mulch to retain moisture"),
                    _buildTipItem("Harvest baby leaves for tender greens"),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Add Button
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(76, 175, 80, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    // You can add functionality later here
                  },
                  child: Text(
                    "Add to My Plants",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // ---------- Helper Widgets ----------
  Widget _buildConditionItem(IconData icon, String title, String value) {
    return Row(
      children: [
        Icon(icon, color: const Color.fromRGBO(56, 142, 60, 1), size: 22),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 13,
                color: const Color.fromRGBO(97, 97, 97, 1),
              ),
            ),
            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(33, 33, 33, 1),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTipItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.circle,
              size: 8, color: Color.fromRGBO(76, 175, 80, 1)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color.fromRGBO(66, 66, 66, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
