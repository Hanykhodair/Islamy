import 'package:flutter/material.dart';
import 'package:islamyapp/MyThemeData.dart';

class AhadithTab extends StatelessWidget {
  const AhadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: ElevatedButton(onPressed: (){}, child: Text('Test'),
        style: Theme.of(context).elevatedButtonTheme.style,
      ),
    );
  }
}
