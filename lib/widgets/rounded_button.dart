import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;
  final bool outline;

  const RoundedButton(
      {Key key,
      @required this.text,
      this.press,
      this.verticalPadding = 24,
      this.horizontalPadding = 24,
      this.outline = false,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(
            vertical: verticalPadding, horizontal: horizontalPadding),
        decoration: BoxDecoration(
          color: outline ? Colors.transparent : Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(width: 1.5, color: Colors.white),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 30,
              color: Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: outline ? Colors.white : Color(0xFF394FEA)),
        ),
      ),
    );
  }
}
