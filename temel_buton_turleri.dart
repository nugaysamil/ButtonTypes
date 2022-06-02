import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TemelButonlar extends StatelessWidget {
  const TemelButonlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          onLongPress: () {
            debugPrint('Uzun Basıldı');
          },
          child: Text('Text Button'),
        ),
        TextButton.icon(
          style: ButtonStyle(
              //backgroundColor: MaterialStateProperty.all(Colors.red),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.teal;
                }
                if (states.contains(MaterialState.hovered)) {
                  return Colors.orange;
                }
                return null;
              }),
              foregroundColor: MaterialStateProperty.all(Colors.yellow),
              overlayColor: MaterialStateProperty.all(Colors.black)),
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Text Button with Icon'),
        ),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            label: Text('Elevated with Icon')),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.red, onPrimary: Colors.yellow),
            child: Text('Elevated button')),
        OutlinedButton(onPressed: () {}, child: Text('Outlined button')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(color: Colors.purple, width: 2)),
            label: Text('Outlined with Icon')),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.add),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.red, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            label: Text('Outlined with Icon')),
      ],
    );
  }
}
