import 'package:flutter/material.dart';

Padding searchWidget({onChanged}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon: Image.asset("assets/icons/search.png"),
              hintText: "Search here",

              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF232939)..withValues(alpha: 0.8),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(width: 1, color: Color(0xffB2BACD)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(width: 1, color: Color(0xffB2BACD)),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(width: 1, color: Color(0xffB2BACD)),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(width: 1, color: Color(0xffB2BACD)),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(width: 1, color: Color(0xffB2BACD)),
              ),
            ),
          ),
        ),

        Container(
          height: 51,
          width: 51,
          margin: EdgeInsets.only(left: 12),
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(width: 1, color: Color(0xffB2BACD)),
          ),
          child: Image.asset('assets/icons/sort.png'),
        ),
      ],
    ),
  );
}
