import 'package:chat_bubble_tc/chat_bubble_tc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            // NOTE - Send Bubble widget
            ChatBubble(
              message: "Send Example",
              timeStamp: DateTime.now(),
              isSendBubble: true,
            ),
            // NOTE - Receive Bubble widget
            ChatBubble(
              message: "Receive example",
              timeStamp: DateTime.now(),
              isSendBubble: false,
            )
          ],
        ),
      ),
    );
  }
}
