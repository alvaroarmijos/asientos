  
  
import 'package:flutter/material.dart';

class AsientoWidget extends StatelessWidget {
  final Color color;

  const AsientoWidget({this.color});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
        width: 30,
        height: 30,
        
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
      ),
        )
    );
  }
}