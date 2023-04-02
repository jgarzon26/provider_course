import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/providers/bread_crumb_provider.dart';
import 'package:provider_course/screens/home/home.dart';

main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BreadCrumbProvider(),
      child: MaterialApp(
        title: 'Provider Course',
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => const Home(),
        },
      ),
    ),
  );
}