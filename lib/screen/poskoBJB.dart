import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Poskobjb(),
    );
  }
}

class Poskobjb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 98, 122, 255),
          title: Center(child: Text('POSKO PENJAGAAN BANJARBARU',style: GoogleFonts.acme(color: Colors.white,  ),)),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.house_outlined), text: 'Selatan'),
              Tab(icon: Icon(Icons.house_outlined), text: 'Utara'),
              Tab(icon: Icon(Icons.house_outlined), text: 'Cempaka'),
              Tab(icon: Icon(Icons.house_outlined), text: 'Landasan Ulin'),
              Tab(icon: Icon(Icons.house_outlined), text: 'Liang Anggang'),

            ],
          ),
        ),
        body: TabBarView(
          children: [
            Selatan(),
            Utara(),
            Cempaka(),
            LandasanUlin(),
            LiangAnggang(),

          ],
        ),
      ),
    );
  }
}

class Selatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/petabjm.png',
            width: 500,
            height: 300,
          ),
          SizedBox(height: 20), // Menambahkan ruang antara gambar dan tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),

                child: Row(
                  children: [
                    Icon(Icons.remove), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Posko'),

                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),
                child: Row(
                  children: [
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Tambah Posko'),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}


class Utara extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/petabjm.png',
            width: 500,
            height: 300,
          ),
          SizedBox(height: 20), // Menambahkan ruang antara gambar dan tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),

                child: Row(
                  children: [
                    Icon(Icons.remove), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Posko'),

                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),
                child: Row(
                  children: [
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Tambah Posko'),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}


class Cempaka extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/petabjm.png',
            width: 500,
            height: 300,
          ),
          SizedBox(height: 20), // Menambahkan ruang antara gambar dan tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),

                child: Row(
                  children: [
                    Icon(Icons.remove), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Posko'),

                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),
                child: Row(
                  children: [
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Tambah Posko'),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}


class LandasanUlin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/petabjm.png',
            width: 500,
            height: 300,
          ),
          SizedBox(height: 20), // Menambahkan ruang antara gambar dan tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),

                child: Row(
                  children: [
                    Icon(Icons.remove), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Posko'),

                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),
                child: Row(
                  children: [
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Tambah Posko'),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}


class LiangAnggang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/petabjm.png',
            width: 500,
            height: 300,
          ),
          SizedBox(height: 20), // Menambahkan ruang antara gambar dan tombol
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),

                child: Row(
                  children: [
                    Icon(Icons.remove), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Posko'),

                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Warna teks dan ikon
                ),
                child: Row(
                  children: [
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Tambah Posko'),

                  ],
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}