import 'package:flutter/material.dart';

import '../../../misc/text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Flutter Shortcuts",
          style: AppTextStyles.extraLarge,
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
          12,
          (index) {
            return InkWell(
              onTap: () {
                if (index == 0) {
                  print("Item 0 clicked");
                } else if (index == 1) {
                  print("Item 1 clicked");
                } else {
                  // Aksi default untuk item lain
                }
              },
              child: Container(
                color: Colors.blueAccent,
                child: Center(
                  child: Text(
                    'Item $index',
                    style: AppTextStyles.medium,
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
