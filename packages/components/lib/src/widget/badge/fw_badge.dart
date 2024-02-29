import 'package:components/src/widget/text/fw_text.dart';
import 'package:components/src/widget/text/fw_text_styles.dart';
import 'package:flutter/material.dart';

class FwBadge extends StatelessWidget {
  final String? value;
  final KBadgeType kBadgeType;
  final Color? bgColor;
  final TextStyle? textStyle;

  const FwBadge(
      {super.key,
      this.value,
      required this.kBadgeType,
      this.bgColor,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    if (kBadgeType == KBadgeType.normal) {
      return _badgeWidget(value: value, textStyle: textStyle);
    } else if (kBadgeType == KBadgeType.primary) {
      return _badgeWidget(
          textStyle:
              textStyle ?? FwTextStyles.textStyle(fontColor: Colors.white),
          value: value,
          bgColor: bgColor ?? Theme.of(context).primaryColor);
    } else if (kBadgeType == KBadgeType.primaryInverted) {
      return _badgeWidget(
          value: value,
          bgColor: Colors.white,
          textStyle: textStyle ??
              FwTextStyles.textStyle(fontColor: Theme.of(context).primaryColor));
    } else if (kBadgeType == KBadgeType.imported) {
      return _badgeWidget(
          value: value,
          bgColor: bgColor ?? Colors.redAccent,
          textStyle:
              textStyle ?? FwTextStyles.textStyle(fontColor: Colors.white));
    } else if (kBadgeType == KBadgeType.added) {
      return _badgeWidget(
          value: '+$value',
          bgColor: bgColor ?? Colors.green.withOpacity(0.2),
          textStyle:
              textStyle ?? FwTextStyles.textStyle(fontColor: Colors.green));
    } else if (kBadgeType == KBadgeType.removed) {
      return _badgeWidget(
          value: '-$value',
          bgColor: bgColor ?? Colors.redAccent.withOpacity(0.2),
          textStyle:
              textStyle ?? FwTextStyles.textStyle(fontColor: Colors.redAccent));
    }

    return Container();
  }

  Container _badgeWidget({
    EdgeInsetsGeometry? padding,
    Color? bgColor,
    String? value,
    TextStyle? textStyle,
  }) {
    return Container(
      padding: padding ??
          const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
      decoration: BoxDecoration(
          color: bgColor ?? Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(16)),
      child: FwText(
        text: value ?? '',
        textStyle: textStyle,
      ),
    );
  }
}

enum KBadgeType {
  normal,
  primary,
  primaryInverted,
  imported,
  added,
  removed,
}
