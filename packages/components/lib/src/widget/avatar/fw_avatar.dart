import 'package:flutter/material.dart';

class FwAvatar extends StatelessWidget {
  final BoxShape boxShape;
  final double? size;
  final String imageUrl;
  final double? borderRadiusValue;

  const FwAvatar(
      {super.key,
      this.boxShape = BoxShape.circle,
      this.size,
      this.borderRadiusValue,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size ?? 54,
        width: size ?? 54,
        decoration: getBoxDecoration(boxShape));
  }

  BoxDecoration getBoxDecoration(BoxShape boxShape) {
    return boxShape == BoxShape.circle
        ? BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            image: Uri.parse(imageUrl).isAbsolute
                ? DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  )
                : DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
          )
        : BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            borderRadius:
                BorderRadius.all(Radius.circular(borderRadiusValue ?? 12)),
            image: Uri.parse(imageUrl).isAbsolute
                ? DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.fill,
                  )
                : DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.fill,
                  ),
          );
  }
}
