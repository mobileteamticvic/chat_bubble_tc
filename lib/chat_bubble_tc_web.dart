// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'chat_bubble_tc_platform_interface.dart';

/// A web implementation of the ChatBubbleTcPlatform of the ChatBubbleTc plugin.
class ChatBubbleTcWeb extends ChatBubbleTcPlatform {
  /// Constructs a ChatBubbleTcWeb
  ChatBubbleTcWeb();

  static void registerWith(Registrar registrar) {
    ChatBubbleTcPlatform.instance = ChatBubbleTcWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
