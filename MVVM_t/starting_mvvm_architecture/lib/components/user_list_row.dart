import 'package:flutter/material.dart';
import 'package:starting_mvvm_architecture/users_list/models/users_list_model.dart';

import 'app_title.dart';


class UserListRow extends StatelessWidget {
  final UsersList usersList;
  final VoidCallback press;
  const UserListRow({Key? key, required this.usersList, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppTitle(text: usersList.name,),
            Text(usersList.email),
          ],
        ),
      ),
    );
  }
}
