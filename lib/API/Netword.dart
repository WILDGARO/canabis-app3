import 'dart:convert';

import 'package:http/http.dart' as http;





class NetworkHelper {

  final String server = "192.168.203.189";
  final String url;
  final Map<String, dynamic> params;
  NetworkHelper(this.url, this.params);

  Future postData(String jsonData) async {
    try {
      http.Response response = await http
          .post(
            Uri.http(server, url, params),
            headers: {"Content-Type": "application/json"},
            body: jsonData,
          )
          .timeout(const Duration(seconds: 60));
      if (response.statusCode == 200) {
        String data = response.body;

        return jsonDecode(data);
      } else {
        String data = response.body;

        return jsonDecode(data);
      }
    } catch (e) {
      print(e);
  
    }
  }
}
