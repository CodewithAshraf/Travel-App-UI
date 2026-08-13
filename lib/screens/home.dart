import 'package:flutter/material.dart';
import 'package:app/models/onboarding_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // Categories
  final List<String> categories = ["All", "Mountain", "Beach", "Camp"];

  int selectedIndex = 0;

  // Places
  final List<Place> places = [
    Place(
      image: "assets/images/image 6.jpg",
      name: "Bali",
      newtour: "Hot Pick",
      members: "assets/images/image 8.jpg",
    ),
    Place(
      image: "assets/images/image 7.jpg",
      name: "Singapore",
      newtour: "Hot Pick",
      members: "assets/images/image 8.jpg",
    ),
    Place(
      image: "assets/images/image 6.jpg",
      name: "Bali",
      newtour: "Hot Pick",
      members: "assets/images/image 8.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ================= APP BAR =================
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),

      // ================= BODY =================
      body: Padding(
        padding: const EdgeInsets.only(left: 17, top: 17, right: 17),

        // COLUMN
        // Everything inside this Column goes
        // from TOP to BOTTOM.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---------- TITLE ----------
            const Text(
              "Explore the World!",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
            ),

            const SizedBox(height: 30),

            // ---------- SEARCH BAR ----------
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(86, 173, 173, 173),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Search Here",

                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.tune),

                  border: InputBorder.none,

                  contentPadding: EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ---------- CATEGORIES ----------
            const Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),

            const SizedBox(height: 10),

            // WRAP
            // Wrap is useful because the chips can move
            // to the next line if there isn't enough space.
            Wrap(
              spacing: 10,
              children: List.generate(categories.length, (index) {
                return ChoiceChip(
                  label: Text(categories[index]),

                  selected: selectedIndex == index,

                  onSelected: (value) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },

                  selectedColor: const Color(0xff0B5D4B),

                  backgroundColor: Colors.white,

                  labelStyle: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.grey,
                  ),

                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.grey.shade300),
                  ),
                );
              }),
            ),

            const SizedBox(height: 30),

            // ---------- POPULAR DESTINATIONS ----------
            // ROW
            // Everything inside this Row goes
            // from LEFT to RIGHT.
            Row(
              children: [
                // FIRST CARD
                buildTravelCard(
                  image: "assets/images/image 4.jpg",
                  title: "Mountain",
                  location: "Switzerland",
                ),

                const SizedBox(width: 8),

                // SECOND CARD
                buildTravelCard(
                  image: "assets/images/images 5.jpg",
                  title: "Beach",
                  location: "Maldives",
                ),
              ],
            ),

            const SizedBox(height: 30),

            // ---------- EXPLORE MORE ----------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Explore More",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),

                Text(
                  "See All",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 94, 50),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12),
                          blurRadius: 8,
                          spreadRadius: -2,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/image 8.jpg",
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180, top: 13),
                          child: Column(
                            children: [
                              Text(
                                "Bali",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Indonesia",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              Image.asset(
                                "assets/images/profile.png",
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.12),
                          blurRadius: 8,
                          spreadRadius: -2,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/newyork.jpg",
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180, top: 13),
                          child: Column(
                            children: [
                              Text(
                                "New York",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "America",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              Image.asset(
                                "assets/images/profile.png",
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 116,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 18,
                          spreadRadius: -2,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/madrid.png",
                              height: 90,
                              width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180, top: 13),
                          child: Column(
                            children: [
                              Text(
                                "Madrid",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Spain",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),

                              Image.asset(
                                "assets/images/profile.png",
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // =================================================
  // TRAVEL CARD
  // =================================================

  Widget buildTravelCard({
    required String image,
    required String title,
    required String location,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),

      // STACK
      // Stack allows us to put the gradient and text
      // ON TOP of the image.
      child: Stack(
        children: [
          // ---------- IMAGE ----------
          Image.asset(image, height: 216, width: 173, fit: BoxFit.cover),

          // ---------- DARK GRADIENT ----------
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.9),
                  ],
                  stops: const [0.5, 0.75, 1.0],
                ),
              ),
            ),
          ),

          // ---------- TEXT ----------
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,

            // COLUMN
            // These two Text widgets go
            // from TOP to BOTTOM.
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
                  location,
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
