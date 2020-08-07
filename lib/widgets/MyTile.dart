import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  //Zdefiniowane stałe, które muszą być podane przy wywoływaniu tego widgetu
  final String eduName;
  final String eduTime;
  const MyTile({
    Key key,
    this.eduName,
    this.eduTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(eduName),
      subtitle: Text(eduTime),
    );
  }
}
