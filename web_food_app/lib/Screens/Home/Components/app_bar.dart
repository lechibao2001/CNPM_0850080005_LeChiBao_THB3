// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:web_food_app/Components/default_button.dart';

import 'menu_item.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình của thiết bị
    final screenSize = MediaQuery.of(context).size;

    // Định nghĩa chiều cao của logo và chữ "Foodi"
    final fontSize = screenSize.width > 600 ? 15.0 : 12.0;

    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.10),
          ),
        ],
      ),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _isExpanded = !_isExpanded;
              });
            },
            backgroundColor: Colors.white,
            elevation: 0,
            child: Image.asset(
              "assets/images/logo.png",
              height:25,
              alignment: Alignment.topCenter,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            "Foodi".toUpperCase(),
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: MenuItem(
                  title: "Home",
                  press: () {},
                ),
              ),
              PopupMenuItem(
                child: MenuItem(
                  title: "about",
                  press: () {},
                ),
              ),
              PopupMenuItem(
                child: MenuItem(
                  title: "Pricing",
                  press: () {},
                ),
              ),
              PopupMenuItem(
                child: MenuItem(
                  title: "Contact",
                  press: () {},
                ),
              ),
              PopupMenuItem(
                child: MenuItem(
                  title: "Login",
                  press: () {},
                ),
              ),
              PopupMenuItem(
                child: DefaultButton(
                  text: "Get Started",
                  press: () {},
                ),
              ),
            ],
            onSelected: (value) {},
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
    );
  }
}