import 'package:cookery_craft/app/common_widgets/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../spacing.dart';

Widget textFieldsWithTitle({
  String? title,
  String? onEmptyText,
  TextStyle? titleStyle,
  TextStyle? hintStyle,
  required String hintText,
  TextEditingController? controller,
  String? Function(String?)? customValidator,
  void Function(String?)? onChanged,
  void Function(String?)? onSubmit,
  List<TextInputFormatter>? inputFormatters,
  int? maxWords,
  int? maxLines,
  int? minLines,
  bool? validation = true,
  bool? autoFocus = false,
  bool? readonly,
  TextInputType? keyboardType,
  Widget? suffix,
  Widget? prefix,
  bool? obscureText,
  Color? inputTextColor,
  Color? fillColor,
  AlignmentGeometry? titleAlignment = Alignment.topLeft,
  TextInputAction? textInputAction,
}) =>
    Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 2.0,
                ),
                child: Text(
                  title,
                  style: titleStyle ??
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                ),
              ),
              otherSpacerVertically(),
            ],
          ),
        TextFormField(
          autofocus: autoFocus!,
          readOnly: readonly ?? false,
          style: TextStyle(color: inputTextColor ?? appTextColorPrimary),
          keyboardType: keyboardType ?? TextInputType.text,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          onChanged: onChanged,
          onSaved: onSubmit,
          obscureText: obscureText ?? false,
          minLines: minLines ?? 1,
          maxLines: maxLines ?? 1,
          controller: controller,

          maxLength: maxWords ?? 250,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          cursorColor: inputTextColor ?? Colors.black,
          // Cursor Color To Be Set
          decoration: InputDecoration(
            // fillColor: fillColor ?? Colors.white,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Get.theme.primaryColor, // Border Side Color to Set
              ),
              borderRadius: BorderRadius.circular(
                12.0,
              ), // Unfocused border color
            ),
            suffixIcon: suffix,
            prefixIcon: prefix,
            hintText: hintText,
            hintStyle: hintStyle ?? const TextStyle(),
            counterText: "",
          ),
          textInputAction: textInputAction ?? TextInputAction.next,
          inputFormatters: inputFormatters,
          validator: customValidator ??
              (value) {
                if (validation == true) {
                  if (value!.isEmpty) {
                    return onEmptyText ?? 'Please enter valid Data';
                  }
                  return null;
                }
                return null;
              },
        ),
      ],
    );

Widget emailTextField({
  required String title,
  required String hintText,
  TextEditingController? controller,
  String? Function(String?)? customValidator,
  bool validation = true,
}) =>
    textFieldsWithTitle(
      title: title,
      hintText: hintText,
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      customValidator: customValidator ??
          (value) {
            if (validation) {
              if (value!.isEmpty ||
                  !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                return 'Please enter a valid email address';
              }
              return null;
            }
            return null;
          },
    );
