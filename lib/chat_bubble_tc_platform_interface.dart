import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'chat_bubble_tc_method_channel.dart';

abstract class ChatBubbleTcPlatform extends PlatformInterface {
  /// Constructs a ChatBubbleTcPlatform.
  ChatBubbleTcPlatform() : super(token: _token);

  static final Object _token = Object();

  static ChatBubbleTcPlatform _instance = MethodChannelChatBubbleTc();

  /// The default instance of [ChatBubbleTcPlatform] to use.
  ///
  /// Defaults to [MethodChannelChatBubbleTc].
  static ChatBubbleTcPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ChatBubbleTcPlatform] when
  /// they register themselves.
  static set instance(ChatBubbleTcPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
