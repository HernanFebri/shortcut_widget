import 'package:flutter/material.dart';
import 'package:shortcut_widget_flutter/misc/color_style.dart';

import '../../../misc/text_style.dart';
import '../../onboarding/view/onboarding_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> itemNames = [
      'Onboarding With Introduction Screen Package',
      'Profile',
      'Settings',
      'Messages',
      'Notifications',
      'Gallery',
      'Contacts',
      'Calendar',
      'Tasks',
      'Notes',
      'Favorites',
      'Help',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondaryColor,
        title: Text(
          "Flutter Shortcuts",
          style: AppTextStyles.extraLarge.copyWith(
            color: AppColors.textSecondaryColor,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        padding: const EdgeInsets.all(10.0),
        children: List.generate(
          itemNames.length,
          (index) {
            return InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnboardingPage(),
                      ));
                } else if (index == 1) {
                  //
                }
              },
              child: Container(
                color: AppColors.primaryColor,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      itemNames[index],
                      textAlign: TextAlign.center,
                      style: AppTextStyles.medium.copyWith(
                        color: AppColors.textSecondaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
