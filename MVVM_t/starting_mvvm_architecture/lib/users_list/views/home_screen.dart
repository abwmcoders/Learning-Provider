import 'package:flutter/material.dart';
import 'package:starting_mvvm_architecture/components/app_loading.dart';
import 'package:starting_mvvm_architecture/components/user_list_row.dart';
import 'package:starting_mvvm_architecture/users_list/models/users_list_model.dart';
import 'package:starting_mvvm_architecture/users_list/view_models/users_view_model.dart';
import 'package:provider/provider.dart';
import 'package:starting_mvvm_architecture/utils/navigation_utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("M.V.V.M"),
        centerTitle: true,
      ),
      body: Container(
        child: _ui(userViewModel),
      ),
    );
  }
}

_ui(UserViewModel userViewModel) {
  if (userViewModel.loading) {
    return const AppLoading();
  }
  return SizedBox(
    height: 700,
    child: ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: userViewModel.userListModel.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (BuildContext context, int index) {
        UsersList usersList = userViewModel.userListModel[index];
        return UserListRow(
          usersList: usersList,
          press: () async {
            openDetails(context);
          },
        );
      },
    ),
  );
}
