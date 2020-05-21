import 'package:flutter/material.dart';
import 'map_tile.dart';
import 'package:provider/provider.dart';
import 'map_manager.dart';

class MapBuilder extends StatelessWidget {
  const MapBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mapManager = Provider.of<MapManager>(context);
    int positionX = mapManager.positionX;
    int positionY = mapManager.positionY;
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 4,
        mainAxisSpacing: 4,
        crossAxisCount: 5,
        children: <Widget>[
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 2,
            posY: positionY + 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 1,
            posY: positionY + 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX,
            posY: positionY + 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 1,
            posY: positionY + 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 2,
            posY: positionY + 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 2,
            posY: positionY + 1,
          ),
          MapTile(
            // UP LEFT
            move: mapManager.moveUpLeft,
            posX: positionX - 1,
            posY: positionY + 1,
          ),
          MapTile(
            // UP
            move: mapManager.moveUp,
            posX: positionX,
            posY: positionY + 1,
          ),
          MapTile(
            // UP Right
            move: mapManager.moveUpRight,
            posX: positionX + 1,
            posY: positionY + 1,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 2,
            posY: positionY + 1,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 2,
            posY: positionY,
          ),
          MapTile(
            // LEFT
            move: mapManager.moveLeft,
            posX: positionX - 1,
            posY: positionY,
          ),
          CurrentTile(), // current
          MapTile(
            // Right
            move: mapManager.moveRight,
            posX: positionX + 1,
            posY: positionY,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 2,
            posY: positionY,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 2,
            posY: positionY - 1,
          ),
          MapTile(
            // DOWN LEFT
            move: mapManager.moveDownLeft,
            posX: positionX - 1,
            posY: positionY - 1,
          ),
          MapTile(
            // DOWN
            move: mapManager.moveDown,
            posX: positionX,
            posY: positionY - 1,
          ),
          MapTile(
            // DOWN RIGHT
            move: mapManager.moveDownRight,
            posX: positionX + 1,
            posY: positionY - 1,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 2,
            posY: positionY - 1,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 2,
            posY: positionY - 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX - 1,
            posY: positionY - 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX,
            posY: positionY - 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 1,
            posY: positionY - 2,
          ),
          MapTile(
            // DEAD
            move: null,
            posX: positionX + 2,
            posY: positionY - 2,
          ),
        ],
      ),
    );
  }
}
