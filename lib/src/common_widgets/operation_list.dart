import 'package:flutter/material.dart';

class OperationList extends StatelessWidget {
  const OperationList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          color: Colors.amber,
          width: double.infinity,
          height: 100,
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          height: 100,
        ),
        Container(
          color: Colors.blue,
          width: double.infinity,
          height: 100,
        ),
        Container(
          color: Colors.brown,
          width: double.infinity,
          height: 100,
        ),
        Container(
          color: Colors.deepOrange,
          width: double.infinity,
          height: 100,
        ),
      ],
    );
  }
}
