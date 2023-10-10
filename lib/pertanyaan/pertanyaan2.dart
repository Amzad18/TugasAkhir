import 'package:flutter/material.dart';

import '../salah/salah2.dart';
import '../selesai.dart';


class pertanyaan2 extends StatelessWidget {
  const pertanyaan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              const Text("Framework Flutter dari bahasa pemprograman apa?",style: TextStyle(fontSize: 17,color: Colors.white),),
              SizedBox(height: 50,),
              Image.network("https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png",width: 300,),
              
              SizedBox(height: 50,),
              
              ElevatedButton(
                child: Text("DART"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => selesai()
            
                  ));
                  
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: 180,left: 180)
                ),
              ),

               ElevatedButton(
                
                child: Text("Java Script"),
                
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AlertDialog(
                    title: Text("SALAH"),
                    
                    actions: <Widget>[

                      
                      TextButton(
                        
                        child: Text("Alasan"),
                        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => salah2()))
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
                  padding: EdgeInsets.only(top: 10,bottom: 10,right: 162,left: 162)
                ),
              )

              
              
            ],
          ),
        ),
      ),
    );
  }
}