import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String text;
  final bool? softWrap;
  final TextStyle theme;
  final TextOverflow? overFlow;
  final TextAlign? textAlign;
  final int? maxLines;

  const TextApp(
      {super.key,
      required this.text,
      this.softWrap,
      required this.theme,
      this.overFlow,
      this.textAlign,
      this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: softWrap,
      style: theme,
      overflow: overFlow,
      textAlign: textAlign,
      maxLines: maxLines,
    );
  }
}
