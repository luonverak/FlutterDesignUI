import 'package:design_ui/components/app_color.dart';
import 'package:flutter/material.dart';

class ComponentsCustom {
  static const outlineInput = OutlineInputBorder(
    borderSide: BorderSide(color: AppColor.black),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  );
}
