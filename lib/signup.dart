import 'package:flutter/material.dart';
import 'package:laghazala/login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                    Center(
      child: Image.asset(
        "assets/images/A.png",
        width: 150, // ajustez la largeur de l'image selon vos besoins
        height: 150, // ajustez la hauteur de l'image selon vos besoins
      ),
    ),
                  const Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF01579B),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Create your account",
                    style: TextStyle(fontSize: 15,color: Color(0xFF01579B),),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                  
  decoration: InputDecoration(
    hintText: "Username",
    prefixIcon: const Icon(Icons.person,color: Color(0xFF01579B),),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
    ),
  ),
),

                
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
    prefixIcon: const Icon(Icons.email,color: Color(0xFF01579B),),
    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),

                      ),
                    ),
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
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      prefixIcon: const Icon(Icons.password,color: Color(0xFF01579B),),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                  onPressed: () {
                        
                        },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20,color: Colors.orange,),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(child: Text("Or")),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/login_signup/google.png'),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 10),
                      
                        const Text(
                          "Sign In with Google",
                          style: TextStyle(fontSize: 16, color: Colors.orange,),
                        ),
                      ],
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.orange, padding: const EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: const BorderSide(color: Colors.orange,),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Color(0xFF01579B),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
