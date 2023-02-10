import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: Appbar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }

  Appbar({required Text title}) {}
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Redis',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Sign In',
                style: TextStyle(fontSize: 30),
              )),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "User Name",
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                focusColor: Colors.deepOrange,
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.deepOrange),
                    borderRadius: BorderRadius.circular(5)),
                labelText: 'Password',
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              print('Forgot password');
            },
            child: const Text(
              'Forgot Password',
            ),
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
          Card(
            color: Colors.deepOrange,
            elevation: 5,
            shadowColor: Colors.lightGreenAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.info, size: 20, color: Colors.white)),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Welcome to the Application",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
