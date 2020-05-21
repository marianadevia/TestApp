import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import'../app_config.dart';

class AuthAPI{

register(String username, String email, String password) async{
  final url ="${AppConfig.apiHost}/register";
  final response = await http.post(url, 
  body: {"username":username,"email":email,"password": password});
  
}




}