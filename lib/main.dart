import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            const Text(
              "CodePlayOn",
              style: TextStyle(color: Colors.blueAccent, fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TextField(
                controller: _userNameController, // Assign controller
                decoration: InputDecoration(
                    hintText: "user name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TextField(
                controller: _passwordController, // Assign controller
                obscureText: true, // Mask the password
                decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Forget password",
                style: TextStyle(color: Colors.blueAccent, fontSize: 13),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Access the text using _userNameController.text and _passwordController.text
                // For example: print(_userNameController.text);
              },
              child: const Text("Login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Does Not have an account ?"),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign in",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
