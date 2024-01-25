import 'package:flutter/material.dart';
import '../core/constant/color.dart';
import '../core/constant/image_assets.dart';

class CustomTextForm extends StatelessWidget {
  final String? hintText;
  final Widget? prefixWidget;
  final IconData? iconSuffixData;
  final Color? iconPrefixColor;
  final Color? iconSuffixColor;
  //final Widget? prefixImage;
  //final Widget? imagePrefix;

  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final void Function(String)? onChanged;

  //final bool filled,
  final bool readOnly;
  final bool obscuretext;
  final String? labelText;
  final void Function()? onTapPrefixIcon;
  final void Function()? onTapSuffixIcon;

  final void Function(String? newValue)? onSave;
  final bool autoFocus;

  final TextInputType? keyboardType;
  const CustomTextForm({
    Key? key,
    this.hintText,
    this.prefixWidget,
    this.iconSuffixData,
    this.mycontroller,
    this.valid,
    this.readOnly = false,
    this.obscuretext = false,
    this.labelText,
    this.onTapPrefixIcon,
    this.onTapSuffixIcon,
    this.onSave,
    this.keyboardType = TextInputType.text,
    this.iconPrefixColor,
    this.iconSuffixColor,
    this.autoFocus = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      // height: 80,
      child: TextFormField(
        autofocus: autoFocus,
        cursorColor: AppColor.purpleColor,
        textAlign: TextAlign.end,
        textDirection: TextDirection.rtl,
        onChanged: onChanged,
        style: const TextStyle(
          color: AppColor.purpleColor,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
        obscureText: obscuretext,
        validator: valid,
        keyboardType: keyboardType,
        controller: mycontroller,
        readOnly: readOnly,
        onSaved: onSave,
        decoration: InputDecoration(
          focusColor: AppColor.purpleColor,
          hoverColor: AppColor.purpleColor,
          alignLabelWithHint: true,
          filled: true,
          floatingLabelStyle: const TextStyle(
            color: AppColor.purpleColor,
          ),
          labelStyle: const TextStyle(
            color: AppColor.purpleColor,
          ),
          fillColor: Colors.white,
          labelText: labelText,
          hintText: hintText,
          helperStyle: const TextStyle(
            color: AppColor.hintFormColor,
            fontFamily: AppImageAsset.fontAvenirArabicMedium,
            fontSize: 13,
          ),
          hintStyle: const TextStyle(
            color: AppColor.hintFormColor,
            fontFamily: AppImageAsset.fontAvenirArabicMedium,
            fontSize: 13,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          suffixIcon: InkWell(
            onTap: onTapSuffixIcon,
            child: Icon(
              iconSuffixData,
              color: iconSuffixColor,
            ),
          ),
          prefixIcon: prefixWidget,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: AppColor.hintFormColor ,
            ),
          ),
        ),
      ),
    );
  }
}
