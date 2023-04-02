import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_course/screens/home/overlays/new_contact_page.dart';
import 'package:provider_course/screens/home/widgets/bread_crumbs.dart';

import '../../providers/bread_crumb_provider.dart';

class Home extends StatelessWidget{

  const Home({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          Consumer<BreadCrumbProvider>(
            builder: (context, breadCrumbProvider, child) {
              return BreadCrumbs(
                breadCrumbs: breadCrumbProvider.breadCrumbs,
              );
            },
          ),
          TextButton(
            onPressed: (){
              Navigator.of(context).push(NewContactPage());
            },
            child: const Text('Add new bread crumb'),
          ),
          TextButton(
            onPressed: (){
              context.read<BreadCrumbProvider>().resetAll();
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}