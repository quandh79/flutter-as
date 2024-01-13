import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User {
  String name;
  String phone;

  User({required this.name, required this.phone});
}

class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {

  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _phoneController = TextEditingController();
  List<User> _userList = [];

  String _message = "";



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                        hintText: "Input your name",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: _phoneController,
                      decoration: InputDecoration(
                        hintText: "Input your phonenumber",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      String name = _userNameController.text;
                      String phone = _phoneController.text;

                        User newUser = User(name: name, phone: phone);
                        _userList.add(newUser);

                        _userNameController.clear();
                        _phoneController.clear();

                        setState(() {
                          _message = "User added successfully";
                        });

                    }
                  },
                  child: const Text('Submit'),
                ),
              ),
              Text(_message),
              Expanded(
                child: ListView.builder(
                  itemCount: _userList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_userList[index].name),
                      subtitle: Text(_userList[index].phone),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

