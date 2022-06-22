import 'package:flutter/material.dart';


class BodyContent extends StatelessWidget {
  const BodyContent({
    Key? key, required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          height: 200,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
