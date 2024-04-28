import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';

import 'package:todoapp_mobile/feature/presentation/pages/initial_page.dart';


void setupLocator() {
  GetIt.I.registerLazySingleton(() => ProjectService.create(ChopperClient(
    baseUrl: ProjectService.API,
  )));
}

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}