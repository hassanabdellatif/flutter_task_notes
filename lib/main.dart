import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 36,
        ),
        backgroundColor: Colors.yellow,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Notepad',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 36,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            buildSearchBar(),
            SizedBox(
              height: 16,
            ),
            buildCustomContainer(
              color: Color(0xffa4ffc5),
              title: 'Todays grocery list\n',
              subtitle: 'June 26, 2022 08:05 PM',
            ),
            SizedBox(
              height: 16,
            ),
            buildCustomContainer(
              color: Color(0xfffffca4),
              title: 'Rich Dad Poor Dad Quotes\n',
              subtitle: 'June 22, 2022 05:05 PM',
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(36),
      ),
      borderSide: BorderSide(
        color: Colors.black,
        width: 1,
      ),
    );
  }

  Widget buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        textInputAction: TextInputAction.search,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          hintText: 'Search notes',
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  Widget buildCustomContainer({Color? color, String? title, String? subtitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 80,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: color,
        ),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                text: title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: subtitle,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
