import '../model/PersonModel.dart';
import 'package:http/http.dart' as http;

class HttpService {

  static Future<List<PersonModel>> fetchData() async {
    var response = await http.get(
        Uri.parse("https://mysaving.in/IntegraAccount/api/myaddresssample.php"));

    if(response.statusCode==200){
      var data=response.body;
      return personModelFromJson(data);
    }else{
      throw Exception();
    }
  }
}