import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rheal/base_url.dart';
import 'package:rheal/view/AppColors.dart';

import 'Deaths/DeathsScreen.dart';
import 'about/about_screen.dart';
import 'news/news_screen.dart';
import 'projects/project_screen.dart';

void main() {
  runApp(GetMaterialApp(
    home: DinalLibararyScreen(),
  ));
}

class DinalLibararyScreen extends StatelessWidget {
  DinalLibararyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              buildCategoryCard(
                'الأخبار',
                'images/full_image.jpg',
                NewsScreen(),
              ),
              buildCategoryCard(
                'المشاريع',
                'images/full_image.jpg',
                ProjectScreen(),
              ),
              buildCategoryCard(
                'عن مكتب شؤون المقابر',
                'images/full_image.jpg',
                AbouteScreen(),
              ),
              buildCategoryCard(
                'حالات الوفاة اليومية',
                'images/full_image.jpg',
                DeathsScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategoryCard(
      String name, String imageUrl, Widget destinationScreen) {
    return InkWell(
      onTap: () {
        Get.to(destinationScreen);
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                AppColors.background,
                AppColors.text,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.3, 0.7],
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.shadow,
                      ),
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
