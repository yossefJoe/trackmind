import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Methods {
//singleton class
  Methods._internal();

  static final instance = Methods._internal();

  factory Methods() => instance;

  
}
