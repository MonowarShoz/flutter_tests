import 'package:flutter/material.dart';
import 'package:flutter_login_test/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Container(
              height: 60,
              child: Text(
                'Login Screen',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,color: Colors.blue),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height / 4,
            // ),
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.0),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Username',
                            prefixIcon: Icon(
                              Icons.account_box,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.0),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              size: 30.0,
                            ),
                          ),
                          obscureText: true,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            alignment: Alignment.center,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},

                        child: Text('Dont have account? Sign up',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      ),
                       TextButton(
                        onPressed: () {},

                        child: Text('Forget Password?',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
