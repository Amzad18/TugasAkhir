import 'package:flutter/material.dart';
import 'package:pliswork/home.dart';

class salah2 extends StatelessWidget {
  const salah2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("SALAH, FrameWork Flutter berasal dari bahasa pemprograman DART",style: TextStyle(fontSize: 50,color: Colors.white),),
            
            SizedBox(height: 50,),
            ElevatedButton(
              
              child: Text("ulang",style: TextStyle(fontSize: 50),),
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