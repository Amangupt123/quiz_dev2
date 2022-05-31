import 'dart:developer';

import 'package:casey_supplier/config/pallet/casey_colors.dart';
import 'package:casey_supplier/utils/screen_dimenstions.dart';
import 'package:casey_supplier/views/common_widgets/spaces.dart';
import 'package:casey_supplier/views/dialog_box/filter/from_to_date.dart';
import 'package:casey_supplier/views/screens/authentication_screens/signup_screen/dropdown.dart';
import 'package:casey_supplier/views/screens/dashboard/home/tile_bid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterDashboard extends StatefulWidget {
  const FilterDashboard({Key? key}) : super(key: key);

  @override
  State<FilterDashboard> createState() => _FilterDashboardState();
}

class _FilterDashboardState extends State<FilterDashboard> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(15),
          ),
          color: Colors.white),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            vSpace(25),
            Container(
              color: const Color(0xffF4F8F8),
              child: Row(
                children: [
                  hSpace(10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: CaseyColors.white,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 13, 68, 15)
                              .withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(1, 2),
                          spreadRadius: 2,
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      "assets/image/svg/filter_funnel.svg",
                      height: 48,
                    ),
                  ),
                  hSpace(10),
                  Text(
                    "Filter",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      color: CaseyColors.grey11,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.cancel_outlined,
                      size: 30,
                      color: Color(
                        0xff505050,
                      ),
                    ),
                  ),
                  hSpace(10),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  vSpace(15),
                  Text(
                    "In publishing and graphic design, Lorem ipsum is a placeholder text commonly",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: CaseyColors.grey50,
                    ),
                  ),
                  vSpace(15),
                  Wrap(
                    alignment: WrapAlignment.spaceEvenly,
                    runSpacing: 10,
                    children: [],
                  ),
                  vSpace(35),
                  DropDownSelector(
                    callback: () {},
                    items: const [
                      "Date Range",
                      "Select Date",
                      "Previous Year",
                      "Previous Month",
                      "Custom"
                    ],
                    title: "Select Date",
                  ),
                  vSpace(30),
                  Wrap(
                    runSpacing: 15,
                    spacing: 15,
                    children: [
                      InkWell(
                        onTap: () {
                          log("message");
                          _selectDate(context);
                        },
                        child: FromToDate(
                          title: "To Date",
                          currenDate: "12 Dec 21",
                        ),
                      ),
                      const SizedBox(),
                      InkWell(
                        onTap: () {
                          log("message");
                          _selectDate(context);
                        },
                        child: FromToDate(
                          title: "From Date",
                          currenDate: "18 Dec 21",
                        ),
                      ),
                    ],
                  ),
                  vSpace(20),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: screenWidth(context) / 3,
                  height: 70,
                  color: CaseyColors.darkGreen,
                  child: Center(
                    child: Center(
                      child: Text(
                        "Clear",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: CaseyColors.textWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    color: CaseyColors.primary,
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: CaseyColors.textWhite,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
