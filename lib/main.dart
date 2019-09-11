import 'package:flutter/material.dart';

import 'package:wave/config.dart';
import 'package:wave/wave.dart';

import 'package:task/request.dart';

void main() => runApp(
      MaterialApp(
        title: 'task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );

class LoginPage extends StatelessWidget {
  final Future<Post> post;

  LoginPage({Key key, this.post}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose(controller) {
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: WaveWidget(
              config: CustomConfig(
                colors: [
                  Color.fromRGBO(25, 118, 210, 0.5),
                  Color.fromRGBO(25, 118, 210, 0.5),
                ],
                heightPercentages: [0.8, 0.82],
                durations: [
                  13000,
                  10000,
                ],
              ),
              size: Size(double.infinity, double.infinity),
              waveFrequency: 2.2,
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'MEDDU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 1 / 10,
                ),
                Container(
                  padding: EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  width: MediaQuery.of(context).size.width * 11 / 12,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 1 / 12,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Username',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: usernameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          hintText: 'example@email.com',
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 1 / 12,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          hintText: '*******',
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.help_outline,
                              color: Colors.black,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forget your password',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 1 / 12,
                      ),
                      GestureDetector(
                        // onTap: loginAttempt(),
                        onTap: null,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 2 / 5,
                          height: MediaQuery.of(context).size.width * 1 / 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.blue.shade600,
                                Colors.lightBlueAccent.shade100,
                              ],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 1 / 16,
                      ),
                      GestureDetector(
                        onTap: null,
                        child: Center(
                          child: Text(
                            'Don\'t have an account? Sign up',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// loginAttempt() {
//   Future<http.Response> fetchPost() {
//     return http.get('https://jsonplaceholder.typicode.com/posts/1');
//   }
// }
