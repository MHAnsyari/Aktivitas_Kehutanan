import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apk_dinaskehutanan/screen/penanamanBJB.dart';
import 'package:apk_dinaskehutanan/screen/penanamanBJM.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tempatpenanaman(),
    );
  }
}

class Tempatpenanaman extends StatelessWidget {
  var height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
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
                          "Kegiatan Penanaman",
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

            Chip(label: Text('PILIH DAERAH PENANAMAN :'), avatar: Icon(Icons.forest),),


            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
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
                            builder: (context) => Penanamanbjb(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                        minimumSize: Size(width * 0.1, height * 0.25),
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

                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Penanamanbjm(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        minimumSize: Size(width * 0.1, height * 0.5),
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
