import 'package:flutter/material.dart';
import 'package:screva/app/constant/app.colors.dart';
import 'package:screva/app/constant/app.fonts.dart';

class CustomTextField {
  static customTextField(
      {required TextEditingController textEditingController,
      required String hintText,
      required Icon iconData,
      String? Function(String?)? validator,
      Function(String)? onChanged}) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
        color: Colors.white,
        fontFamily: AppFonts.montserrat,
        fontSize: 18,
      ),
      onChanged: onChanged,
      controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(
        fillColor: AppColors.blackPearl,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.bluish,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          borderSide: BorderSide(
            color: Colors.white,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
          borderSide: BorderSide(color: AppColors.pinkish),
        ),
      ),
    );
  }
}
