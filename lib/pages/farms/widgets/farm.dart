import 'package:easy_farm/models/Farm.dart';
import 'package:flutter/material.dart';

class FarmWidget extends StatelessWidget {
  Farms _farm;
  FarmWidget(this._farm);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(_farm.attributes.name),
    );
  }
}
