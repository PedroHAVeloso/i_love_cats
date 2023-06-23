import 'dart:developer';
import 'package:http/http.dart' as http;

abstract class Api {
  late final String apiUrl;
  late final Uri apiUri = Uri.parse(apiUrl);

  Future<bool> checkConnection() async {
    log("API: check api connection");
    http.Response response = await http.get(apiUri);

    if (response.statusCode == 200) {
      log("API: connection success");
      return true;
    }

    log("API: connection fail");
    return false;
  }
}

class CatFacts extends Api {
  @override
  get apiUrl => "https://cat-fact.herokuapp.com/facts";

  getFact() async {
    http.Response response = await http.get(apiUri);

    response.body;
  }
}
