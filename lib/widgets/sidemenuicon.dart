import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/constant.dart';

class SideMenuIcon extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback ontap;

  const SideMenuIcon({Key? key, required this.iconData, required this.title, required this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.white,
        size: 28,
      ),
      title: Text(
        title,
        style: style,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: ontap,
    );
  }
}
