import 'package:components/src/constants/color_constants.dart';
import 'package:components/src/widget/text/fw_text.dart';
import 'package:components/src/widget/text/fw_text_styles.dart';
import 'package:flutter/material.dart';

class FwPasswordField extends StatefulWidget {
  final String text;
  final Function(String) onChange;
  final TextStyle? style;
  final TextEditingController? controller;

  const FwPasswordField(
      {super.key,
      required this.text,
      this.controller,
      required this.onChange,
      this.style});

  @override
  State<FwPasswordField> createState() => _FwPasswordFieldState();
}

class _FwPasswordFieldState extends State<FwPasswordField> {
  bool obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      validator: (v) {
        if (v == null) {
          return "Please enter password";
        }
        return null;
      },
      onChanged: (value) {
        widget.onChange.call(value);
      },
      style: widget.style ?? FwTextStyles.textStyle(),
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(ColorConstants.greyColorC6),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(ColorConstants.greyColorC6),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(ColorConstants.greyColorC6),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(ColorConstants.greyColorC6),
            width: 1,
          ),
        ),
        label: FwText(
          text: widget.text,
          textStyle: FwTextStyles.textStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
