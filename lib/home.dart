import 'package:flutter/material.dart';

import 'pertanyaan/pertanyaan2.dart';
import 'salah/salah.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1A3464),
        automaticallyImplyLeading: false,
        title: Text("QUIZ"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              
              const SizedBox(height: 50,),
              const Text("Apakah CSS Bahasa Pemprograman?",style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 50,),
              Image.network("https://badoystudio.com/wp-content/uploads/2022/04/apa-itu-css.png",width: 300,),
              
              SizedBox(height: 50,),
              
              ElevatedButton(
                child: Text("Ya"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AlertDialog(
                    title: Text("SALAH"),
                    
                    actions: <Widget>[

                      TextButton(
                        
                        child: Text("Alasan"),
                        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => salah()))
                      ),

                      TextButton(
                        
                        child: Text("Lanjut"),
                        onPressed: () => Navigator.pop(context, 'Lanjut'),
                      )
                    ],
                  )
                    
                  
                  ));
                  
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: 180,left: 180)
                ),
              ),

               ElevatedButton(
                
                child: Text("Tidak"),
                
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                  return pertanyaan2();
                  
                }
                
                ));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: 170,left: 170)
                ),
              )
              
              
            ],
          ),
        ),
      ),
    );
  }
}