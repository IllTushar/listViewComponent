import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> list = ["Tushar", "amana", "Rohit","Tjajskc","bjckdbs"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("The List tutorial"),
        elevation: 2.0,
      ),
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return Text(
      //       list[index],
      //       style: TextStyle(fontSize: 20.0),
      //     );
      //   },
      //   itemCount: list.length,
      // ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              list[index],
              style: TextStyle(fontSize: 20.0),
            ),
          );
        },

        itemCount: list.length,
        reverse: true,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 4,thickness: 2,);
        },
      ),
    );
  }
}
