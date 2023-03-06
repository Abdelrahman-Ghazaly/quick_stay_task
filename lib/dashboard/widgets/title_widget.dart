import 'package:flutter/material.dart';

import '../../app_constants/app_constant_value.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'QuickStay Coliving',
          style: getTitleStyle(),
        ),
        Text(
          'Dashboard',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
