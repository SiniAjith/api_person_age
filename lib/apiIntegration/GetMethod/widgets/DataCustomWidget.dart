import 'package:flutter/material.dart';

import '../model/PersonModel.dart';

class DataCustom extends StatelessWidget {

  final PersonModel dataList;
  DataCustom(this.dataList);


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(dataList.name),

subtitle: Column(
  children: [
    Row(
      children: [
        Text(dataList.age),
        Text(dataList.address)
      ],
    )
  ],
)
      ),
    );

  }
}
