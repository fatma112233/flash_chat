import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat_flutte/firebase_options.dart';
import 'package:flash_chat_flutte/screens/chat_screen.dart';
import 'package:flash_chat_flutte/screens/login_screen.dart';
import 'package:flash_chat_flutte/screens/registration_screen.dart';
import 'package:flash_chat_flutte/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
