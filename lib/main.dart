import 'package:flutter/material.dart';
import 'package:prectice/26-4/Provider/steper_provider.dart';
import 'package:prectice/26-4/View/drower.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SteperProvider(),)
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
       routes: {
           '/':(context) => DrowerScreen()
       },
      ),
    ),
  );
}
