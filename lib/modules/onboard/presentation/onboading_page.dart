import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/core/data/local/storage/app_storage_manager.dart';
import 'package:flutter_boilerplate_clean_architecture_bloc/gen/assets.gen.dart';

import '../../../core/routes/app_routes.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          PageView(
            onPageChanged: (int page) {
              setState(() {
                currentIndex = page;
              });
            },
            controller: _pageController,
            children: [
              createPage(
                image: Assets.images.onboarding1,
                title: "Welcome to 2kMovies",
                description: "Thank you for choosing me",
              ),
              createPage(
                image: Assets.images.onboarding2,
                title: "All in one",
                description: "All Movies & Series at one place",
              ),
              createPage(
                image: Assets.images.onboarding3,
                title: "Let's get started !",
                description: "",
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: _buildIndicator(),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber.shade900,
                  ),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (currentIndex < 2) {
                          currentIndex++;
                          if (currentIndex < 3) {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          }
                        } else {
                          //example when introduction about app => set isFirstLunch = false
                          AppStorageManager()
                              .appStorageRepositoryImpl
                              .saveIsFirstLaunchApp(false);
                          AutoRouter.of(context)
                              .replaceAll([const MainRoute()]);
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: Colors.white,
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

  //Create the indicator decorations widget
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8.0,
      width: isActive ? 20 : 8,
      margin: const EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
        color: Colors.amber.shade900,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }

//Create the indicator list
  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < 3; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }

    return indicators;
  }
}

class createPage extends StatelessWidget {
  final AssetGenImage image;
  final String title;
  final String description;

  const createPage({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image.image(
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height / 6,
          right: 10,
          left: 10,
          child: Column(
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
