import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:player_sqflite/player_model.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

void insertPlayerData(PlayerModel pObj) async{
  Database localDB = await database;
  await localDB.insert(
    "Player", 
    pObj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
    );
}

Future<List<Map>> getPlayerData() async{
  Database localDB = await database;
  List<Map> sqfData = await localDB.query(
    "Player",
    columns: ['PlayerName', 'jerNo', 'runs', 'avg']
  );
  return sqfData;
}

void updatePlayerData(PlayerModel pObj) async{
  Database localDB = await database;
  await localDB.update(
    "Player",
    pObj.playerMap(),
    where: 'jerNo=?',
    whereArgs: [pObj.jerNo],
    );
}

void deletePlayerData(int jerNo) async {
  Database localDB = await database;
  await localDB.delete(
    'Player',
    where: 'jerNo=?',
    whereArgs: [jerNo],
    );
}
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "CricPlayer.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''
        CREATE TABLE Player(
        playerName TEXT,
        jerNo INT PRIMARY KEY,
        runs INT,
        avg REAL
        )

        '''
      );
    },
  );
  PlayerModel player1 = PlayerModel(
    playerName: 'Virat', 
    jerNo: 18, 
    runs: 50000, 
    avg: 50.33,
  );

  PlayerModel player2 = PlayerModel(
    playerName: 'Rohit', 
    jerNo: 45, 
    runs: 47000, 
    avg: 53.45
    );
insertPlayerData(player1);
insertPlayerData(player2);

print(await getPlayerData());

player1 = PlayerModel(
  playerName: player1.playerName, 
  jerNo: player1.jerNo, 
  runs: player1.runs + 500, 
  avg: player1.avg
  );
  updatePlayerData(player1);
  
  print(await getPlayerData());

  deletePlayerData(player1.jerNo);
  print(await getPlayerData());
}


