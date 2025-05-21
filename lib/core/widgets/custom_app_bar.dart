import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  final Color? backgroundColor;
  final double elevation;

  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.backgroundColor = Colors.white,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      actions: actions,
      leading: leading ??
          BackButton(
            color:
                (backgroundColor == Colors.white) ? Colors.black : Colors.white,
            style: const ButtonStyle(),
          ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
