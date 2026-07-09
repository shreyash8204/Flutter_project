import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  openDatabase(
    join(await getDatabasesPath(), "PlayerDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''
        Create Table Player(
        PlayerName Text,
        jerNo Int Primary Key,
        runs Int,
        avg Real
        )
        '''
      );
   },
  );
}



