import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const MaterialApp(home: ColourPositionedTiles()));

class ColourPositionedTiles extends StatefulWidget{
  const ColourPositionedTiles({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<ColourPositionedTiles>{
  late List<Widget> tiles;

  @override
  void initState(){
    super.initState();
    tiles = [
      StatelessColorfulTile(),
      StatelessColorfulTile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colour Replace"),
        backgroundColor: Colors.blue,
      ) ,
      body: SafeArea(child: Row(children: tiles)),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.color_lens_sharp), onPressed: swapTiles),
    );
  }

  swapTiles(){
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}

class StatelessColorfulTile extends StatelessWidget {
  Color myColor = UniqueColorGenerator.getColor();
  @override
  Widget build(BuildContext context) {
    return Container(
        color: myColor, child: const Padding(padding: EdgeInsets.all(70.0)));
  }
}

//this code snippet tells you how UniqueColorGenerator works
class UniqueColorGenerator {
  static List colorOptions = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
    Colors.amber,
    Colors.black,
  ];
  static Random random = new Random();
  static Color getColor() {
    if (colorOptions.length > 0) {
      return colorOptions.removeAt(random.nextInt(colorOptions.length));
    } else {
      return Color.fromARGB(random.nextInt(256), random.nextInt(256),
          random.nextInt(256), random.nextInt(256));
    }
  }
}