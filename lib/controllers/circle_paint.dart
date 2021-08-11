
import 'package:checkbox/widgets/single_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CirclePaint extends CustomPainter{
  final Color? color;
  late final Animation<double> _size;
  late final Animation<double> _sizeCheck;

  CirclePaint(Animation<double> animation, this.color)
      :_size = Tween<double>(begin: 8, end: 0).animate(animation),
       _sizeCheck = Tween<double>(begin: 8, end: 0).animate(animation),
        super(repaint: animation);






  @override
  void paint(Canvas canvas, Size size) {
    var circle = Paint()
      ..color = color!
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    var filledCircle = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..isAntiAlias = false;

    double circleX = size.width/2;
    double circleY = size.height/2;
    canvas.drawCircle(Offset(circleX, circleY), 10, circle);
    canvas.drawCircle(Offset(circleX, circleY), _size.value, filledCircle,);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}

