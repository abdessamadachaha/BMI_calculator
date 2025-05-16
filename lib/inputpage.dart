import 'package:bmi/IntentSex.dart';
import 'package:bmi/Reusabledcard.dart';
import 'package:bmi/gendre.dart';
import 'package:flutter/material.dart';

const inactiveCard = Color(0Xff111328);
const activeCard = Color(0xFF1D1F33);

class Inputpage extends StatefulWidget {
  const Inputpage({super.key});

  @override
  State<Inputpage> createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {
   
    Color maleCardColor = inactiveCard;
    Color femaleCardColor = inactiveCard;

    void updateGendre(Gendre sex) {
      if (sex == Gendre.Male) {
        if (maleCardColor == inactiveCard) {
          maleCardColor = activeCard;
          femaleCardColor = inactiveCard;
        } else {
          maleCardColor = inactiveCard;
        }
      } else if (sex == Gendre.Female) {
        if (femaleCardColor == inactiveCard) {
          femaleCardColor = activeCard;
          maleCardColor = inactiveCard;
        } else {
          femaleCardColor = inactiveCard;
        }
      }
    }
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(color: colorScheme.onPrimary),
        ),
        centerTitle: true,
        elevation: 10.0,
        shadowColor: colorScheme.primary.withOpacity(0.6),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap: () {
                          setState(() {
                            updateGendre(Gendre.Male);
                          });
                        },
                      child: Reusablecard(
                        color: maleCardColor,
                        cardChild: IntentSex(
                          color: colorScheme.onSurface,
                          sex: Icons.male,
                          nameSex: 'MALE',
                        ),
                      ),
                      
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: GestureDetector(
                       onTap: () {
                        setState(() {
                          updateGendre(Gendre.Female);
                        });
                      },
                      child: Reusablecard(
                        color: femaleCardColor,
                        cardChild: IntentSex(
                          color: colorScheme.onSurface,
                          sex: Icons.female,
                          nameSex: 'FEMALE',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Reusablecard(color: colorScheme.surface),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Reusablecard(color: colorScheme.surface),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Reusablecard(color: colorScheme.surface),
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 10.0),
            color: colorScheme.secondary,
            width: double.infinity,
            height: 80.0,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {},
              child: Text(
                'CALCULATE YOUR BMI',
                style: TextStyle(color: colorScheme.onSecondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
