import 'package:flutter/material.dart';

class NewContactPage extends PopupRoute{
  @override
  Color? get barrierColor => Colors.black.withAlpha(0x50);

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => "Input a New Contact";

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return Center();
  }
}