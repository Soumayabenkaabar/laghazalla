import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laghazala/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _header(context),
              _inputField(context),
              _forgotPassword(context),
              _signup(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
  return Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Center(
      child: Image.asset(
        "assets/images/A.png",
        width: 150, // ajustez la largeur de l'image selon vos besoins
        height: 150, // ajustez la hauteur de l'image selon vos besoins
      ),
    ),
    Text(
      "Welcome Back",
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Color(0xFF01579B)),
    ),
    Text(
      "Enter your credentials to login",
      style: TextStyle(color: Color(0xFF01579B)),
    ),
  ],
);

  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
             decoration: InputDecoration(
    hintText: "Username",
    prefixIcon: const Icon(Icons.person,color: Color(0xFF01579B),),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
    ),),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.password,color: Color(0xFF01579B),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
                  onPressed: () {
                        
                        },
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 20,color: Colors.orange,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
      ],
    );
  }

  _forgotPassword(context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Forgot password?",
        style: TextStyle(color: Color(0xFF01579B),),
      ),
    );
  }

  _signup(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Dont have an account? "),
        TextButton(
          onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage()),
                          );
                        },
            child: const Text("Sign Up", style: TextStyle(color: Color(0xFF01579B),),)
        )
      ],
    );
  }
}