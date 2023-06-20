import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameController;
  late TextEditingController fatherNameController;
  FocusNode nameFocusNode=FocusNode();
  FocusNode fNameFocusNode=FocusNode();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    fatherNameController = TextEditingController();
  }
String name="name";
String fathername="fathername";
String onChangeFatherController='';
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: nameController,
                  onEditingComplete: () => fNameFocusNode.requestFocus(),
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                  autofocus: true,
                  focusNode: nameFocusNode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      onChangeFatherController=value;
                    });
                  },
                  controller: fatherNameController,
                  decoration: const InputDecoration(
                    labelText: 'father name',
                  ),
                  focusNode: fNameFocusNode,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  onPressed: () {
                     name=nameController.text;
                     fathername=fatherNameController.text;
                    setState(() {
                      
                    });
                  },
                  child: const Text("Fetch Name"),
                ),
              ),
              Text(onChangeFatherController.toString(),),
              Text(fathername),
             
              

              // The Form widget can be used in combination
              //with other form-related widgets,
              //such as TextFormField0, Radio, Checkbox, and more.
              //When used in combination with these widgets,
              // the Form widget can validate the form data,
              //display error messages, and automatically
              //save the form data as the user fills it in.
            ],
          ),
        ),
      ),
    );
  }
}
