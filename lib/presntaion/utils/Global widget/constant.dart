

import 'package:flutter/material.dart';
import 'package:get/get.dart';

bool isBoarding = false;


List<Transition> transition =
[
  Transition.rightToLeft,
  Transition.leftToRight,
  Transition.circularReveal,
  Transition.fade,
];

int numberTap =3;
final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

int i = 0;