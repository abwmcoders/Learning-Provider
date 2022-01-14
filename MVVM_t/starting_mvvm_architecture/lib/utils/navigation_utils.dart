import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starting_mvvm_architecture/users_list/views/users_details_screen.dart';

void openDetails(BuildContext context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsScreen()));
}