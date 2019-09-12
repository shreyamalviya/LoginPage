import 'package:http/http.dart' as http;

import 'package:task/view.dart';

String url = 'https://reqres.in/api/login';

loginAttempt(context, email, password) {
  sendRequest(context, email, password);
}

sendRequest(context, email, password) async {
  await http.post(url, body: {"email": email, "password": password}).then(
    (response) {
      showLoginAttempt(context, response.statusCode);
    },
  );
}
