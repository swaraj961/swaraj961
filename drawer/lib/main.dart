import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:drawer/new_page.dart';
import 'package:drawer/page_two.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        splashColor: Colors.cyan.shade400
      ),
      home: new HomePage(),
      
    );
    
      //lastest code
    
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( title: new Text("Home Page"),
    
      elevation: debugDefaultTargetPlatformOverride==TargetPlatform.android? 5.0: 0.0,
       centerTitle: true,),
       
       drawer: new Drawer(
         child: ListView(
           children: <Widget>[
             new  UserAccountsDrawerHeader(
               accountName: new Text("Swaraj Routray",style: TextStyle(color: Colors.black87),),
               accountEmail: new Text("swarajroutray961@gmail.com"),
               currentAccountPicture: new CircleAvatar( backgroundColor: Colors.redAccent,
           child:new Text("S",style: TextStyle(color: Colors.white),),
               ),
               
               otherAccountsPictures: <Widget>[
                 new CircleAvatar(
            backgroundColor:Colors.green,
            child: new Text("K"),
                 )
               ],
             ),
        
new ListTile(
        
          title: new Text("Page One "),
          trailing: new Icon(Icons.arrow_forward_ios),
          onTap:(){
           // Navigator.of(context).pushNamed("\a");
        Navigator.of(context).push(new MaterialPageRoute(builder:(context) => new NewPage("Page one"))); 
          },
        ),
        
       new Divider(),
        new ListTile(
          title: new Text("Page two"),
          trailing: new Icon(Icons.arrow_forward_ios) ,
          onTap: (){
            Navigator.of(context).push(new MaterialPageRoute(builder: (context)=> new  PageTwo("Page Two")));
          },
        ),
        Divider(),
        new ListTile(
      title: new Text("close"),
      trailing:  new Icon(Icons.close),
      onTap:(){
        Navigator.pop(context);
      }, 
    ),
      ],
    ),
       ),
    );
         
  }
}


