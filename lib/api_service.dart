import 'dart:developer';
import 'package:http/http.dart' as http;

import 'resource/app_class.dart';

class ApiService {
  static final ApiService _apiService = ApiService._internal();

  factory ApiService() {
    return _apiService;
  }

  ApiService._internal();

  // StoryblokResponse? cache;

  Future getData() async {
    try {
      var url = Uri.parse(AppClass.api);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        // final responseData = StoryblokResponse.fromJson(response.body);
        // cache = responseData;

        // print(cache);

        // return responseData;
      }
    } catch (e, s) {
      log('Api error:', error: e, stackTrace: s);
    }
    return null;
  }
}
