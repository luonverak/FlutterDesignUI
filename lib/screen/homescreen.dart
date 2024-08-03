import 'package:design_ui/components/app_color.dart';
import 'package:design_ui/components/app_font.dart';
import 'package:design_ui/components/components_custom.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: Text(
          "Flutter Design",
          style: TextStyle(
              fontSize: AppFontSize.large, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_on,
              color: AppColor.black,
            ),
          )
        ],
        bottom: Tab(
          height: 55,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              style: TextStyle(
                  fontSize: AppFontSize.middle, color: AppColor.black),
              decoration: InputDecoration(
                focusedBorder: ComponentsCustom.outlineInput,
                enabledBorder: ComponentsCustom.outlineInput,
                contentPadding: EdgeInsets.zero,
                prefixIcon: const Icon(
                  Icons.search,
                  color: AppColor.black,
                ),
                hintText: "Search App...",
                hintStyle: TextStyle(
                    fontSize: AppFontSize.middle, color: AppColor.black),
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "You have push button many time",
              style: TextStyle(
                fontSize: AppFontSize.middle,
                color: AppColor.black,
                fontWeight: AppFontWieght.w600,
              ),
            ),
            Text(
              "$number",
              style: TextStyle(fontSize: AppFontSize.xlarge),
            )
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            number += 1;
          });
        },
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColor.blue,
          ),
          child: const Icon(
            Icons.add,
            color: AppColor.white,
            size: 30,
          ),
        ),
      ),
    );
  }
}
