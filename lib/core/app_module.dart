import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_social_login/core/firebase_service.dart';
import 'package:flutter_social_login/core/hive_service.dart';
import 'package:injectable/injectable.dart';

///
/// flutter_social_login
/// File Name: app_module
/// Created by sujangmac on 2023/05/17
///
/// Description:
///
@module
abstract class AppModule {
  @preResolve
  Future<FirebaseService> get fireService => FirebaseService.init();

  @preResolve
  Future<HiveService> get hiveService => HiveService.init();

  @injectable
  FirebaseAuth get auth =>
      FirebaseAuth.instance..useAuthEmulator('localhost', 9099);
}
