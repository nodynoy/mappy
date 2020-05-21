import 'package:flutter/material.dart';

class MapManager with ChangeNotifier {
  int _positionX;
  int _positionY;

  MapManager() {
    _positionX = 5;
    _positionY = 5;
  }

  // GETTERS

  int get positionX => _positionX;
  int get positionY => _positionY;

// SETTERS
  void setPositionX() {
    _positionX = positionX;
    notifyListeners();
  }

  void moveUp() {
    _positionY++;
    notifyListeners();
  }

  void moveUpRight() {
    _positionX++;
    _positionY++;
    notifyListeners();
  }

  void moveRight() {
    _positionX++;
    notifyListeners();
  }

  void moveDownRight() {
    _positionX++;
    _positionY--;
    notifyListeners();
  }

  void moveDown() {
    _positionY--;
    notifyListeners();
  }

  void moveDownLeft() {
    _positionX--;
    _positionY--;
    notifyListeners();
  }

  void moveLeft() {
    _positionX--;
    notifyListeners();
  }

  void moveUpLeft() {
    _positionX--;
    _positionY++;
    notifyListeners();
  }
}
