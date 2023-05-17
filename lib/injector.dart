import 'package:flutter_social_login/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

///
/// flutter_social_login
/// File Name: injector
/// Created by sujangmac on 2023/05/17
///
/// Description:
///
final locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => await locator.init();
