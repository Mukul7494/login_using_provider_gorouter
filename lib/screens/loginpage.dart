import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import '../user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var textUserNameController = TextEditingController();
    var textPasswordController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Using Provider"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: [
                TextFormField(
                  controller: textUserNameController,
                  decoration: const InputDecoration(
                    hintText: ("Enter Username"),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  controller: textPasswordController,
                  decoration: const InputDecoration(
                    hintText: ("Enter Password"),
                  ),
                ),
                ElevatedButton(
                  // Provider.of<User>(context, listen: false),
                  onPressed: () {
                    // GoRouter.of(context).go("/home");
                    context.go("/Homepage");
                  },
                  child: const Text("Login"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
