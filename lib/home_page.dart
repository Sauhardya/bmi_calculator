import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/reusable_card.dart';

const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);
const inActiveCardColor = Color(0xFF111328);

class home_page extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<home_page> {
  Color maleCardColor = inActiveCardColor;
  Color femaleCardColor = inActiveCardColor;

  void malecardColorChanger(String gender) {
    //1 relates to male, 2 relates to female.
    if (gender == 'male') {
      // male card pressed.
      if (maleCardColor == inActiveCardColor) {
        maleCardColor = activeCardColor;
      } else {
        maleCardColor = inActiveCardColor;
      }
    }
  }

  void femalecardColorChanger(String gender) {
    if (gender == 'female') {
      // female card pressed.
      if (femaleCardColor == inActiveCardColor) {
        femaleCardColor = activeCardColor;
      } else {
        femaleCardColor = inActiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print("pressed");
                        malecardColorChanger('male');
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: iconContent(
                          icon: FontAwesomeIcons.mars, label: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        femalecardColorChanger('female');
                      });
                    },
                    child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: iconContent(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        )),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}
