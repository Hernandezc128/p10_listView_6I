import 'package:flutter/material.dart';

void main() => runApp(MyListacard());

class MyListacard extends StatefulWidget {
  const MyListacard({Key? key}) : super(key: key);

  @override
  State<MyListacard> createState() => _MyListacardState();
}

class _MyListacardState extends State<MyListacard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Listview Hernandez",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Paginainicial(),
    );
  }
}

class Paginainicial extends StatefulWidget {
  const Paginainicial({Key? key}) : super(key: key);

  @override
  State<Paginainicial> createState() => _PaginainicialState();
}

class _PaginainicialState extends State<Paginainicial> {
  List<String> images = [
    "assets/images/avatar2.png",
    "assets/images/avatar3.png",
    "assets/images/avatar4.png",
    "assets/images/avatar7.jpg",
    "assets/images/avatar5.jpg",
    "assets/images/avatar8.jpg",
    "assets/images/avatar10.jpg",
    "assets/images/avatar1.jpg",
    "assets/images/avatar9.jpg",
    "assets/images/avatar6.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Ivan Hernandez"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: Text("This is title"),
                subtitle: Text("This is subtitle"),
              ),
            );
          },
          itemCount: images.length,
          shrinkWrap: true,
          padding: EdgeInsets.all(5),
          scrollDirection: Axis.vertical,
        ));
  }
}
