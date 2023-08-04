// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool showContent = false;

  void toggleContent() {
    setState(() {
      showContent = !showContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20), // Thêm padding cho màn hình
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500), // Thời gian chuyển động
            left: showContent ? 200 : 0, // Vị trí nút khi đã nhấn vào
            top: 20, // Vị trí theo chiều dọc không thay đổi
            child: InkWell(
              onTap: () {
                toggleContent();
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.yellow, Colors.orange],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ), // Màu xắc từ màu vàng đến màu cam
                      shape: BoxShape.circle, // Hình dạng tròn
                      border: Border.all(
                        color: Colors.black, // Màu viền đen
                        width: 3.0, // Độ dày viền
                      ),
                    ),
                  ),
                  Text(
                    "BURGER".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Màu chữ đen
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showContent)
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10), // Khoảng cách giữa nội dung và khung
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labor",
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.black.withOpacity(1.0),
                      ),
                    ),
                    const SizedBox(height: 20), // Khoảng cách giữa nội dung và nút "Get Started"
                    FittedBox(
                      // Now it just take the required spaces
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Colors.yellow, Colors.orange],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ), // Màu xắc từ màu vàng đến màu cam
                          borderRadius: BorderRadius.circular(34),
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 38,
                              width: 38,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [Colors.yellow, Colors.orange],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ), // Màu xắc từ màu vàng đến màu cam
                                shape: BoxShape.circle,
                              ),
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color(0xFF372930),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Get Started".toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            ),
                            const SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}