import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  //Zdefiniowane stałe, które muszą być podane przy wywoływaniu tego widgetu
  final String skill;
  final double level;

  const SkillWidget({
    Key key,
    this.skill,
    this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(skill),
        SizedBox(
          width: MediaQuery.of(context).size.width / 15,
        ),
        //Expanded pozwala na zajęcie maksymalnej wolnej przestrzeni
        Expanded(
          child: LinearProgressIndicator(
            value: level,
          ),
        ),
      ],
    );
  }
}
