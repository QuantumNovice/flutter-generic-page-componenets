import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';




class EntryComponent extends StatefulWidget {
  const EntryComponent({Key? key}) : super(key: key);

  @override
  State<EntryComponent> createState() => _EntryComponentState();
}

class _EntryComponentState extends State<EntryComponent> {

  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myController.addListener(_printLatestValue);
    myController2.addListener(_printLatestValue);
  }
  
  @override
  void dispose(){
    myController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
    setState(() {
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 1, 44),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [ 
              const Text(
                'Input Value',
                style:TextStyle(fontSize: 25),
              ),

              TextField(
                controller: myController,
                textAlign: TextAlign.center
              ),

              TextField(
                controller: myController2,
                textAlign: TextAlign.center
              ),

              TextField(
                controller: myController,
                textAlign: TextAlign.center
              ),

              const SizedBox(
                height: 10,
              ),
              Text(
                "Output Input: ${myController.text} ${myController2.text}",
                style:TextStyle(fontSize: 25),
                ),

          ]
        ),
        ),
    ));
  }
}
