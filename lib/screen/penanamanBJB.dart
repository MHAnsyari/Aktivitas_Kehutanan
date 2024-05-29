import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Penanamanbjb(),
    );
  }
}

class Penanamanbjb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('PENANAMAN BANJARBARU',style: GoogleFonts.acme(color: Colors.white,  ),)),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.forest_outlined), text: 'Selatan'),
              Tab(icon: Icon(Icons.forest_sharp), text: 'Utara'),
              Tab(icon: Icon(Icons.forest_rounded), text: 'Cempaka'),
              Tab(icon: Icon(Icons.forest), text: 'Landasan Ulin'),
              Tab(icon: Icon(Icons.forest_outlined), text: 'Liang Anggang'),

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
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Pohon'),

                  ],
                ),
              ),

      ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final _formKey = GlobalKey<FormState>();
            final TextEditingController jumlahPohonController = TextEditingController();
            final TextEditingController luasDaerahController = TextEditingController();
            String pesan = '';

            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return AlertDialog(
                  title: Text('Input Data Penanaman'),
                  content: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: jumlahPohonController,
                          decoration: InputDecoration(labelText: 'Jumlah Pohon'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan jumlah pohon';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: luasDaerahController,
                          decoration: InputDecoration(labelText: 'Luas Daerah Penanaman (m²)'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan luas daerah penanaman';
                            }
                            return null;
                          },
                        ),
                        if (pesan.isNotEmpty) ...[
                          SizedBox(height: 10),
                          Text(
                            pesan,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final int jumlahPohon = int.parse(jumlahPohonController.text);
                          final double luasDaerah = double.parse(luasDaerahController.text);

                          // Rasio lahan per pohon adalah 5:6 meter persegi
                          final double luasPerPohon = 5.0 / 6.0;
                          final double luasDibutuhkan = jumlahPohon * luasPerPohon;

                          setState(() {
                            if (luasDaerah >= luasDibutuhkan) {
                              double sisaLuas = luasDaerah - luasDibutuhkan;
                              int pohonTambahan = (sisaLuas / luasPerPohon).floor();
                              pesan = 'Lahan cukup untuk menanam $jumlahPohon pohon. Masih ada ruang untuk $pohonTambahan pohon lagi.';
                            } else {
                              pesan = 'Lahan tidak cukup. Diperlukan ${luasDibutuhkan.toStringAsFixed(2)} m² untuk $jumlahPohon pohon.';
                            }
                          });
                        }
                      },
                      child: Text('Simpan'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 5),
          Text('Tanam Pohon'),
        ],
      ),
    )

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
        mainAxisAlignment: MainAxisAlignment.start,
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
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Pohon'),

                  ],
                ),
              ),

      ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final _formKey = GlobalKey<FormState>();
            final TextEditingController jumlahPohonController = TextEditingController();
            final TextEditingController luasDaerahController = TextEditingController();
            String pesan = '';

            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return AlertDialog(
                  title: Text('Input Data Penanaman'),
                  content: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: jumlahPohonController,
                          decoration: InputDecoration(labelText: 'Jumlah Pohon'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan jumlah pohon';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: luasDaerahController,
                          decoration: InputDecoration(labelText: 'Luas Daerah Penanaman (m²)'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan luas daerah penanaman';
                            }
                            return null;
                          },
                        ),
                        if (pesan.isNotEmpty) ...[
                          SizedBox(height: 10),
                          Text(
                            pesan,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final int jumlahPohon = int.parse(jumlahPohonController.text);
                          final double luasDaerah = double.parse(luasDaerahController.text);

                          // Rasio lahan per pohon adalah 5:6 meter persegi
                          final double luasPerPohon = 5.0 / 6.0;
                          final double luasDibutuhkan = jumlahPohon * luasPerPohon;

                          setState(() {
                            if (luasDaerah >= luasDibutuhkan) {
                              double sisaLuas = luasDaerah - luasDibutuhkan;
                              int pohonTambahan = (sisaLuas / luasPerPohon).floor();
                              pesan = 'Lahan cukup untuk menanam $jumlahPohon pohon. Masih ada ruang untuk $pohonTambahan pohon lagi.';
                            } else {
                              pesan = 'Lahan tidak cukup. Diperlukan ${luasDibutuhkan.toStringAsFixed(2)} m² untuk $jumlahPohon pohon.';
                            }
                          });
                        }
                      },
                      child: Text('Simpan'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 5),
          Text('Tanam Pohon'),
        ],
      ),
    )

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
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Pohon'),

                  ],
                ),
              ),

      ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final _formKey = GlobalKey<FormState>();
            final TextEditingController jumlahPohonController = TextEditingController();
            final TextEditingController luasDaerahController = TextEditingController();
            String pesan = '';

            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return AlertDialog(
                  title: Text('Input Data Penanaman'),
                  content: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: jumlahPohonController,
                          decoration: InputDecoration(labelText: 'Jumlah Pohon'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan jumlah pohon';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: luasDaerahController,
                          decoration: InputDecoration(labelText: 'Luas Daerah Penanaman (m²)'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan luas daerah penanaman';
                            }
                            return null;
                          },
                        ),
                        if (pesan.isNotEmpty) ...[
                          SizedBox(height: 10),
                          Text(
                            pesan,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final int jumlahPohon = int.parse(jumlahPohonController.text);
                          final double luasDaerah = double.parse(luasDaerahController.text);

                          // Rasio lahan per pohon adalah 5:6 meter persegi
                          final double luasPerPohon = 5.0 / 6.0;
                          final double luasDibutuhkan = jumlahPohon * luasPerPohon;

                          setState(() {
                            if (luasDaerah >= luasDibutuhkan) {
                              double sisaLuas = luasDaerah - luasDibutuhkan;
                              int pohonTambahan = (sisaLuas / luasPerPohon).floor();
                              pesan = 'Lahan cukup untuk menanam $jumlahPohon pohon. Masih ada ruang untuk $pohonTambahan pohon lagi.';
                            } else {
                              pesan = 'Lahan tidak cukup. Diperlukan ${luasDibutuhkan.toStringAsFixed(2)} m² untuk $jumlahPohon pohon.';
                            }
                          });
                        }
                      },
                      child: Text('Simpan'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 5),
          Text('Tanam Pohon'),
        ],
      ),
    )

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
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Pohon'),

                  ],
                ),
              ),

      ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final _formKey = GlobalKey<FormState>();
            final TextEditingController jumlahPohonController = TextEditingController();
            final TextEditingController luasDaerahController = TextEditingController();
            String pesan = '';

            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return AlertDialog(
                  title: Text('Input Data Penanaman'),
                  content: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: jumlahPohonController,
                          decoration: InputDecoration(labelText: 'Jumlah Pohon'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan jumlah pohon';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: luasDaerahController,
                          decoration: InputDecoration(labelText: 'Luas Daerah Penanaman (m²)'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan luas daerah penanaman';
                            }
                            return null;
                          },
                        ),
                        if (pesan.isNotEmpty) ...[
                          SizedBox(height: 10),
                          Text(
                            pesan,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final int jumlahPohon = int.parse(jumlahPohonController.text);
                          final double luasDaerah = double.parse(luasDaerahController.text);

                          // Rasio lahan per pohon adalah 5:6 meter persegi
                          final double luasPerPohon = 5.0 / 6.0;
                          final double luasDibutuhkan = jumlahPohon * luasPerPohon;

                          setState(() {
                            if (luasDaerah >= luasDibutuhkan) {
                              double sisaLuas = luasDaerah - luasDibutuhkan;
                              int pohonTambahan = (sisaLuas / luasPerPohon).floor();
                              pesan = 'Lahan cukup untuk menanam $jumlahPohon pohon. Masih ada ruang untuk $pohonTambahan pohon lagi.';
                            } else {
                              pesan = 'Lahan tidak cukup. Diperlukan ${luasDibutuhkan.toStringAsFixed(2)} m² untuk $jumlahPohon pohon.';
                            }
                          });
                        }
                      },
                      child: Text('Simpan'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 5),
          Text('Tanam Pohon'),
        ],
      ),
    )

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
                    Icon(Icons.add), // Ikon di sebelah kiri teks
                    SizedBox(width: 5), // Ruang antara ikon dan teks
                    Text('Hapus Pohon'),

                  ],
                ),
              ),

      ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            final _formKey = GlobalKey<FormState>();
            final TextEditingController jumlahPohonController = TextEditingController();
            final TextEditingController luasDaerahController = TextEditingController();
            String pesan = '';

            return StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
                return AlertDialog(
                  title: Text('Input Data Penanaman'),
                  content: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: jumlahPohonController,
                          decoration: InputDecoration(labelText: 'Jumlah Pohon'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan jumlah pohon';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: luasDaerahController,
                          decoration: InputDecoration(labelText: 'Luas Daerah Penanaman (m²)'),
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Mohon masukkan luas daerah penanaman';
                            }
                            return null;
                          },
                        ),
                        if (pesan.isNotEmpty) ...[
                          SizedBox(height: 10),
                          Text(
                            pesan,
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Batal'),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          final int jumlahPohon = int.parse(jumlahPohonController.text);
                          final double luasDaerah = double.parse(luasDaerahController.text);

                          // Rasio lahan per pohon adalah 5:6 meter persegi
                          final double luasPerPohon = 5.0 / 6.0;
                          final double luasDibutuhkan = jumlahPohon * luasPerPohon;

                          setState(() {
                            if (luasDaerah >= luasDibutuhkan) {
                              double sisaLuas = luasDaerah - luasDibutuhkan;
                              int pohonTambahan = (sisaLuas / luasPerPohon).floor();
                              pesan = 'Lahan cukup untuk menanam $jumlahPohon pohon. Masih ada ruang untuk $pohonTambahan pohon lagi.';
                            } else {
                              pesan = 'Lahan tidak cukup. Diperlukan ${luasDibutuhkan.toStringAsFixed(2)} m² untuk $jumlahPohon pohon.';
                            }
                          });
                        }
                      },
                      child: Text('Simpan'),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.lightGreen),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 5),
          Text('Tanam Pohon'),
        ],
      ),
    )

            ],
          ),
        ],
      ),
    );
  }
}