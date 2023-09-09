import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChatBubble extends StatelessWidget {
  final Color backgroundColor;
  final String message;
  final DateTime timeStamp;
  final TextStyle? textStyle;
  final double? minHeight;
  final double? minWidth;
  final double? maxWidth;
  final bool isSendBubble;
  const ChatBubble({
    super.key,
    this.backgroundColor = Colors.green,
    required this.message,
    required this.timeStamp,
    this.textStyle,
    this.minHeight,
    this.minWidth,
    this.maxWidth,
    this.isSendBubble = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isSendBubble ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE - Chat bubble widget
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  constraints: BoxConstraints(
                    minWidth: minWidth ?? 80,
                    minHeight: minHeight ?? 60,
                    maxWidth:
                        maxWidth ?? MediaQuery.of(context).size.width * 0.75,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFADB5B8).withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10,
                          right: 10,
                          bottom: 25,
                        ),
                        child: Text(
                          message,
                          style: textStyle ??
                              GoogleFonts.josefinSans(
                                height: 1.25,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                // NOTE - time stamp section
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, bottom: 10),
                  child: Text(
                    timeago.format(timeStamp),
                    style: textStyle ??
                        GoogleFonts.josefinSans(
                          color: const Color(0xFFADB5B8),
                          fontSize: 12,
                        ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
