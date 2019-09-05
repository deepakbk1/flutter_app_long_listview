import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() =>
    runApp(

        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'UI widgets',
          home: Scaffold(
            appBar: AppBar(
              title: Text("Long List View"),),
            body: getListView(),
          ),
        )
    );

List<String> getListElements() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElements();
  var listView = ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            Fluttertoast.showToast(msg: listItems[index],
            toastLength: Toast.LENGTH_SHORT,
            );
          },
        );
      }
  );
  return listView;
}



