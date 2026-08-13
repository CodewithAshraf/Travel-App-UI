import 'package:app/screens/home.dart';
import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';
import '../widgets/onboarding_page.dart';
import 'package:app/screens/home.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  int currentPage = 0;

  final List<OnboardingModel> pages = [
    OnboardingModel(
      image: 'assets/images/image 1.jpg',
      title: 'New Adventures',
      description:
          'If you like to travel, then this is for you! Here you can explore the beauty of the world.',
    ),
    OnboardingModel(
      image: 'assets/images/image 2.jpg',
      title: 'Explore Nature',
      description:
          'Discover mountains, forests and amazing places around the globe.',
    ),
    OnboardingModel(
      image: 'assets/images/image 3.jpg',
      title: 'Let’s Travel',
      description:
          'Plan your trips and enjoy a beautiful travel experience.',
    ),
  ];

  void nextPage() {
    if (currentPage < pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to your Home/Login Screen
      // print("Navigate to Home Screen");
      Navigator.push(
        context, MaterialPageRoute(builder: (context)=> const Homepage())
        
        );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: currentPage == index ? 18 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Colors.white
            : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// PageView
          PageView.builder(
            controller: _pageController,
            itemCount: pages.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                page: pages[index],
                onNext: nextPage,
              );
            },
          ),

          /// Dots Indicator
          Positioned(
            bottom: 135,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                pages.length,
                (index) => buildDot(index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}