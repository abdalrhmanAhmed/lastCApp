// ignore_for_file: deprecated_member_use

import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rheal/view/AppColors.dart';

class GetLibaarary extends StatefulWidget {
  GetLibaarary({Key? key, required this.id, required this.title})
      : super(key: key);
  final int id;
  final String title;

  @override
  State<GetLibaarary> createState() => _subState();
}

class _subState extends State<GetLibaarary> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: Container(
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(Icons.arrow_back_ios),
              iconSize: 29,
            ),
          ),
          title: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          elevation: 0.5,
          iconTheme: IconThemeData(color: AppColors.text),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  AppColors.background,
                  AppColors.background,
                ])),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 5, right: 50, left: 3, bottom: 10),
              child: Stack(
                children: <Widget>[],
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: GestureDetector(
                child: Card(
                  color: AppColors.text,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Container(
                            height: 30,
                            width: 30,
                            child: Animator<double>(
                              duration: Duration(milliseconds: 1500),
                              cycles: 0,
                              curve: Curves.easeInOut,
                              tween: Tween<double>(begin: 0.0, end: 15.0),
                              builder: (context, animatorState, child) =>
                                  Container(
                                margin: EdgeInsets.all(animatorState.value),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.background,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.text,
                                      offset: Offset(0, 3),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.video_camera_back_sharp,
                                    color: AppColors.text,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 70),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "فيديوهات متعددة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  color: AppColors.text,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Container(
                            height: 30,
                            width: 30,
                            child: Animator<double>(
                              duration: Duration(milliseconds: 1500),
                              cycles: 0,
                              curve: Curves.easeInOut,
                              tween: Tween<double>(begin: 0.0, end: 15.0),
                              builder: (context, animatorState, child) =>
                                  Container(
                                margin: EdgeInsets.all(animatorState.value),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.background,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.text,
                                      offset: Offset(0, 3),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.image,
                                    color: AppColors.text,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 70),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "صور متعددة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  color: AppColors.text,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Container(
                            height: 30,
                            width: 30,
                            child: Animator<double>(
                              duration: Duration(milliseconds: 1500),
                              cycles: 0,
                              curve: Curves.easeInOut,
                              tween: Tween<double>(begin: 0.0, end: 15.0),
                              builder: (context, animatorState, child) =>
                                  Container(
                                margin: EdgeInsets.all(animatorState.value),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.background,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.text,
                                      offset: Offset(0, 3),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.mic,
                                    color: AppColors.text,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 70),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "صوتيات متعددة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Card(
                  color: AppColors.text,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Container(
                            height: 30,
                            width: 30,
                            child: Animator<double>(
                              duration: Duration(milliseconds: 1500),
                              cycles: 0,
                              curve: Curves.easeInOut,
                              tween: Tween<double>(begin: 0.0, end: 15.0),
                              builder: (context, animatorState, child) =>
                                  Container(
                                margin: EdgeInsets.all(animatorState.value),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.background,
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColors.text,
                                      offset: Offset(0, 3),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.file_copy,
                                    color: AppColors.text,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 70),
                          Column(
                            children: [
                              SizedBox(height: 10),
                              Text(
                                "نصوص متعددة",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
