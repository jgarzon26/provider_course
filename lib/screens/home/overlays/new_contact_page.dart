import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/bread_crumb_provider.dart';
import '../classes/bread_crumb.dart';

class NewContactPage extends PopupRoute{

  late final TextEditingController _nameController;

  @override
  Color? get barrierColor => Colors.black.withAlpha(0x50);

  @override
  bool get barrierDismissible => true;

  @override
  String? get barrierLabel => "Input a New Contact";

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  void install(){
    _nameController = TextEditingController();
    super.install();
  }

  @override
  void dispose(){
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return Center(
      child: Material(
        elevation: 3.0,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Add a new BreadCrumb',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                TextField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    hintText: 'Enter a new breadcrumb here',
                  ),
                ),
                TextButton(
                  onPressed: (){
                    context.read<BreadCrumbProvider>().addBreadCrumb(
                        BreadCrumb(
                          name: _nameController.text,
                          isActive: false,
                        ),
                    );
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}