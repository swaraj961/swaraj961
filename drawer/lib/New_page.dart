import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  final String tittle;
  NewPage(this.tittle);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar( title: new Text("Page One Content"),
      elevation: debugDefaultTargetPlatformOverride==TargetPlatform.android? 5.0: 0.0,
       centerTitle: true,)
       ,
       
      body: new Column(
        children: <Widget>[
         Container(
        width:double.infinity ,
        height: 300,
        color: Colors.red,
        margin: EdgeInsets.all(20) ,
        padding: EdgeInsets.all(20),
       child: new Image.asset("assets/feedback.png",fit:BoxFit.contain)
    
         //child: new Text("Container 1",style: TextStyle(color: Colors.white),)
        
      ),
      new RaisedButton.icon(
icon: Icon(Icons.people,color:Colors.green),
label: new Text("Connect People"),
 onPressed: () {
   
 },
),
Container(
  width: double.infinity,
  height: 300,
  color: Colors.green,
  margin:EdgeInsets.all(20) ,
  padding: EdgeInsets.all(20),
  
child: new Image.asset("assets/evaluation.png",fit:BoxFit.contain,)
  
//child:Text("container 2 ",style: TextStyle(color: Colors.white),) 
    
),
new RaisedButton.icon(
icon: Icon(Icons.search,color:Colors.green),
label: new Text("Make Search"),
 onPressed: () {
   
 },
)
        ],
      ),
      
      );
 
  }
}