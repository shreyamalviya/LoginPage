// import 'package:http/http.dart' as http;

// class Post {
//   final String username;
//   final String password;
 
//   Post({this.username, this.password});
 
//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       username: json['username'],
//       password: json['password'],
//     );
//   }
 
//   Map toMap() {
//     var map = new Map<String, dynamic>();
//     map["username"] = username;
//     map["password"] = password;
 
//     return map;
//   }
// }

// Future<Post> createPost(String url, {Map body}) async {
//   return http.post(url, body: body).then((http.Response response) {
//     final int statusCode = response.statusCode;
 
//     if (statusCode < 200 || statusCode > 400 || json == null) {
//       throw new Exception("Error while fetching data");
//     }
//     return Post.fromJson(json.decode(response.body));
//   });
// }