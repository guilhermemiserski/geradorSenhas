import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> listaRandom = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: Center(child: _buildListView()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: _addList,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  _buildListView() {
    return ListView.builder(
        itemCount: listaRandom.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(listaRandom[index]),
          );
        });
  }

  _addList() {
    setState(() {
      listaRandom.add(randomString(10));
    });
    print(listaRandom);
  }
}
