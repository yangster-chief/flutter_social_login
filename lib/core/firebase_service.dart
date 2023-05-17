import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_social_login/firebase_options.dart';

///
/// flutter_social_login
/// File Name: firebase_service
/// Created by sujangmac on 2023/05/17
///
/// Description:
///
class FirebaseService {
  static Future<FirebaseService> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    return FirebaseService();
  }
}
