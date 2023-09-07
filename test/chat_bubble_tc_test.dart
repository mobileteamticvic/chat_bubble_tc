import 'package:flutter_test/flutter_test.dart';
import 'package:chat_bubble_tc/chat_bubble_tc.dart';
import 'package:chat_bubble_tc/chat_bubble_tc_platform_interface.dart';
import 'package:chat_bubble_tc/chat_bubble_tc_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockChatBubbleTcPlatform
    with MockPlatformInterfaceMixin
    implements ChatBubbleTcPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ChatBubbleTcPlatform initialPlatform = ChatBubbleTcPlatform.instance;

  test('$MethodChannelChatBubbleTc is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelChatBubbleTc>());
  });

  test('getPlatformVersion', () async {
    ChatBubbleTc chatBubbleTcPlugin = ChatBubbleTc();
    MockChatBubbleTcPlatform fakePlatform = MockChatBubbleTcPlatform();
    ChatBubbleTcPlatform.instance = fakePlatform;

    expect(await chatBubbleTcPlugin.getPlatformVersion(), '42');
  });
}
