import 'package:flutter/material.dart';
import 'package:protein_shop/home_page.dart';
import 'components/custom_input.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey[900],
                  ),
                  child: Icon(
                    Icons.run_circle_sharp,
                    size: 40,
                    color: Colors.blueGrey[400],
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                //Welcome message
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.blueGrey[900],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // subtitle
                Text(
                  'Join our vast community of healthy lifestyle and get the best in life choices',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.blueGrey[500],
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(
                  height: 25,
                ),

                // username input
                CustomInput(
                    controller: emailController,
                    hintText: 'email/username',
                    obscureText: false),

                const SizedBox(
                  height: 20,
                ),

                //password input
                CustomInput(
                    controller: passwordController,
                    hintText: 'password',
                    obscureText: true),

                const SizedBox(
                  height: 10,
                ),

                //button for logging in
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage()
                      )
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          letterSpacing: 0.9,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10,
                ),

                // register button and social links(UI)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.blueGrey[400],
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.9,
                      ),
                    ),
                    Text(
                      "Create one",
                      style: TextStyle(
                        color: Colors.blue[400],
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.9,
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),

                Center(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      color: Colors.blueGrey[400],
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.9,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
