import 'package:flutter/material.dart';

import 'insta_list.dart';

class InstaBody extends StatelessWidget {
  const InstaBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: InstaList()),
      ],
    );
  }
}