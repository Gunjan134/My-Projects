import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as vm;
import 'dart:math' as math;

class ClockTimeUtil {
  static String getTimeAtCoordinatesOnCircle(Offset coords, Offset center) {
    double hrVal = detectAngleInDegreesAtCircleCoordinates(
            center.dx, center.dy, coords.dx, coords.dy) /
        30;
    double minVal = convertAngleToMinutes(
        detectAngleInDegreesAtCircleCoordinates(
            center.dx, center.dy, coords.dx, coords.dy));
    hrVal = hrVal >= 9 ? (hrVal - 9) : (hrVal + 3);
    hrVal = hrVal < 0.5 ? 12.0 : hrVal;
    int timeValRounded = (hrVal + minVal / 60).round().toInt();
     String timeValStr = timeValRounded <= 9
            ? "0" + timeValRounded.toString()
            : timeValRounded.toString();
    return timeValStr;
  }

  static Offset getCoordinatesAtTimeOnCircle(
      double timeVal, Offset center, double radius) {
    //get coordinates after every 30deg on the circle
    double angleVal = 0.0, x = 0.0, y = 0.0;
    //adjust the angles to match the hour values on dial (1-30,2-60,3-90,....12-360)
    angleVal = timeVal <= 3 ? 30.0 * (9 + timeVal) : 30.0 * (timeVal - 3);
    //get the coordinates on the circle for the angle @ i
    x = center.dx + math.cos(vm.degrees2Radians * angleVal) * radius;
    y = center.dy + math.sin(vm.degrees2Radians * angleVal) * radius;
    return Offset(x, y);
  }

  static double detectAngleInDegreesAtCircleCoordinates(
      double centerX, double centerY, double x, double y) {
    double angle = vm.radians2Degrees * (math.atan2(centerY - y, x - centerX));
    //adjust default angle to map to clock time (from 1 @ 30deg to 12 @ 360 deg)
    angle = (y < 150) ? -angle.abs().toDouble() + 360 : angle.abs().toDouble();
    return angle.abs().toDouble();
  }

  //derive the minutes using the angle on the point of a circle in current state
  static double convertAngleToMinutes(double angle) {
    double time = 0.0;
    double decimalValue = 3.0 - (1.0 / 30.0) * (-angle % 360);
    decimalValue =
        decimalValue > 12 ? 3.0 - (1.0 / 30.0) * (angle % 360) : decimalValue;
    if (decimalValue < 0) decimalValue += 12.0;
    double minutes = ((decimalValue * 60) % 60);
    minutes = (minutes.round() == 60.0) ? 59.0 : minutes;
    return time;
  }
}
