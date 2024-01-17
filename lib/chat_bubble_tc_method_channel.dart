import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'chat_bubble_tc_platform_interface.dart';

/// An implementation of [ChatBubbleTcPlatform] that uses method channels.
class MethodChannelChatBubbleTc extends ChatBubbleTcPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('chat_bubble_tc');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
