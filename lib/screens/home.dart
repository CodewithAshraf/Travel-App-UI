import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
            ],
          ),
        ),
      ),
    );
  }
}
