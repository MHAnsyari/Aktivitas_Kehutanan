import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apk_dinaskehutanan/penanaman/tempatPenanaman.dart';
import 'package:apk_dinaskehutanan/posko/tempatPosko.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
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
                      top: 20,
                      left: 15,
                      right: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.forest_sharp,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/admin.jpg"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 0,
                      left: 15,
                      right: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Kegiatan Kehutanan",
                          style: GoogleFonts.acme(
                            fontSize: 28,
                            letterSpacing: 5,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "#aplikasi kegiatan penanaman dan penjagaan hutan oleh dinas kehutanan#",
                          style: GoogleFonts.acme(
                            fontSize: 8,
                            letterSpacing: 1,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 150,
              child: Image.asset('assets/logodinaskehutanan.png'),
              ), 


            SizedBox(
              height:30,
              // width: width,
              //child: Image.asset('assets/rumput.png'),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 86, 54, 41),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
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
                            builder: (context) => Tempatpenanaman(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        minimumSize: Size(width * 0.1, height * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      icon: Image.asset(
                        "assets/penanaman.png",
                        width: 100,
                        height: 200,
                      ),
                      label: Text(
                        "",
                        style: GoogleFonts.acme(fontSize: 20,color: Colors.brown[900]),
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tempatposko(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        minimumSize: Size(width * 0.1, height * 0.1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      icon: Image.asset(
                        "assets/penjagaan.png",
                        width: 100,
                        height: 200,
                      ),
                      label: Text(
                        "",
                        style: GoogleFonts.acme(fontSize: 20,color: Colors.brown[900]),
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
