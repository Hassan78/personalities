import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          title: Text("Ninja Id",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color:Colors.amber
          ))
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FloatingActionButton( 
               onPressed: (){
                 setState(() {
                   ninjaLevel -= 1;
                   ninjaLevel = ninjaLevel <= 0? 0: ninjaLevel;
                 });

               },
               backgroundColor: Colors.grey,
               child: Icon(Icons.remove, color:Colors.grey[900])
              ),
              SizedBox(width: 10.0,),
              FloatingActionButton( 
               onPressed: (){
                 setState(() {
                   ninjaLevel += 1;
                 });

               },
               backgroundColor: Colors.grey,
               child: Icon(Icons.add, color:Colors.grey[900])
              ),
              
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    child: Image.asset("assets/images/thumb.jpg"),
                    radius: 100,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.orangeAccent
                ),
                Text("NAME",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white70
                ),
                ),
                SizedBox(height:10.0),
                Text("Hassan Ali",
                style: TextStyle( 
                  fontSize:30.0,
                  color:Colors.redAccent,
                  
                ),
                ),
                SizedBox(height:30.0),
                Text("Ninja Level:",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white70
                ),
                ),
                SizedBox(height:10.0),
                Text("$ninjaLevel",
                style: TextStyle( 
                  fontSize:30.0,
                  color:Colors.blueAccent,
                  
                ),
                ),
               SizedBox(height:30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color:Colors.grey
                    ),
                    SizedBox(width:10.0),
                    Text(
                      "hassan.ali@g.austincc.edu",
                      style:TextStyle(
                        color: Colors.white70,
                        letterSpacing: 2.0,
                      )
                    )
                  ],
                )
              ],
            ),
          )

      )
    ); 
    
  }
}