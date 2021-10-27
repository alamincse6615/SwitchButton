import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Switch Button'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
   bool switch_bool = false;
   bool abc = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: abc==false?Colors.green:Colors.red,
      appBar: AppBar(
        title: Center(child: Text(widget.title,)),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
                value: abc,
                onChanged: (val){
                  setState(() {
                    abc = val;
                    print(val);
                  });

                }
            ),
            Text(abc==false? "Switch is off" : "Switch is on",style: TextStyle(fontSize: 35,color: Colors.white),)
          ],
        ),

      ),
    );
  }
}
