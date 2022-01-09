import 'package:flutter/material.dart';
import 'package:sleek_button/sleek_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'biodatadiri.com',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Biodata Diri'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _nama = TextEditingController();
  final _alamat = TextEditingController();
  final _tanggal = TextEditingController();
  final _kelamin = TextEditingController();
  final _pekerjaan = TextEditingController();
  final _no = TextEditingController();
  String identitas = "Isi Data Diri Berikut";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
        TextField(
          controller: _nama,
          decoration: const InputDecoration(labelText: "Nama"),
        ),
        TextField(
          controller: _alamat,
          decoration: InputDecoration(labelText: "Alamat"),
        ),
        TextField(
          controller: _tanggal,
          decoration: InputDecoration(labelText: "Tanggal Lahir"),
        ),
        TextField(
          controller: _kelamin,
          decoration: InputDecoration(labelText: "Jenis Kelamin"),
        ),
        TextField(
          controller: _pekerjaan,
          decoration: InputDecoration(labelText: "Pekerjaan"),
        ),
        TextField(
          controller: _no,
          decoration: InputDecoration(labelText: "No.HP"),
        ),
        SleekButton( 
            onTap: () {
             setState(() {
               identitas = "Nama saya adalah " + _nama.text + "." + " Alamat saya berada di " + _alamat.text + "." + 
               " Saya lahir pada tanggal " + _tanggal.text + "." + " Saya berjenis kelamin " + _kelamin.text + "." +
               " Pekerjaan saya adalah " + _pekerjaan.text + "." + " Nomer telepon saya adalah " + _no.text + "." ;
               _nama.clear();
               _alamat.clear();
               _tanggal.clear();
               _tanggal.clear();
               _kelamin.clear();
               _pekerjaan.clear();
               _no.clear();
             });
           }, 
           child: const Text("Simpan"),
        ),
        Text(identitas)
      ],
    ));  
  }
}
