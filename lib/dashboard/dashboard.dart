import 'package:flutter/material.dart';
import 'package:quick_stay_task/app_constants/app_constants.dart';
import 'package:quick_stay_task/dashboard/widgets/widgets.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuEntry> locations = [
      DropdownMenuEntry(
        value: Text(
          'Gurugram',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'Gurugram',
      ),
    ];

    List<DropdownMenuEntry> propertyCode = [
      DropdownMenuEntry(
        value: Text(
          'All',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'All',
      ),
      DropdownMenuEntry(
        value: Text(
          'QSE701',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'QSE701',
      ),
      DropdownMenuEntry(
        value: Text(
          'QSE702',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'QSE702',
      ),
    ];

    List<DropdownMenuEntry> months = [
      DropdownMenuEntry(
        value: Text(
          'January',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'January',
      ),
      DropdownMenuEntry(
        value: Text(
          'February',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'February',
      ),
      DropdownMenuEntry(
        value: Text(
          'March',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'March',
      ),
      DropdownMenuEntry(
        value: Text(
          'April',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'April',
      ),
      DropdownMenuEntry(
        value: Text(
          'May',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'May',
      ),
      DropdownMenuEntry(
        value: Text(
          'June',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'June',
      ),
      DropdownMenuEntry(
        value: Text(
          'July',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'July',
      ),
      DropdownMenuEntry(
        value: Text(
          'August',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'August',
      ),
      DropdownMenuEntry(
        value: Text(
          'September',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'September',
      ),
      DropdownMenuEntry(
        value: Text(
          'October',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'October',
      ),
      DropdownMenuEntry(
        value: Text(
          'November',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'November',
      ),
      DropdownMenuEntry(
        value: Text(
          'December',
          style: getButtonTextStyle(Colors.black).copyWith(
            fontSize: 20,
          ),
        ),
        label: 'December',
      ),
    ];

    return Scaffold(
      body: Row(
        children: [
          SideNavBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TitleWidget(),
                      Row(
                        children: [
                          DropdownMenuWithTitle(
                            title: 'Locations',
                            list: locations,
                          ),
                          const SizedBox(width: 40),
                          DropdownMenuWithTitle(
                            title: 'Property Code',
                            list: propertyCode,
                          ),
                          const SizedBox(width: 40),
                          DropdownMenuWithTitle(
                            title: 'Month',
                            list: months,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    'Gurugam',
                    style: getTitleStyle(),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color(0xFFa00500),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Rooms',
                                style: getTitleStyle().copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '36',
                                style: getTitleStyle().copyWith(
                                  fontSize: 36,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rooms Occupied',
                                style: getTitleStyle().copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '33',
                                style: getTitleStyle().copyWith(
                                  fontSize: 36,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transactions (February)',
                                style: getTitleStyle().copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '₹1,50,000',
                                style: getTitleStyle().copyWith(
                                  fontSize: 36,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Open Complaints',
                                style: getTitleStyle().copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '4',
                                style: getTitleStyle().copyWith(
                                  fontSize: 36,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 150,
                          child: VerticalDivider(
                            color: Colors.white,
                            thickness: 2,
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Active Notices',
                                style: getTitleStyle().copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '2',
                                style: getTitleStyle().copyWith(
                                  fontSize: 36,
                                  color: Colors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
