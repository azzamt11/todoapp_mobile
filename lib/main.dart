import 'package:flutter/material.dart';
import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';

import 'json_serializable_converter.dart';


void setupLocator() {
  GetIt.I.registerLazySingleton(() => NotesService.create(ChopperClient(
    baseUrl: NotesService.API,
    converter: JsonSerializableConverter({
      Note: Note.fromJson,
      NoteForListing: NoteForListing.fromJson
    }),
  )));
}

void main() {
  setupLocator();
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}