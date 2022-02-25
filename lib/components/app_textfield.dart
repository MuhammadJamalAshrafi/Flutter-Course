import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {

  final String? placeholder;
  final double marginTop;
  final int maximumLines;
  final String text;
  final double paddingAll;
  final bool? isIcon;

  AppTextField({
    this.placeholder,
    required this.marginTop,
    required this.maximumLines,
    required this.text,
    required this.paddingAll,
    this.isIcon
  });



  @override
  Widget build(BuildContext context) {
    TextEditingController myController = TextEditingController()..text = text;
    return Container(
      margin: EdgeInsets.only(top: marginTop),
      padding: EdgeInsets.all(paddingAll),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(
              color: const Color(0xFF5D5D67),
              width: 1
          ),
          borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white, fontSize: 15),
        maxLines: maximumLines,
        controller: myController,
        decoration: InputDecoration(
            prefixIcon: (isIcon == true) ? (const Icon(Icons.search_sharp, color: Color(0xFF5D5D67))) : null,
            hintText: placeholder,
            hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15),
            border: InputBorder.none
        ),
      ),
    );
  }
}
