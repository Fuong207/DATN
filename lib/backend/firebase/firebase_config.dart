import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCuTU87kgk7DJNBHSNkRgiYLsC-1cWd1o8",
            authDomain: "expense-tracker-19db7.firebaseapp.com",
            projectId: "expense-tracker-19db7",
            storageBucket: "expense-tracker-19db7.appspot.com",
            messagingSenderId: "403853656280",
            appId: "1:403853656280:web:eea2d537326c36468397ad",
            measurementId: "G-3Z9NXMREJC"));
  } else {
    await Firebase.initializeApp();
  }
}
