import 'package:flutter/material.dart';

///Defiing the main class 
 void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner:  false,
      title : 'ChatApp',

      ///formatting theme
      theme:ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
    
      ),
    );
  }
}