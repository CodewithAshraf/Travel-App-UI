import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List<String> categories = ["All", "Mountain", "Beach", "Camp"];
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.only(left: 17, top: 17),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Explore the World!",
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w900),
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(right: 12),
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(86, 173, 173, 173),
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left: 18, right: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Here",
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 16,
                      ),

                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: const Icon(Icons.tune),

                      border: InputBorder.none,

                      contentPadding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    children: List.generate(categories.length, (index) {
                      return ChoiceChip(
                        label: Text(categories[index]),
                        selected: selectedindex == index,
                        onSelected: (value) {
                          setState(() {
                            selectedindex = index;
                          });
                        },

                        selectedColor: const Color(0xff0B5D4B),
                        backgroundColor: Colors.white,

                        labelStyle: TextStyle(
                          color: selectedindex == index
                              ? Colors.white
                              : Colors.grey,
                        ),

                        shape: StadiumBorder(
                          side: BorderSide(color: Colors.grey.shade300),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              // Image
                              Image.asset(
                                "assets/images/image 4.jpg",
                                height: 216,
                                width: 173,
                                fit: BoxFit.cover,
                              ),

                              // Gradient
                              Positioned.fill(
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color.fromARGB(104, 0, 0, 0),
                                        const Color.fromARGB(
                                          255,
                                          46,
                                          46,
                                          46,
                                        ).withOpacity(0.2),
                                        Colors.black.withOpacity(0.9),
                                      ],
                                      stops: const [0.5, 0.75, 1.0],
                                    ),
                                  ),
                                ),
                              ),

                              // Text
                              Positioned(
                                left: 15,
                                right: 15,
                                bottom: 15,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    Text(
                                      "Mountain",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Switzerland",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(width: 8),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Stack(
                          children: [
                            // Image
                            Image.asset(
                              "assets/images/images 5.jpg",
                              height: 216,
                              width: 173,
                              fit: BoxFit.cover,
                            ),

                            // Gradient
                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      const Color.fromARGB(104, 0, 0, 0),
                                      const Color.fromARGB(
                                        255,
                                        46,
                                        46,
                                        46,
                                      ).withOpacity(0.2),
                                      Colors.black.withOpacity(0.9),
                                    ],
                                    stops: const [0.5, 0.75, 1.0],
                                  ),
                                ),
                              ),
                            ),

                            // Text
                            Positioned(
                              left: 15,
                              right: 15,
                              bottom: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
                                  Text(
                                    "Beach",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Maldives",
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 13,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
