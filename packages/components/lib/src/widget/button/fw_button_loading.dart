import 'package:components/src/widget/button/fw_button_style.dart';
import 'package:components/src/widget/text/fw_text.dart';
import 'package:components/src/widget/text/fw_text_styles.dart';
import 'package:flutter/material.dart';

class FwButtonLoading extends StatelessWidget {
  final Function onPressed;
  final String text;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final bool isLoading;
  final Color loadingColor;

  const FwButtonLoading({
    super.key,
    required this.onPressed,
    required this.text,
    this.buttonStyle,
    this.textStyle,
    this.isLoading = false,
    this.loadingColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed.call();
      },
      style: buttonStyle ?? FwButtonStyle.buttonStyle(),
      child: !isLoading
          ? FwText(
              text: text,
              textStyle: textStyle ??
                  FwTextStyles.textStyle(
                      fontSize: 12.0, fontColor: Colors.white),
            )
          : SizedBox(
              height: 16,
              width: 16,
              child: CircularProgressIndicator(
                color: loadingColor,
                strokeWidth: 2,
              ),
            ),
    );
  }
}
