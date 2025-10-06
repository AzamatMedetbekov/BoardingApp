import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "나의 게시판 앱",
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      titleSpacing: 20,
      actions: [
        GestureDetector(child: SvgPicture.asset(Assets.icons.search)),
        SizedBox(width: 16),
        GestureDetector(child: SvgPicture.asset(Assets.icons.write)),
        SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class SectionHeader extends StatelessWidget implements PreferredSizeWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(child: const Icon(Icons.arrow_back_ios)),
      title: const Text(
        "게시판 선택",
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      titleSpacing: 20,
      centerTitle: true,
      actions: [
        GestureDetector(
          child: const Text(
            "완료",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
        ),
        SizedBox(width: 16),
        GestureDetector(child: SvgPicture.asset(Assets.icons.search)),
        SizedBox(width: 16),
        GestureDetector(child: SvgPicture.asset(Assets.icons.write)),
        SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
