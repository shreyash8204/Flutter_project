import 'package:flutter/material.dart';

class GrowGuideScreen extends StatefulWidget {
  const GrowGuideScreen({Key? key}) : super(key: key);

  @override
  State<GrowGuideScreen> createState() => _GrowGuideScreenState();
}

class _GrowGuideScreenState extends State<GrowGuideScreen> {
  String selectedCategory = 'All';

  final List<Map<String, String>> crops = [
    {
      'name': 'Tomato',
      'category': 'Vegetables',
      'difficulty': 'Medium',
      'days': '70-80 days',
      'area': '1-2 sq ft',
      'image': "https://media.istockphoto.com/id/1132371208/photo/three-ripe-tomatoes-on-green-branch.jpg?s=612x612&w=0&k=20&c=qVjDb5Tk3-UccV-E9gqvoz97PTsP1QmBftw27qA9kEo=" 
    },
    {
      'name': 'Lettuce',
      'category': 'Vegetables',
      'difficulty': 'Easy',
      'days': '30-45 days',
      'area': '0.5 sq ft',
      'image': "https://images.medicinenet.com/images/article/main_image/is-it-safe-to-eat-romaine-lettuce.jpg?output-quality=75"
    },
    {
      'name': 'Basil',
      'category': 'Herbs',
      'difficulty': 'Easy',
      'days': '20-30 days',
      'area': '0.3 sq ft',
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqwIPFfz61RjExgUN45ywnFRbiqovVSKNdAA&s"
    },
    {
      'name': 'Spinach',
      'category': 'Vegetables',
      'difficulty': 'Easy',
      'days': '40-50 days',
      'area': '0.4 sq ft',
      'image': "https://www.trustbasket.com/cdn/shop/articles/Spinach.webp?v=1686909241"
    },
    {
      'name': 'Chili Pepper',
      'category': 'Vegetables',
      'difficulty': 'Medium',
      'days': '80-90 days',
      'area': '1 sq ft',
      'image': "https://m.media-amazon.com/images/I/51gABKHNkaL._UF1000,1000_QL80_.jpg"
    },
    {
      'name': 'Cilantro',
      'category': 'Herbs',
      'difficulty': 'Easy',
      'days': '25-35 days',
      'area': '0.2 sq ft',
      'image': "https://media.istockphoto.com/id/628560850/photo/health-benefits-of-coriander-coriander-is-loaded-with-antioxida.jpg?s=612x612&w=0&k=20&c=64KL1oBDlmOWuTkFY2f1H59sIcNMQi5yHNuhSBILvE4="
    },
    {
      'name': 'Strawberry',
      'category': 'Fruits',
      'difficulty': 'Medium',
      'days': '60-70 days',
      'area': '1 sq ft',
      'image': "https://m.media-amazon.com/images/I/71LzWTbLL0L._UF1000,1000_QL80_.jpg"
    },
    {
      'name': 'Blueberry',
      'category': 'Fruits',
      'difficulty': 'Medium',
      'days': '90-120 days',
      'area': '1.5 sq ft',
      'image': "https://m.media-amazon.com/images/I/51jk5Ao6NIL._UF1000,1000_QL80_.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredCrops = selectedCategory == 'All'
        ? crops
        : crops
            .where((crop) => crop['category'] == selectedCategory)
            .toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF6FBF6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                     Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.green),

                  ),
                  const Text(
                    "Grow Guide",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 70, 197, 75),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Text(
                "Learn to grow fresh vegetables & herbs",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),

              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search crops...",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Category Tabs
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: ['All', 'Vegetables', 'Herbs', 'Fruits']
                      .map((category) => ChoiceChip(
                            label: Text(category),
                            selected: selectedCategory == category,
                            selectedColor: Colors.green,
                            labelStyle: TextStyle(
                              color: selectedCategory == category
                                  ? Colors.white
                                  : Colors.grey[700],
                              fontWeight: FontWeight.w500,
                            ),
                            onSelected: (_) {
                              setState(() {
                                selectedCategory = category;
                              });
                            },
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(height: 16),

              // Crop List
              Expanded(
                child: ListView.builder(
                  itemCount: filteredCrops.length,
                  itemBuilder: (context, index) {
                    final crop = filteredCrops[index];
                    final isEasy = crop['difficulty'] == 'Easy';

                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomLeft: Radius.circular(16),
                            ),
                            child: Image.network(
                              crop['image']!,
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    crop['name']!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: isEasy
                                          ? Colors.green[50]
                                          : Colors.yellow[50],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      crop['difficulty']!,
                                      style: TextStyle(
                                        color: isEasy
                                            ? Colors.green
                                            : Colors.orange,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      Text(
                                        "⏱ ${crop['days']!}",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        "📏 ${crop['area']!}",
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
