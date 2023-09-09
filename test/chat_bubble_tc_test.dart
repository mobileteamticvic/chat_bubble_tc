import 'package:flutter_test/flutter_test.dart';

class MockChatBubbleTcPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
//  final ChatBubbleTcPlatform initialPlatform = ChatBubbleTcPlatform.instance;

  // test('$MethodChannelChatBubbleTc is the default instance', () {
  //   expect(initialPlatform, isInstanceOf<MethodChannelChatBubbleTc>());
  // });

  // test('getPlatformVersion', () async {
  //   ChatBubbleTc chatBubbleTcPlugin = ChatBubbleTc();
  //   MockChatBubbleTcPlatform fakePlatform = MockChatBubbleTcPlatform();
  //   ChatBubbleTcPlatform.instance = fakePlatform;

  //   expect(await chatBubbleTcPlugin.getPlatformVersion(), '42');
  // });
}
