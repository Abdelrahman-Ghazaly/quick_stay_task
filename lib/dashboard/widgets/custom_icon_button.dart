import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_stay_task/app_constants/app_constant_value.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    this.isActive = false,
    required this.text,
  }) : super(key: key);
  final String icon;
  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Color color = isActive ? Colors.white : const Color(0xFF828282);
    return ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Color(0xFF313131)),
          overlayColor: MaterialStatePropertyAll(Color(0xFF313131)),
          elevation: MaterialStatePropertyAll(0),
        ),
        child: Column(children: [
          SvgPicture.asset(icon,
              height: 25,
              colorFilter: ColorFilter.mode(
                color,
                BlendMode.srcIn,
              )),
          const SizedBox(height: 5),
          SizedBox(
            width: 70,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: getButtonTextStyle(color),
            ),
          ),
        ]));
  }
}
