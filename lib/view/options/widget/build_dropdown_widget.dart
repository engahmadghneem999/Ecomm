import 'package:e_commerce/core/constant/color.dart';
import 'package:e_commerce/widget/custom_text.dart';
import 'package:flutter/material.dart';

class buildDropdownWidget extends StatefulWidget {
  const buildDropdownWidget({Key? key, this.labelText}) : super(key: key);
final labelText;

  @override
  State<buildDropdownWidget> createState() => _buildDropdownWidgetState();
}

class _buildDropdownWidgetState extends State<buildDropdownWidget> {

  String selectedValue = 'Option 1';

  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: CustomText(
            text: widget.labelText,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
            border: Border.all(color: AppColor.borderFormColor, width: 1), // Customize the border
          ),
          child: DropdownButton(
            value: selectedValue,
            items: dropdownItems.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            underline: Container(),
          ),
        ),
      ],
    );
  }
}
