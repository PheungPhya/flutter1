import 'package:flutter/material.dart';
import 'package:validate_form/drawer_page.dart';
import 'package:validate_form/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _controller = TextEditingController();
  final _forkey = GlobalKey<FormState>();
  FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() => print('Focus noted is update'));
  }

  void setFocus() {
    FocusScope.of(context).requestFocus(_focusNode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: const Text('Form Validate'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Form(
            key: _forkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name Can Not be Empty';
                      }
                      if (value.contains('[') ||
                          value.contains(']') ||
                          value.contains('@')) {
                        return 'Enter a Valid Name';
                      }
                      if (value.toUpperCase() != 'PHYA') {
                        return 'Wrong name';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
                    controller: _controller,
                    decoration: const InputDecoration(
                        labelText: 'Enter Your Name',
                        hintText: 'Name',
                        border: OutlineInputBorder())),
                ElevatedButton(
                    onPressed: () {
                      setFocus();
                      if (_forkey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Process Data ')));
                        _forkey.currentState!.reset();
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const HomePage()));
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                          (Route<dynamic> route) => false, // Remove all routes
                        );
                      }
                    },
                    child: const Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
