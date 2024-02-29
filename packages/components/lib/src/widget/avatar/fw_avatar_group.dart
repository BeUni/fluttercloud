import 'package:components/src/widget/avatar/fw_avatar.dart';
import 'package:flutter/material.dart';

class FwAvatarGroup extends StatelessWidget {
  final List<AGData> agItems;
  final Function(AGData)? onClickItem;
  final double? avatarSize;
  final double? avatarSpacing;

  const FwAvatarGroup(
      {super.key,
      required this.agItems,
      this.onClickItem,
      this.avatarSize = 32,
      this.avatarSpacing = 20});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: List.generate(
          agItems.length,
          (index) => Positioned(
            left: ((agItems.length - index) * avatarSpacing!),
            child: Tooltip(
              message: '${agItems[index].name}',
              child: InkWell(
                onTap: () {
                  onClickItem!.call(agItems[index]);
                },
                child: FwAvatar(
                  imageUrl: "${agItems[index].imageSrc}",
                  size: avatarSize,
                  boxShape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AGData {
  String? name;

  String? email;

  String? key;

  String? href;

  String? imageSrc;

  AGData({this.name, this.email, this.key, this.href, this.imageSrc});
}
