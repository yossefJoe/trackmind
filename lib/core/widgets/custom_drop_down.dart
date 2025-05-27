import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class CustomDropDownMenu extends StatelessWidget {
  const CustomDropDownMenu({
    super.key,
    required this.hint,
    required this.LIST,
    required this.selectedValue,
    required this.ontap,
    required this.color,
  });

  final String hint;
  final List<dynamic> LIST;
  final Function(String?) ontap;
  final String? selectedValue;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isDense: true,
          isExpanded: true,
          hint: Text(hint),
          items: LIST.map((item) {
            return DropdownMenuItem<String>(
              value: item.id.toString(),
              child: Text(
                item.name?.toUpperCase() ?? '',
                style:
                    Styles.textStyle16.copyWith(color: ColorManager.mainColor),
              ),
            );
          }).toList(),
          value: selectedValue?.isNotEmpty == true ? selectedValue : null,
          onChanged: ontap,
          buttonStyleData: ButtonStyleData(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: color,
              border: Border.all(color: ColorManager.black, width: 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: 50.h,
            width: 350.w,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 200.h,
          ),
        ),
      ),
    );
  }
}
