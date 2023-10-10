import 'package:flutter/material.dart';
import 'package:pliswork/home.dart';

class selesai extends StatelessWidget {
  const selesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Selamat anda telah menyelesaikan 2 soal YEYHH",style: TextStyle(fontSize: 40,color: Colors.white),),
            
            SizedBox(height: 50,),
            ElevatedButton(
              
              child: Text("Kembali ke Home",style: TextStyle(fontSize: 30,),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return home();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}