import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Form(
                key: formGlobalKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Container(
                          height: 80,
                          width: 80,
                          child: Image.asset("assets/loginsbi.png"),
                        )
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        autofocus: true,
                        controller: emailController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //forgot password screen
                      },
                      child: const Text('Forgot Password', style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),),
                    ),
                    Container(
                        height: 40,
                        width: 330,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.black),
                          ),
                          child: const Text(
                              'Login ', style: TextStyle(fontSize: 15,)),
                          onPressed: () {},
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
