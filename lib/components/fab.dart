import 'package:flutter/material.dart';

SizedBox floatingActionButton(IconData icon) {
  return SizedBox(
    height: 68,
    width: 68,
    child: FloatingActionButton(
      onPressed: () {},
      child: Icon(
        icon,
        size: 28,
      ),
    ),
  );
}
