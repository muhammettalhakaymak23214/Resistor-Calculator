import 'package:flutter/material.dart';
import 'package:resistor_calculator/widgets/customContainer.dart';

class HesaplaPage extends StatefulWidget {
  //HesaplaPage();

  const HesaplaPage({super.key});

  @override
  State<HesaplaPage> createState() => _HesaplaPageState();
}

class _HesaplaPageState extends State<HesaplaPage> {
  String a = "";
  String b = "";
  String c = "";
  String d = "";
  String x = "";
  String y = "";

  Color aColor = const Color.fromARGB(255, 255, 255, 255);
  Color bColor = const Color.fromARGB(255, 255, 255, 255);
  Color cColor = const Color.fromARGB(255, 255, 255, 255);
  Color dColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double hesapContainerHeight = (screenHeight / 14) * 2;
    final double butonlarContainerHeight = (screenHeight / 14) * 12;
    final double resistorContainerWidth = (screenWidth / 6) * 4;
    final double fontSize = screenHeight / 40;
    debugPrint(MediaQuery.of(context).size.width.toString());
    debugPrint(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            //Hesapla Container
            Container(
              height: hesapContainerHeight,
              width: screenWidth,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: screenHeight / 30,
                  ),
                  Row(
                    children: [
                      Container(
                        width: screenWidth / 6,
                        height: 2,
                        color: const Color.fromARGB(255, 251, 255, 0),
                      ),
                      Container(
                        height: hesapContainerHeight / 3,
                        width: resistorContainerWidth,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: (resistorContainerWidth / 20) * 2,
                              // color: Colors.white,
                            ),
                            Container(
                              width: (resistorContainerWidth / 20) * 16,
                              color: const Color.fromARGB(255, 255, 0, 0),
                              child: Row(
                                children: [
                                  Container(
                                    width: (resistorContainerWidth / 20),
                                    decoration: BoxDecoration(
                                        color: aColor,
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                  Container(
                                    width: (resistorContainerWidth / 20) * 3,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: (resistorContainerWidth / 20),
                                    decoration: BoxDecoration(
                                        color: bColor,
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                  Container(
                                    width: (resistorContainerWidth / 20) * 3,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: (resistorContainerWidth / 20),
                                    decoration: BoxDecoration(
                                        color: cColor,
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                  Container(
                                    width: (resistorContainerWidth / 20) * 6,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: (resistorContainerWidth / 20),
                                    decoration: BoxDecoration(
                                        color: dColor,
                                        border:
                                            Border.all(color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: (resistorContainerWidth / 20) * 2,
                              // color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth / 6,
                        height: 2,
                        color: const Color.fromARGB(255, 251, 255, 0),
                      ),
                    ],
                  ),
                  Text(
                    "${x}${a}${y}${b}${c}Ω ${d}",
                    style: TextStyle(color: Colors.white, fontSize: fontSize),
                  )
                ],
              ),
            ),
            Container(
              height: butonlarContainerHeight,
              color: const Color.fromARGB(255, 0, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "0";
                              aColor = Colors.black;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.black,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "0",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "0";
                              bColor = Colors.black;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.black,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "0",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = " ";
                              x = "";
                              y = "";
                              cColor = Colors.black;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.black,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "1Ω",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: Colors.black,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "1";
                              aColor = const Color.fromRGBO(160, 82, 44, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(160, 82, 44, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "1",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "1";
                              bColor = const Color.fromRGBO(160, 82, 44, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(160, 82, 44, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "1",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = "0 ";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(160, 82, 44, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(160, 82, 44, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "10Ω",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = "±1%";
                              dColor = const Color.fromRGBO(160, 82, 44, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(160, 82, 44, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±1%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "2";
                              aColor = const Color.fromRGBO(254, 0, 0, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(254, 0, 0, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "2",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "2";
                              bColor = const Color.fromRGBO(254, 0, 0, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(254, 0, 0, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "2",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = "00 ";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(254, 0, 0, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(254, 0, 0, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "100Ω",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = "±2%";
                              dColor = const Color.fromRGBO(254, 0, 0, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(254, 0, 0, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±2%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "3";
                              aColor = const Color.fromRGBO(245, 145, 5, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(245, 145, 5, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "3",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "3";
                              bColor = const Color.fromRGBO(245, 145, 5, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(245, 145, 5, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "3",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = " K";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(245, 145, 5, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(245, 145, 5, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "1KΩ",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: const Color.fromRGBO(245, 145, 5, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "4";
                              aColor = const Color.fromRGBO(253, 245, 14, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(253, 245, 14, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "4",
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "4";
                              bColor = const Color.fromRGBO(253, 245, 14, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(253, 245, 14, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "4",
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = "0 K";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(253, 245, 14, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(253, 245, 14, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "10KΩ",
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: const Color.fromRGBO(253, 245, 14, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "5";
                              aColor = const Color.fromRGBO(1, 133, 119, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(1, 133, 119, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "5",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "5";
                              bColor = const Color.fromRGBO(1, 133, 119, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(1, 133, 119, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "5",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = "00 K";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(1, 133, 119, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(1, 133, 119, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "100KΩ",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = "±0.5%";
                              dColor = const Color.fromRGBO(1, 133, 119, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(1, 133, 119, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±0.5%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "6";
                              aColor = const Color.fromRGBO(15, 66, 253, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(15, 66, 253, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "6",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "6";
                              bColor = const Color.fromRGBO(15, 66, 253, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(15, 66, 253, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "6",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = " M";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(15, 66, 253, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(15, 66, 253, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "1MΩ",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = "±0.25%";
                              dColor = const Color.fromRGBO(15, 66, 253, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(15, 66, 253, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±0.25%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "7";
                              aColor = const Color.fromRGBO(197, 2, 252, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(198, 2, 252, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "7",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "7";
                              bColor = const Color.fromRGBO(197, 2, 252, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(197, 2, 252, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "7",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              c = "0 M";
                              x = "";
                              y = "";
                              cColor = const Color.fromRGBO(197, 2, 252, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(197, 2, 252, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "10MΩ",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = " ±0.1%";
                              dColor = const Color.fromRGBO(197, 2, 252, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(197, 2, 252, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±0.1%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "8";
                              aColor = const Color.fromARGB(255, 107, 107, 107);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromARGB(255, 107, 107, 107),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "8",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "8";
                              bColor = const Color.fromARGB(255, 107, 107, 107);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromARGB(255, 107, 107, 107),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "8",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: const Color.fromARGB(255, 107, 107, 107),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = " ±0.05%";
                              dColor = Color.fromARGB(255, 107, 107, 107);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromARGB(255, 107, 107, 107),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±0.05%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              a = "9";
                              aColor = Colors.white;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.white,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "9",
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              b = "9";
                              bColor = Colors.white;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.white,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "9",
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: Colors.white,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.black,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: Colors.white,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: const Color.fromRGBO(242, 209, 102, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: const Color.fromRGBO(242, 209, 102, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              x = "";
                              y = ".";
                              c = " ";
                              cColor = const Color.fromRGBO(242, 209, 102, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(242, 209, 102, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "0.1",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = "±5%";
                              dColor = const Color.fromRGBO(242, 209, 102, 1.0);
                            });
                          },
                          child: CustomContainer(
                            color: const Color.fromRGBO(242, 209, 102, 1.0),
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±5%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: butonlarContainerHeight / 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: Colors.grey,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CustomContainer(
                            color: Colors.grey,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              x = "0.";
                              y = "";
                              c = " ";
                              cColor = Colors.grey;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.grey,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "0.01",
                            textColor: Colors.white,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              d = "±10%";
                              dColor = Colors.grey;
                            });
                          },
                          child: CustomContainer(
                            color: Colors.grey,
                            fontSize: fontSize,
                            butonlarContainerHeight: butonlarContainerHeight,
                            screenWidth: screenWidth,
                            text: "±10%",
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
