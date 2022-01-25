import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:party_ui/pages/second_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "";
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(SecondPage.id);
                          },
                          minWidth: double.infinity,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          child: Text("Start",style: TextStyle(color: Colors.white,),),
                          color: Colors.orange,
                        ),
                      )
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
