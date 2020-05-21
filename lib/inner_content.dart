import 'package:flutter/material.dart';

class InnerContent extends StatelessWidget {
  final List data;

  const InnerContent({
    Key key,
    @required this.tileX,
    @required this.tileY,
    this.dead,
    this.data,
  }) : super(key: key);

  final int tileX;
  final int tileY;
  final bool dead;

  bool displayble(tileX, tileY) {
    if (tileX < 0 || tileX > 10) {
      return false;
    } else if (tileY < 0 || tileY > 10) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(!displayble(tileX, tileY)
                ? 'assets/map/2_6.jpg'
                : 'assets/map/${tileX}_$tileY.jpg'),
          ),
          // color: dead == false ? Colors.lightBlue[300] : Colors.pink,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Text(
          'X: ${tileX.toString()} Y: ${tileY.toString()}',
          style: TextStyle(fontSize: 11.0),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: FutureBuilder(
//         future: DefaultAssetBundle.of(context)
//             .loadString('assets/json/map_data2.json'),
//         builder: (context, snapshot) {
//           Map<String, dynamic> myData = json.decode(snapshot.data);
//           // map json data to list
//           print(myData['position']['1_2']);
//           final jsonString = '${tileX}_$tileY';
//           print(jsonString);
//           return Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 image: AssetImage('assets/map/$jsonString.jpg'),
//               ),
//               color: dead == false ? Colors.lightBlue[300] : Colors.pink,
//               borderRadius: BorderRadius.circular(8),
//             ),
//             padding: const EdgeInsets.all(8),
//             child: Text(
//               'X: ${tileX.toString()} Y: ${tileY.toString()}',
//               style: TextStyle(fontSize: 11.0),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class PositionImage {
//   String position;
//   String coord;
//   PositionImage(this.position, this.coord);

//   PositionImage.fromJson(Map<String, dynamic> json)
//       : position = json['position'],
//         coord = json['position']['coord'];
// }
