import 'package:flutter/material.dart';
import 'loginpage.dart';

//menjalankan flutter
void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // warna background
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFF1A3464)),
      //menghapus banner debug
      debugShowCheckedModeBanner: false,
      //menampilkan loginpage
      home: loginpage()
    );
  }
}