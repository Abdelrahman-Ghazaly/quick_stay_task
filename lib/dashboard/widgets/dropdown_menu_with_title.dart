import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../app_constants/app_constants.dart';

class DropdownMenuWithTitle extends StatelessWidget {
  const DropdownMenuWithTitle({
    super.key,
    required this.list,
    required this.title,
  });
  final List<DropdownMenuEntry> list;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        DropdownMenu(
          width: 200,
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 2),
            ),
          ),
          trailingIcon: SvgPicture.asset(
            AppIcons.arrowDown,
            height: 11,
            colorFilter: const ColorFilter.mode(
              Colors.black,
              BlendMode.srcIn,
            ),
          ),
          dropdownMenuEntries: list,
        )
      ],
    );
  }
}
