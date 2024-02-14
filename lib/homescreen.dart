import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
 
  List<Widget>scorekeeper=[
                  

                ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(
                child: Center(
                  child: Text("SOME CATS ARE ACTUALLY ALERGIC TO HUMAN",textAlign: TextAlign.center,style: TextStyle(fontSize: 25,color: Colors.white),),
                ),
              ),),
              MaterialButton(onPressed: (){
             scorekeeper.add(Icon(Icons.check,color: Colors.green,));
             setState(() {
               
             });
              },
              height: 70,
              minWidth: double.infinity,
              color: Color(0xff4CAF50),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text("TRUE",style: TextStyle(fontSize: 28,color: Colors.white),),
              ),      
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(onPressed: (){
                scorekeeper.add(Icon(Icons.close,color: Colors.red,));
                setState(() {
                  
                });
              },
              height: 70,
              minWidth: double.infinity,
              color: Color(0xfff44336),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text("FALSE",style: TextStyle(fontSize: 28,color: Colors.white),),
              ),      
              ),
              Row(
                children: scorekeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}