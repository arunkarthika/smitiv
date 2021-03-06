import 'dart:async';
import 'dart:io' as io;
import 'package:honeybee/model/gift.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  DatabaseHelper.internal();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "main.db");
    var theDb = await openDatabase(path, version: 5, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE Gift(id TEXT, url TEXT, name TEXT,price TEXT,type TEXT, icon TEXT,comboFlag TEXT,comboPacks TEXT,giftLocal TEXT,giftIconLocal TEXT,audioLocal TEXT,audioURL TEXT)");
  }

  Future<int> saveGift(Gift gift) async {
    var dbClient = await db;
    int res = await dbClient.insert("Gift", gift.toMap());
    print('insertdata');
    print(res);
    return res;
  }

  Future<List> getGift() async {
    var dbClient = await db;
    List<Map> normalList =
    await dbClient.rawQuery('SELECT * FROM Gift where type="Sticker"');
    List<Map> animationList =
    await dbClient.rawQuery('SELECT * FROM Gift where type="Gif"');
    List employees = [normalList, animationList];
    print('getgifts');
    return employees;
  }

  Future<int> deleteGift() async {
    var dbClient = await db;
    int res = await dbClient.rawDelete('DELETE FROM Gift');
    return res;
  }
}
