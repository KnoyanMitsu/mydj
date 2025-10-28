import 'package:flutter/material.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(padding: EdgeInsets.symmetric(horizontal: 50,vertical: 50),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Email"
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
              labelText: "Password"
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: () => {}, child: Text("Login"))
        ],
      ),
      ),
    );
  }
}