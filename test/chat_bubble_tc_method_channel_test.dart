import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:chat_bubble_tc/chat_bubble_tc_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelChatBubbleTc platform = MethodChannelChatBubbleTc();
  const MethodChannel channel = MethodChannel('chat_bubble_tc');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
