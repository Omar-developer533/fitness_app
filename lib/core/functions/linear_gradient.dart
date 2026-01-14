
  import 'package:flutter/material.dart';

LinearGradient linearGradient(Color start, Color end) {
    return LinearGradient(
      colors: [start, end],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    );
  }

