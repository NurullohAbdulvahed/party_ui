import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static final String id = "";
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text("Find the best parties near you",textAlign: TextAlign.start,style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 30),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Text("Let us find you a tutorial for your interest",style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end ,
                    children: [
                      Container(
                        child: MaterialButton(
                          onPressed: (){},
                          minWidth: 150,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text("Google",style: TextStyle(color: Colors.white,),),
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        child: MaterialButton(
                          onPressed: (){},
                          minWidth: 150,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text("Facebook",style: TextStyle(color: Colors.white,),),
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/im_party.jpeg")
            )
        ),
      ),
    );
  }
}
