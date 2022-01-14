import 'package:flutter/cupertino.dart';
import 'package:starting_mvvm_architecture/users_list/models/users_list_model.dart';
import 'package:starting_mvvm_architecture/users_list/repo/api_status.dart';
import 'package:starting_mvvm_architecture/users_list/repo/user_services.dart';

class UserViewModel extends ChangeNotifier{
  late bool _loading = false;
  late List<UsersList> _userListModel = [];
  late UserError _userError;

  bool get loading => _loading;
  List<UsersList> get userListModel => _userListModel;
  UserError get userError => _userError;

  setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }
  UserViewModel(){
    getUsers();
  }

  setUserError(UserError userError) {
    _userError = userError;
  }

  setUserListModel(List<UsersList> userListModel) async {
    _userListModel = userListModel;
  }

  getUsers() async {
    setLoading(true);
    var response = await UserServices.getUsers();
    if(response is Succes){
      setUserListModel(response.response as List<UsersList>);
    }
    if(response is Failed){
      return "Error response";
    }
    setLoading(false);
  }
}

class UserError {
}
