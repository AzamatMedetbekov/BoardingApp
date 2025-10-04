import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("나의 게시판 앱", style: TextStyle(fontWeight: FontWeight.w700)), 
      actions: [
        GestureDetector(child: SvgPicture.asset(Assets.icons.search)),
        SizedBox(width: 16),
        GestureDetector(child: SvgPicture.asset(Assets.icons.write))
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}