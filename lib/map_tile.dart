import 'package:flutter/material.dart';
import 'package:fuckwar/map_manager.dart';
import 'package:provider/provider.dart';
import 'inner_content.dart';

class CurrentTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mapManager = Provider.of<MapManager>(context);
    return GestureDetector(
      onTap: () {
        print('object');
      },
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: Text(
              'X: ${mapManager.positionX.toString()} Y: ${mapManager.positionY.toString()}',
              style: TextStyle(fontSize: 10.0),
            ),
          ),
          Container(
            child: Icon(Icons.blur_on, size: 40.0),
          ),
        ],
      ),
    );
  }
}

class MapTile extends StatelessWidget {
  MapTile({@required this.move, @required this.posX, @required this.posY});
  final Function move;
  final int posX;
  final int posY;

  @override
  Widget build(BuildContext context) {
    final bool dead = move == null ? true : false;

    return GestureDetector(
      onTap: () {
        dead == true ? print('fail') : move();
        print('move');
      },
      child: InnerContent(
        tileX: posX,
        tileY: posY,
        dead: dead,
      ),
    );
  }
}

// class DeadTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         // image: DecorationImage(
//         //   fit: BoxFit.cover,
//         //   image: AssetImage('assets/map/15.jpg'),
//         // ),
//         color: Colors.teal[100],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       padding: const EdgeInsets.all(8),
//       child: Text(
//         'X: $posX Y: $posY',
//         style: TextStyle(fontSize: 10.0),
//       ),
//     );
//   }
// }
