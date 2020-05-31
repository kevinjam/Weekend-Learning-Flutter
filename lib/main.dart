import 'package:flutter/material.dart';
import 'app_screens/home.dart';

//void main() {
//  runApp(MaterialApp(
//    title: "Explore Widgets",
//    home: Scaffold(
//      appBar: AppBar(
//        title: Text("Basic List View"),
//      ),
//      body: getListView(),
//    ),
//  ));
//}

void main() {
  runApp(MaterialApp(
    title: "Explore UI Widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List View"),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("Fab Clicked Plus");
        },
        child: Icon(Icons.add),
        tooltip: "Add One More Item",
      ),
    ),
  ));
}

Widget getListViewOld() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Lanscape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone),
        title: Text("Phone"),
      ),
      Text("Yet another element in list"),
      Container(
        color: Colors.red,
        height: 50.0,
      )
    ],
  );
  return listView;
}
//Return 100 items
List<String> getListElement() {
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView() {
  var listItems = getListElement();

  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_right),
      title: Text(listItems[index]),
      onTap: (){
        debugPrint("Item Clicked $index" );
        debugPrint("${listItems[index]} was tapped" );
        showSnackBar(context, listItems);
      },
    );
  });
  return listView;
}

void showSnackBar(BuildContext context, List<String> listItems){
  var snackBar = SnackBar(
    content: Text("Items was clicked ${listItems[0]}"),
    action: SnackBarAction(label: "UNDO",
        onPressed: (){
      debugPrint("Permofiming dummy Undo");
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}
