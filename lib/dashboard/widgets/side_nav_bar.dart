import 'package:flutter/material.dart';

import '../../app_constants/app_assets.dart';
import 'custom_icon_button.dart';

class SideNavBar extends StatelessWidget {
  SideNavBar({Key? key}) : super(key: key);

  final List<String> icons = [
    AppIcons.home,
    AppIcons.twoHomes,
    AppIcons.twoPeople,
    AppIcons.lugage,
    AppIcons.clock,
    AppIcons.addHome,
    AppIcons.setting,
    AppIcons.profile,
    AppIcons.logOut,
  ];

  final List<String> iconTitle = [
    'Home',
    'Properties',
    'Tenants',
    'Booking',
    'Scheduled Vists',
    'Add Property',
    'Settings',
    'Profile',
    'Log Out',
  ];

  final selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF313131),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(AppImages.quickStayLogo),
                const SizedBox(height: 25),
                ...List.generate(
                  icons.length - 2,
                  (index) {
                    bool isActive = selectedIcon == index;
                    return Column(
                      children: [
                        CustomIconButton(
                          icon: icons[index],
                          isActive: isActive,
                          text: iconTitle[index],
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                ),
              ],
            ),
            Column(
              children: [
                CustomIconButton(
                  icon: icons[7],
                  isActive: false,
                  text: iconTitle[7],
                ),
                const SizedBox(height: 10),
                CustomIconButton(
                  icon: icons[8],
                  isActive: true,
                  text: iconTitle[8],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
