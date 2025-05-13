import 'package:flutter/material.dart';
import 'services/home.dart';
import 'services/menu.dart';

void main() => runApp(MaterialApp(
  initialRoute:  '/',
  routes: {
    '/': (context) => const MenuPage(),
    '/home': (context) => const Home(joe: '',),

  },
));
