import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFiledWidget extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final Widget? suffixIcon;
  final bool isPhone;
  final int? minLine;
  final TextInputType? keyboardType;
  final int? maxLines;
  final Function(String)? onChange;
  final Function()? onEditingComplete;
  final Function(String)? onSubmitted;
  final TextInputAction? textInputAction;

  const TextFiledWidget({
    super.key,
    this.keyboardType,
    this.isPhone = false,
    required this.hintText,
    this.controller,
    this.validator,
    this.isPassword = false,
    this.suffixIcon,
    this.minLine,
    this.maxLines,
    this.onChange,
    this.onEditingComplete,
    this.onSubmitted,
    this.textInputAction,
  });

  @override
  State<TextFiledWidget> createState() => _TextFiledWidgetState();
}

class _TextFiledWidgetState extends State<TextFiledWidget> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        textInputAction: widget.textInputAction,

        autovalidateMode: AutovalidateMode.onUserInteraction,
        obscureText: widget.isPassword ? _obscureText : false,
        keyboardType:
            widget.isPhone ? TextInputType.phone : widget.keyboardType,
        maxLines: widget.isPassword ? 1 : widget.maxLines,
        minLines: widget.minLine,
        onChanged: widget.onChange,
        onFieldSubmitted: widget.onSubmitted,

        style: TextStyle(color: Color(0xff222B45)),
        decoration: InputDecoration(
          hintText: widget.hintText,

          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          hintStyle: TextStyle(
            fontSize: 15,
            color: Color(0xff8F9BB3),
            fontWeight: FontWeight.w400,
          ),
          filled: false,
          border: InputBorder.none,
          prefixIcon: widget.suffixIcon,
          suffixIcon:
              (widget.isPassword
                  ? GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: SvgPicture.asset(
                        _obscureText
                            ? 'assets/icons/eye-slash.svg'
                            : 'assets/icons/eye.svg',

                        colorFilter: ColorFilter.mode(
                          Color(0xffC5CEE0),
                          BlendMode.srcIn,
                        ),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                  : null),
          errorMaxLines: 1,
          isDense: true,

          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
