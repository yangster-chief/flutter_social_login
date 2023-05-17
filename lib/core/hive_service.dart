import 'package:hive_flutter/hive_flutter.dart';

///
/// flutter_social_login
/// File Name: hive_service
/// Created by sujangmac on 2023/05/17
///
/// Description:
///
class HiveService {
  static Future<HiveService> init() async {
    await Hive.initFlutter();
    //register adapter here

    //
    await Hive.openBox('testBox');
    return HiveService();
  }

  Box get testBox => Hive.box('testBox');
}
