import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shortcut_widget_flutter/misc/text_style.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to the App",
            body: "This is the first introduction page.",
            image: Image.asset("assets/images/introduction1.png"),
            decoration: PageDecoration(
              imageFlex: 3,
              bodyFlex: 1,
              bodyTextStyle: AppTextStyles.medium,
              imagePadding: EdgeInsets.all(24.0),
              titleTextStyle: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageViewModel(
            title: "Discover Features",
            body: "Learn about the great features of this app.",
            image: Image.asset("assets/images/introduction2.png"),
            decoration: PageDecoration(
              imageFlex: 3,
              bodyFlex: 1,
              bodyTextStyle: AppTextStyles.medium,
              imagePadding: EdgeInsets.all(24.0),
              titleTextStyle: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PageViewModel(
            title: "Get Started",
            body: "Let's get started with using the app!",
            image: Image.asset("assets/images/introduction1.png"),
            decoration: PageDecoration(
              imageFlex: 3,
              bodyFlex: 1,
              bodyTextStyle: AppTextStyles.medium,
              imagePadding: EdgeInsets.all(24.0),
              titleTextStyle: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const OnboardingPage1()),
          );
        },
        onSkip: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const OnboardingPage1()),
          );
        },
        showSkipButton: true,
        skip: Text(
          "Skip",
          style: AppTextStyles.medium,
        ),
        next: Icon(
          Icons.arrow_forward,
          size: 24.0,
        ),
        done: Text(
          "Done",
          style: AppTextStyles.medium,
        ),
        dotsDecorator: const DotsDecorator(
          size: Size(10.0, 10.0),
          activeSize: Size(22.0, 10.0),
          activeColor: Colors.blue,
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          shape: StadiumBorder(),
        ),
      ),
    );
  }
}

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INI HOME PAGE'),
        centerTitle: true,
      ),
      body: const Center(child: Text("Welcome to the HOME PAGE")),
    );
  }
}
