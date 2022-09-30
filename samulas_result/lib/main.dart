
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_mysql_data/page1.dart';
import 'package:http/http.dart' as http;

void main(){
  runApp(LoginApp());
}

String? username;
String? tc;
String? date;
String? tur1_saat;
String? tur1_tren;
String? tur1_harf;
String? tur1_guzergah;
String? tur2_saat;
String? tur2_tren;
String? tur2_harf;
String? tur2_guzergah;
String? tur3_saat;
String? tur3_tren;
String? tur3_harf;
String? tur3_guzergah;
String? tur4_saat;
String? tur4_tren;
String? tur4_harf;
String? tur4_guzergah;


class LoginApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
        routes: <String,WidgetBuilder>{
          '/page1':(BuildContext context)=>page1(),
          //'/page2':(BuildContext context)=>page2(),
          '/LoginPage':(BuildContext context)=>LoginPage(),
        }
    );
  }

}

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=>_LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController d=TextEditingController();
  TextEditingController t1_s=TextEditingController();
  TextEditingController t1_t=TextEditingController();
  TextEditingController t1_h=TextEditingController();
  TextEditingController t1_g=TextEditingController();
  TextEditingController t2_s=TextEditingController();
  TextEditingController t2_t=TextEditingController();
  TextEditingController t2_h=TextEditingController();
  TextEditingController t2_g=TextEditingController();
  TextEditingController t3_s=TextEditingController();
  TextEditingController t3_t=TextEditingController();
  TextEditingController t3_h=TextEditingController();
  TextEditingController t3_g=TextEditingController();
  TextEditingController t4_s=TextEditingController();
  TextEditingController t4_t=TextEditingController();
  TextEditingController t4_h=TextEditingController();
  TextEditingController t4_g=TextEditingController();

  TextEditingController t = TextEditingController();
  TextEditingController user=TextEditingController();

  Future<List?> login() async {
    final response = await http.post(
        // Uri.parse("http://10.0.2.2/login/yeni_login.php"), body: {
      Uri.parse("http://www.samulas.com.tr/mobil/yeni_login.php"), body: {
      "username":user.text,
      "tc": t.text,
      "date":d.text,
      "tur1_saat":t1_s.text,
      "tur1_tren":t1_t.text,
      "tur1_harf":t1_h.text,
      "tur1_guzergah":t1_g.text,
      "tur2_saat":t2_s.text,
      "tur2_tren":t2_t.text,
      "tur2_harf":t2_h.text,
      "tur2_guzergah":t2_g.text,
      "tur3_saat":t3_s.text,
      "tur3_tren":t3_t.text,
      "tur3_harf":t3_h.text,
      "tur3_guzergah":t3_g.text,
      "tur4_saat":t4_s.text,
      "tur4_tren":t4_t.text,
      "tur4_harf":t4_h.text,
      "tur4_guzergah":t4_g.text,



    });

    var datauser = json.decode(response.body);

    Fluttertoast.showToast(
        msg: "T.C. veya Tarih hatalı girildi!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
    if (datauser[0]['level'] == 'admin') {
      Fluttertoast.showToast(
          msg: "Başarılı giriş!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0
      );
      Navigator.restorablePushReplacementNamed(context, '/page1');
    }



    setState(() {
      username = datauser[0]['username'];
    });
    setState(() {
      tc = datauser[0]['tc'];
    });
    setState(() {
      date = datauser[0]['date'];
    });
    setState(() {
      tur1_saat = datauser[0]['tur1_saat'];
    });
    setState(() {
      tur1_harf = datauser[0]['tur1_harf'];
    });
    setState(() {
      tur1_tren = datauser[0]['tur1_tren'];
    });
    setState(() {
      tur1_guzergah = datauser[0]['tur1_guzergah'];
    });
    setState(() {
      tur2_saat = datauser[0]['tur2_saat'];
    });
    setState(() {
      tur2_harf = datauser[0]['tur2_harf'];
    });
    setState(() {
      tur2_tren = datauser[0]['tur2_tren'];
    });
    setState(() {
      tur2_guzergah = datauser[0]['tur2_guzergah'];
    });
    setState(() {
      tur3_saat = datauser[0]['tur3_saat'];
    });
    setState(() {
      tur3_harf = datauser[0]['tur3_harf'];
    });
    setState(() {
      tur3_tren = datauser[0]['tur3_tren'];
    });
    setState(() {
      tur3_guzergah = datauser[0]['tur3_guzergah'];
    });
    setState(() {
      tur4_saat = datauser[0]['tur4_saat'];
    });
    setState(() {
      tur4_harf = datauser[0]['tur4_harf'];
    });
    setState(() {
      tur4_tren = datauser[0]['tur4_tren'];
    });
    setState(() {
      tur4_guzergah = datauser[0]['tur4_guzergah'];
    });

    return datauser[0];
  }

  Future deneme() async{
    if(tc==""||date==""){
      Fluttertoast.showToast(
        msg: "Both filds cannot be blank!",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0,
      );
    }
    else{
      var url="http://10.0.2.2/login/deneme.php";
      //var url="http://192.168.1.106/login/deneme.php";
      //var url="http://localhost/login/deneme.php";

      var response = await http.post(Uri.parse(url), body: {
        "tc": t.text,
        "date":d.text,
        "tur1_saat":t1_s.text,
        "tur1_tren":t1_t.text,
        "tur1_harf":t1_h.text,
        "tur1_guzergah":t1_g.text,
        "tur2_saat":t2_s.text,
        "tur2_tren":t2_t.text,
        "tur2_harf":t2_h.text,
        "tur2_guzergah":t2_g.text,
        "tur3_saat":t3_s.text,
        "tur3_tren":t3_t.text,
        "tur3_harf":t3_h.text,
        "tur3_guzergah":t3_g.text,

      });
      var data=json.decode(response.body);

      if(data=="succes"){
        print("başardılı");
        Navigator.restorablePushReplacementNamed(context, '/page1');

      }
      else{
        print("olmadı");
        Fluttertoast.showToast(
          msg: "The user and password comination does no exist!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          fontSize: 16.0,
        );
      }
      // setState(() {
      //   tc = data[]['tc'];
      // });
      // setState(() {
      //   date = data[0]['date'];
      // });
      // setState(() {
      //   tur1_saat = data[0]['tur1_saat'];
      // });
      // setState(() {
      //   tur1_harf = data[0]['tur1_harf'];
      // });
      // setState(() {
      //   tur1_tren = data[0]['tur1_tren'];
      // });
      // setState(() {
      //   tur1_guzergah = data[0]['tur1_guzergah'];
      // });
      // setState(() {
      //   tur2_saat = data[0]['tur2_saat'];
      // });
      // setState(() {
      //   tur2_harf = data[0]['tur2_harf'];
      // });
      // setState(() {
      //   tur2_tren = data[0]['tur2_tren'];
      // });
      // setState(() {
      //   tur2_guzergah = data[0]['tur2_guzergah'];
      // });
      // setState(() {
      //   tur3_saat = data[0]['tur3_saat'];
      // });
      // setState(() {
      //   tur3_harf = data[0]['tur3_harf'];
      // });
      // setState(() {
      //   tur3_tren = data[0]['tur3_tren'];
      // });
      // setState(() {
      //   tur3_guzergah = data[0]['tur3_guzergah'];
      // });
      //
      //   return data[0];
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/logoyeni-1.png"),

                SizedBox(height: 50.0,),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:  25.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      border: Border.all(color: Color(0xFFED1A34)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    child: Padding(
                      padding:const EdgeInsets.only(left: 10.0) ,
                      child: TextField(
                        controller: t,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "T.C.",hintStyle:TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.bold,
                          fontSize:17,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:  25.0),
                  child: Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      border: Border.all(color: Color(0xFFED1A34)),
                      borderRadius: BorderRadius.circular(25.0),
                    ),

                    child: Padding(
                      padding:const EdgeInsets.only(left: 10.0) ,
                      child: TextField(
                        controller: d,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                         hintText: "Tarih (2022-09-09)",hintStyle: TextStyle(
                         color:Colors.white,
                         fontWeight: FontWeight.bold,
                         fontSize: 17,
                        ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height:50),
                Container(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed:(){
                      login();
                    },
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFED1A34),),
                      shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(25.0)
                          )

                      ),
                    ),
                    child:Text("Giriş",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,

                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
    // return Scaffold(
    //
    //     backgroundColor: Colors.white,
    //     body: SafeArea(
    //       child: Center(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Image.asset("images/logoyeni-1.png"),
    //             SizedBox(height: 50.0,),
    //             // Padding(
    //             //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //             //   child: Container(
    //             //     width: 300,
    //             //     decoration: BoxDecoration(
    //             //       color: Color.fromARGB(255, 230, 230, 230),
    //             //       border: Border.all(color: Color(0xFFED1A34)),
    //             //       borderRadius: BorderRadius.circular(25.0),
    //             //     ),
    //             //
    //             //   ),
    //             // ),
    //             SizedBox(height: 25,),
    //
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //               child: Container(
    //                 width: 300,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromARGB(255, 230, 230, 230),
    //                   border: Border.all(color: Color(0xFFED1A34)),
    //                   borderRadius: BorderRadius.circular(25.0),
    //                 ),
    //
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(left: 10.0),
    //                   child: TextField(
    //                     controller: t,
    //                     textAlign: TextAlign.center,
    //                     //obscureText: true,
    //                     decoration: InputDecoration(
    //                       border: InputBorder.none,
    //                       hintText: "T.C. Kimlik No ", hintStyle: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 17,
    //                     ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             SizedBox(height: 50),
    //
    //             Padding(
    //               padding: const EdgeInsets.symmetric(horizontal: 25.0),
    //               child: Container(
    //                 width: 300,
    //                 decoration: BoxDecoration(
    //                   color: Color.fromARGB(255, 230, 230, 230),
    //                   border: Border.all(color: Color(0xFFED1A34)),
    //                   borderRadius: BorderRadius.circular(25.0),
    //                 ),
    //l
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(left: 10.0),
    //                   child: TextField(
    //                     controller: d,
    //                     textAlign: TextAlign.center,
    //                     //obscureText: true,
    //                     decoration: InputDecoration(
    //                       border: InputBorder.none,
    //                       hintText: "Tarih ", hintStyle: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //                       fontSize: 17,
    //                     ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //
    //
    //             SizedBox(height: 50),
    //
    //             Container(
    //               width: 120,
    //               height: 50,
    //               child: ElevatedButton(onPressed: () {
    //                 login();
    //                 //deneme();
    //               },
    //                 style: ButtonStyle(
    //                   backgroundColor: MaterialStateProperty.all<Color>(
    //                     Color(0xFFED1A34),),
    //                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    //                       RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(25.0)
    //                       )
    //
    //                   ),
    //                 ),
    //                 child: Text("Giriş",
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 17,
    //
    //                   ),
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ));
  }
}