
import 'package:flutter/material.dart';
import 'package:get_mysql_data/page1.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'main.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Icon(Icons.directions_railway,
            size: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFFED1A34),
        centerTitle: true,
        title: Text(
          "SAMULAŞ",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20,),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 300),
                  //   child: Container(
                  //     width: 100,
                  //     height: 50,
                  //     child: ElevatedButton(
                  //       onPressed: () {
                  //         Navigator.restorablePushReplacementNamed(context, '/LoginPage');
                  //       },
                  //       child: Text(
                  //         "GERİ",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold, fontSize: 15),
                  //       ),
                  //       style: ButtonStyle(
                  //         backgroundColor: MaterialStateProperty.all<Color>(
                  //           //Colors.black,
                  //           Color(0xFFED1A34),
                  //         ),
                  //         shape:
                  //         MaterialStateProperty.all<RoundedRectangleBorder>(
                  //           RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(25.0)),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: 40.0,
                      child: Icon(
                        Icons.person_outline,
                        color: Color(0xFFED1A34),
                        size: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Hoşgeldin",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Merriweather",
                              fontWeight: FontWeight.w500,
                              fontSize: 35),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "${username!}",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Merriweather",
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "${date!}",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Merriweather",
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(25.0
                        // topLeft: Radius.circular(50),
                        //bottomRight: Radius.circular(50),
                      ),
                    ),
                    elevation: 10.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 1",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat : $tur1_saat",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren : $tur1_tren",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf : $tur1_harf",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Güzergah : $tur1_guzergah",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Color(0xFFED1A34),
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(25.0
                        //topRight: Radius.circular(50),
                        //bottomLeft: Radius.circular(50),
                      ),),
                    elevation: 10.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 2",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat : $tur2_saat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren : $tur2_tren",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf : $tur2_harf",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Güzergah : $tur2_guzergah",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Colors.white,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(25.0
                          //topLeft: Radius.circular(50),
                          //bottomRight: Radius.circular(50),
                        )),
                    elevation: 10.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 3",
                            style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat : $tur3_saat",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren : $tur3_tren",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf : $tur3_harf",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Güzergah : $tur3_guzergah",
                              style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 50,),

                  Card(
                    margin: EdgeInsets.only(right: 40, left: 40),
                    color: Color(0xFFED1A34),
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(25.0
                          //topLeft: Radius.circular(50),
                          //bottomRight: Radius.circular(50),
                        )),
                    elevation: 10.0,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            "TUR 4",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Saat : $tur4_saat",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Tren : $tur4_tren",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Harf : $tur4_harf",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Güzergah : $tur4_guzergah",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.restorablePushReplacementNamed(context, '/LoginPage');
                      },
                      child: Text(
                        "GERİ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          //Colors.black,
                          Color(0xFFED1A34),
                        ),
                        shape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
      ),
    );

  }
}
