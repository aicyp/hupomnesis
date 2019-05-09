import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:hupomnesis/src/model/note.dart';

///
/// This class provides us the possibility to manage user's notes
/// 
class NoteManager {

  NoteManager();

  /// Method used to get a json file and write it inside a String, then write this string inside a list of exercises and returns it
  ///
  /// @param : (String) Path of the json file (The json file must be added to the pubspec.yaml)
  /// @return Future<List<Note>>
  Future<List<Note>> fetchNotes(String path) async {
    final String response = await rootBundle.loadString(path);

    return noteFromJson(response);
  }

  /// Method used to parse a json file string and return a list of notes
  /// 
  /// @param : String of a json file
  /// @return : List<Note>
  List<Note> noteFromJson(String string) => List<Note>.from(json.decode(string).map((dynamic x) => Note.fromJson(x)));

  /// Method used to write a json by using a list of notes
  ///
  /// @param : List<Note>
  /// @return : String of a json file
  String noteToJson(List<Note> data) => json.encode(List<dynamic>.from(data.map<dynamic>((dynamic x) => x.toJson())));
}