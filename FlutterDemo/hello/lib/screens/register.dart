import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RegistrationForm(),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reconfirmPasswordController =TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  bool isSeller = false;
  bool isBuyer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PlastGo',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Calligraphy',
                ),
              ),
              SizedBox(height: 20.0),
              _buildTextField('Name', nameController),
              _buildTextField('Email', emailController),
              _buildTextField('Password', passwordController),
              _buildTextField('Reconfirm Password', reconfirmPasswordController),
              _buildTextField('Phone Number', phoneNumberController),
              SizedBox(height: 20.0),
              Row(
                children: [
                  Text(
                    'Register as:',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Checkbox(
                    value: isSeller,
                    onChanged: (value) {
                      setState(() {
                        isSeller = value!;
                      });
                    },
                  ),
                  Text('Seller'),
                  Checkbox(
                    value: isBuyer,
                    onChanged: (value) {
                      setState(() {
                        isBuyer = value!;
                      });
                    },
                  ),
                  Text('Buyer'),
                ],
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Add your registration logic here
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
