import 'package:e_pharmacy/common/size_fade_switcher.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    required this.maxLine,
    required this.hintText,
    this.errorText,
    this.validate,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
    this.onSaved,
    this.onChanged,
    this.onTapOutside,
    this.autovalidateMode,
    this.prefixIcon,
    this.isObsecure = false,
  });
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final void Function(PointerDownEvent)? onTapOutside;
  final int maxLine;
  final String hintText;
  final String? Function(String?)? validate;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final bool isObsecure;
  final String? errorText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //margin: const EdgeInsets.only(top: 9),
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: TextField(
            onChanged: onChanged,
            // onSaved: onSaved,
            onTapOutside: onTapOutside,
            focusNode: focusNode,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            controller: controller,
            maxLines: maxLine,
            obscureText: isObsecure,
            //  autovalidateMode: AutovalidateMode.disabled,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'SwitzerRegular',
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              //helperText: "",
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                fontFamily: 'SwitzerRegular',
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.5),
              ),
              filled: true,
              fillColor: const Color(0xffeff1f7),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
            cursorColor: Colors.black,
            cursorErrorColor: Colors.black,
            //validator: validate,
          ),
        ),
        SizeFadeSwitcher(
          child: errorText != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(2, 4, 16, 0),
                  child: Text(
                    errorText ?? "",
                    style: const TextStyle(color: Colors.red, fontSize: 12),
                  ),
                )
              : const SizedBox.shrink(),
        ),
      ],
    );
  }
}
