import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class GenderTileWidget extends StatelessWidget {
  final bool isMale;
  final String text;
  final IconData icon;
  final Function onTapTile;
  const GenderTileWidget({
    Key? key,
    required this.isMale,
    required this.onTapTile,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapTile(),
      child: Container(
        decoration: isMale
            ? kSilectedTileBorderDecoration
            : kTileBorderDecoration,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, size: 50, color: kActiveTextColor),
            Text(
              text,
              style: const TextStyle(fontSize: 24, color: kActiveTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
