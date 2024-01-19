import 'package:chat_bubble_tc/controller/chat_bubble_tc_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MockChatBubbleTcPlatform {
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
  group(
    "Msg Recipient Controller Check",
    () {
      test("ENUM count check", () {
        expect(MsgRecipientStatus.values.length, 6);
      });
    },
  );

  group(
    "Icon Data Check",
    () {
      test(
        "MSG Delivered ",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconData(
              MsgRecipientStatus.delivered,
            ),
            Icons.done_all,
          );
        },
      );

      test(
        "MSG Offline",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconData(
              MsgRecipientStatus.offline,
            ),
            Icons.done,
          );
        },
      );

      test(
        "MSG Read",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconData(
              MsgRecipientStatus.read,
            ),
            Icons.done_all,
          );
        },
      );

      test(
        "MSG UnRead",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconData(
              MsgRecipientStatus.read,
            ),
            Icons.done_all,
          );
        },
      );

      test(
        "MSG Loading",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconData(
              MsgRecipientStatus.loading,
            ),
            Icons.schedule,
          );
        },
      );

      test(
        "MSG None",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconData(
              MsgRecipientStatus.read,
            ),
            Icons.done_all,
          );
        },
      );
    },
  );

  group(
    "MSG Recipient Color Check",
    () {
      test(
        "MSG read",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconColor(
              MsgRecipientStatus.read,
            ),
            Colors.blue,
          );
        },
      );

      test(
        "MSG Delivered",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconColor(
              MsgRecipientStatus.delivered,
            ),
            const Color(0xFFADB5B8),
          );
        },
      );

      test(
        "MSG Offline",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconColor(
              MsgRecipientStatus.offline,
            ),
            const Color(0xFFADB5B8),
          );
        },
      );

      test(
        "MSG Unread",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconColor(
              MsgRecipientStatus.unRead,
            ),
            const Color(0xFFADB5B8),
          );
        },
      );

      test(
        "MSG Loading",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconColor(
              MsgRecipientStatus.loading,
            ),
            const Color(0xFFADB5B8),
          );
        },
      );

      test(
        "MSG None",
        () {
          expect(
            ChatBubbleTcController.getMsgRecipientIconColor(
              MsgRecipientStatus.loading,
            ),
            const Color(0xFFADB5B8),
          );
        },
      );
    },
  );
}
