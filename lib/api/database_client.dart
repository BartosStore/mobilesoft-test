import 'package:sqflite/sqflite.dart';

import 'package:mobilesoft/model/employee.dart';

abstract class DatabaseClient {
  static Database _db;

  static int get _version => 1;

  static Future<void> init() async {
    if (_db != null) {
      return;
    }

    try {
      String _path = await getDatabasesPath() + 'emp.db';
      _db = await openDatabase(_path, version: _version, onCreate: onCreate);
    } catch (ex) {
      print(ex);
    }
  }

  static void onCreate(Database db, int version) async => await db.execute(
      'CREATE TABLE employees(id INTEGER PRIMARY KEY, name TEXT, department TEXT, address TEXT, salary REAL)');

  static Future<List<Map<String, dynamic>>> query(String table) async =>
      _db.query(table);

  static Future<int> insert(String table, Employee employee) async =>
      await _db.insert(table, employee.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);

  static Future<int> update(String table, Employee employee) async =>
      await _db.update(table, employee.toMap(),
          where: 'id = ?', whereArgs: [employee.id]);

  static Future<int> delete(String table, Employee employee) async =>
      await _db.delete(table, where: 'id = ?', whereArgs: [employee.id]);
}
