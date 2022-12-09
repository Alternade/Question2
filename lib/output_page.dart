import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OutputPage extends StatefulWidget {
  var value;
  String name;
  
  
   OutputPage({super.key,required this.value,required this.name});

  @override
  State<OutputPage> createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  
  @override
  
  Widget build(BuildContext context) {
    int i = int.parse(widget.value);
    i= 100 - i;
    return Scaffold(
      
      appBar: AppBar(title: const Text('Thank You'),),

      body:Center(
        child: Container(child:Text("${widget.name} have ${i} years before you turn 100",style: TextStyle(color: Colors.white,fontSize: 20),))

      )
    );
  }
}