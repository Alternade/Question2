import 'package:basic_ui/output_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _textController =  TextEditingController();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WELCOME TO THE AGE CALCULATOR'),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(123.0),
          child: Column(

          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          
            TextFormField(
              style: TextStyle(color: Colors.white),
              controller: nameController,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.white,fontSize: 20)
                
              ),
          
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
                style: TextStyle(color: Colors.white,fontSize: 20),
                controller: _textController,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if(value!.length>2){
                    return "Enter correct age";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),

                  
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  labelText: "Age",
                  labelStyle: TextStyle(color: Colors.white,fontSize: 20)
                ),
                      
                      
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
              height: 30,
              width: 160,
              child: GestureDetector(onTap: (() {
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OutputPage(value: _textController.text, name: nameController.text)));                
              }), child:  Center(child: Container(
                height: 50,
                width: 100 ,
                color:Colors.indigo,
                child: const Center(
                  child: Text("Click Me!!!! ",style: TextStyle(
                  color: Colors.white,fontSize: 20
              ),),
                ))),
              
              
              
              ),
            ),
            
          ],
            ),
        ),
      )
    );
  }
}