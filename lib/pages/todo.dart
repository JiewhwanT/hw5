import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
var todo=[
  "ทำการบ้านครั้งที่4 วิชา Mobile App Dev",
  "ทำการบ้านครั้งที่5 วิชา Mobile App Dev",
  "ทำโปรเจควิชา Mobile App Dev"
];


class todopage extends StatefulWidget {
  const todopage({Key? key}) : super(key: key);

  @override
  State<todopage> createState() => _todopageState();
}

class _todopageState extends State<todopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("My ToDo")),
      body: ListView.builder(itemBuilder: (context,i){
        String td = todo[i];
        return Card(
            child:Padding(
              padding:const EdgeInsets.all(8.0),
              child :Text(td,style: TextStyle(fontSize: 20.0)),
            )
        );
      },
          itemCount: todo.length),
    );
  }
}