import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:starting_mvvm_architecture/users_list/models/users_list_model.dart';
import 'package:starting_mvvm_architecture/users_list/repo/api_status.dart';
import 'package:starting_mvvm_architecture/utils/constant.dart';


class UserServices {
  static Future<Object> getUsers() async {
    try {
      var url = Uri.parse(userList);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        return Succes(code: 200, response: usersListFromJson(response.body));
      }
      return Failed(code: userInvalidResponse, errorResponse: "Invalid Response");
    } on HttpException{
      return Failed(code: noInternet, errorResponse: "No Internet Connection");
    } on FormatException{
      return Failed(code: invalidFormat, errorResponse: "Invalid Format");
    }
    catch(e){
      return Failed(code: unknownError, errorResponse: "Unknown Error");
    }
  }
}