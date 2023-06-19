import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class CatImages {
  static Uri catImageGenerator = Uri.parse('https://cataas.com/cat?json=true');

  static Future<String?> generateCatImage() async {
    log('CatImages: Start');
    try {
      // log('CatImages: Request image');

      // final http.Response response = await http.get(
      //   catImageGenerator,
      // );

      // log('CatImages: Request successful');

      // Map<String, dynamic> responseBody = jsonDecode(response.body);

      // String imageUrl = 'https://cataas.com';
      // imageUrl += responseBody['url'];

      // log('CatImages: URL = $imageUrl');
      // return imageUrl;
      return 'https://cataas.com/cat/jPOmrcnG9RZ7FRqn';
    } catch (_) {
      log('CatImages: ERROR $_');

      return null;
    }
  }
}
