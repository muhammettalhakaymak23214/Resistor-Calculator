import 'package:flutter/material.dart';
import 'package:resistor_calculator/ekranlar/hesapla_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double bigContainerHeight = (screenHeight / 8) * 6;
    final double bigContainerWidth = screenWidth - 20;

    debugPrint(MediaQuery.of(context).size.width.toString());
    debugPrint(MediaQuery.of(context).size.height.toString());

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            SizedBox(
              height: screenHeight / 8,
            ),
            Container(
              // margin: EdgeInsets.all(10),
              height: bigContainerHeight,
              width: bigContainerWidth,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HesaplaPage(data: '3'),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: bigContainerHeight / 5,
                      color: Colors.amber,
                      width: bigContainerWidth - 20,
                      child: Text(
                        "3",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: bigContainerWidth / 5),
                      ),
                    ),
                  ),
                  SizedBox(height: bigContainerHeight / 90),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HesaplaPage(data: '4'),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: bigContainerHeight / 5,
                      color: Colors.amber,
                      width: bigContainerWidth - 20,
                      child: Text(
                        "4",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: bigContainerWidth / 5),
                      ),
                    ),
                  ),
                  SizedBox(height: bigContainerHeight / 90),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HesaplaPage(data: '5'),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: bigContainerHeight / 5,
                      color: Colors.amber,
                      width: bigContainerWidth - 20,
                      child: Text(
                        "5",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: bigContainerWidth / 5),
                      ),
                    ),
                  ),
                  SizedBox(height: bigContainerHeight / 90),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HesaplaPage(data: '6'),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: bigContainerHeight / 5,
                      color: Colors.amber,
                      width: bigContainerWidth - 20,
                      child: Text(
                        "6",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: bigContainerWidth / 5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight / 8,
            ),
          ],
        ),
      ),
    );
  }
}
