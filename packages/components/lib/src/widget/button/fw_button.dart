import 'package:components/src/widget/button/fw_button_style.dart';
import 'package:components/src/widget/text/fw_text.dart';
import 'package:components/src/widget/text/fw_text_styles.dart';
import 'package:flutter/material.dart';

class FwButton extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Function onPressed;
  final Color? buttonColor;
  final ButtonStyle? buttonStyle;

  const FwButton({super.key,
    required this.text,
    required this.onPressed,
    this.buttonColor,
    this.buttonStyle,
    this.textStyle});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed.call();
      },
      style: buttonStyle ?? FwButtonStyle.buttonStyle(),
      child: FwText(
        text: text,
        textStyle: textStyle ?? FwTextStyles.textStyle(
          fontSize: 12.0,
          fontColor: Colors.white
        ),
      ),
    );
  }
}
