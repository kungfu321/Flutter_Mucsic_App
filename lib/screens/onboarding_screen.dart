import 'package:Flutter_Mucsic_App/constants/AppColor.dart';
import 'package:Flutter_Mucsic_App/routes.dart';
import 'package:Flutter_Mucsic_App/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgAppColor,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img_bgd.png"),
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                color: Color(0XFF3B55E6),
                padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
                child: Text(
                  "YOUR MUSIC.",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
              Container(
                color: Color(0XFF3B55E6).withOpacity(.7),
                padding: EdgeInsets.fromLTRB(24, 10, 24, 10),
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Tuned to you.",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: size.height * .01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(
                      width: size.width * .42,
                      child: RoundedButton(
                          press: () {
                            _handleClick(context);
                          },
                          text: 'Sign up',
                          verticalPadding: size.height * .025),
                    ),
                    SizedBox(
                      width: size.width * .42,
                      child: RoundedButton(
                          text: 'Log in',
                          outline: true,
                          press: () {
                            _handleClick(context);
                          },
                          verticalPadding: size.height * .025),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  _handleClick(context) {
    Navigator.of(context).pushNamed(Routes.browse);
  }
}
