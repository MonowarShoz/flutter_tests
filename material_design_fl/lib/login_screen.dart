import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:material_design_fl/first_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
          children: [
            const SizedBox(
              height: 80,
            ),
            const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 50,
              child: Icon(
                Icons.home,
                size: 70,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            _buildTextField(
                'user name', _userNameController, false, Icons.email),
            const SizedBox(
              height: 20,
            ),
            _buildTextField('password', _passController, true, Icons.password),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const FirstScreen(),
                    ));
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Forget Password'),
              style: TextButton.styleFrom(primary: Colors.black),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SignInButton(
                  
                  Buttons.Google,
                  elevation: 5,
                  text: 'Sign in with Google',
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      bool isPassword, IconData icon) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        contentPadding: const EdgeInsets.symmetric(vertical: 5),
        icon: Icon(
          icon,
          size: 30,
        ),
        border: UnderlineInputBorder(),
      ),
    );
  }
}
