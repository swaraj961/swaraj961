  
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String tittle;
  PageTwo(this.tittle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar( title: new Text("Page Two Content"),
      elevation: debugDefaultTargetPlatformOverride==TargetPlatform.android? 5.0: 0.0,
       centerTitle: true,)
       ,
       
      body: new Column(
        children: <Widget>[
         Container(
        width:double.infinity ,
        height: 300,
        color: Colors.pink,
        margin: EdgeInsets.all(20) ,
        padding: EdgeInsets.all(20),
       child: new Image.asset("assets/satisfaction.png",fit:BoxFit.contain)
    
         // child: new Text("Container 1",style: TextStyle(color: Colors.white),)
        
      ),
      new RaisedButton.icon(
icon: Icon(Icons.search,color:Colors.green),
label: new Text("Check your Mood"),
 onPressed: () {
   
 },
),
Container(
  width: double.infinity,
  height: 300,
  color: Colors.purple,
  margin:EdgeInsets.all(20) ,
  padding: EdgeInsets.all(20),
  
child: new Image.asset("assets/testimonials.png",fit:BoxFit.contain,),

//child:Text("container 2 ",style: TextStyle(color: Colors.white),) 
    
),
new RaisedButton.icon(
icon: Icon(Icons.search,color:Colors.green),
label: new Text("Contact Us"),
 onPressed: () {
   
 },
)
 
  
        ],
      ),

    );  
  }
}
  