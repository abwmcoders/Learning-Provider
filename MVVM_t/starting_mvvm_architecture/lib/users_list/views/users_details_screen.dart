import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:starting_mvvm_architecture/users_list/view_models/users_view_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(

      ),
    );
  }
}
