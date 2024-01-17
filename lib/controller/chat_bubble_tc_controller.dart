import 'package:flutter/material.dart';

enum MsgRecipientStatus {
  read,
  delivered,
  unRead,
  loading,
  offline,
  none,
}

class ChatBubbleTcController {
  static IconData getMsgRecipientIconData(
      MsgRecipientStatus msgRecipientStatus) {
    switch (msgRecipientStatus) {
      case MsgRecipientStatus.loading:
        return Icons.schedule;
      case MsgRecipientStatus.offline:
        return Icons.done;
      default:
        return Icons.done_all;
    }
  }

  static Color getMsgRecipientIconColor(MsgRecipientStatus msgRecipientStatus) {
    switch (msgRecipientStatus) {
      case MsgRecipientStatus.read:
        return Colors.blue;
      default:
        return const Color(0xFFADB5B8);
    }
  }
}
