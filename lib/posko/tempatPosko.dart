import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apk_dinaskehutanan/screen/poskoBJB.dart';
import 'package:apk_dinaskehutanan/screen/poskoBJM.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tempatposko(),
    );
  }
}

class Tempatposko extends StatelessWidget {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              height: height * 0.25,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 100,
                      left: 15,
                      right: 15,
                      ),
                      child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Pengawasan Hutan",
                          style: GoogleFonts.acme(
                            fontSize: 30,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Chip(label: Text('PILIH DAERAH POSKO PENJAGAAN:'), avatar: Icon(Icons.house),),


            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Poskobjb(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                        minimumSize: Size(width * 0.1, height * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      icon: Image.asset(
                        "assets/logobjb.png",
                        width: width * 0.37,
                        height: 150,
                      ),
                      label: Center(
                        child: Text(
                          "",
                          style: GoogleFonts.acme(fontSize: 20,color: Colors.brown[900]),
                        ),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Poskobjm(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo,
                        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                        minimumSize: Size(width * 0.1, height * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      icon: Image.asset(
                        "assets/logobjm.png",
                        width: width * 0.37,
                        height: 150,
                      ),
                      label: Center(
                        child: Text(
                          "",
                          style: GoogleFonts.acme(fontSize: 20,color: Colors.brown[900]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
