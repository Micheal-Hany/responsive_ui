import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool isMultiline;
  final Function(String)? onChanged;
  final TextEditingController controller;

  final String? Function(String?)? validator;
  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.keyboardType = TextInputType.text,
      this.isMultiline = false,
      this.onChanged,
      required this.controller,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      cursorHeight: 20,
      cursorColor: Colors.black,
      maxLines: isMultiline ? null : 1,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        hintText: hintText,
        hintStyle:
            AppStyles.styleSemiBold20(context).copyWith(color: Colors.grey),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class LabeledTextField extends StatelessWidget {
  final String hintText;
  final String label;
  final TextEditingController controller;
  final double? width;
  final String? Function(String?)? validator;
  const LabeledTextField(
      {Key? key,
      required this.hintText,
      required this.label,
      required this.controller,
      this.width,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 8.0),
        CustomTextField(
          controller: controller,
          hintText: hintText,
        ),
      ],
    );
  }
}
