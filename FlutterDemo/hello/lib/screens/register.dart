import 'package:flutter/material.dart';

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
  _RegistrationFormState createState() {
    return _RegistrationFormState();
  }
}

class _RegistrationFormState extends State<RegistrationForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reconfirmPasswordController =
      TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  bool isSeller = false;
  bool isBuyer = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/background.jpg'), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'PlastGo',
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 60.0, // Increase font size
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontFamily:
                      'Calligraphy', // Make sure to include your desired font
                ),
              ),
              SizedBox(height: 20.0), // Increased spacing
              _buildTextField('Name', nameController, 40.0), // Decreased height
              _buildTextField(
                  'Email', emailController, 40.0), // Decreased height
              _buildTextField(
                  'Password', passwordController, 40.0), // Decreased height
              _buildTextField('Confirm Password', reconfirmPasswordController,
                  40.0), // Decreased height
              _buildTextField('Phone Number', phoneNumberController,
                  40.0), // Decreased height
              SizedBox(height: 10.0),
              Row(
                children: [
                  Text(
                    'Register as:',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Make the text bold
                    ),
                  ),
                  Checkbox(
                    value: isSeller,
                    onChanged: (value) {
                      setState(() {
                        isSeller = value!;
                      });
                    },
                    checkColor:
                        Colors.white, // Change the color of the checkmark
                    activeColor:
                        Colors.white, // Change the color of the checkbox itself
                  ),
                  Text(
                    'Seller',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Make the text bold
                    ),
                  ),
                  Checkbox(
                    value: isBuyer,
                    onChanged: (value) {
                      setState(() {
                        isBuyer = value!;
                      });
                    },
                    checkColor:
                        Colors.white, // Change the color of the checkmark
                    activeColor:
                        Colors.white, // Change the color of the checkbox itself
                  ),
                  Text(
                    'Buyer',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold, // Make the text bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
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

  Widget _buildTextField(
      String label, TextEditingController controller, double height) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.white, // White text color
              fontWeight: FontWeight.bold, // Bold font weight
              fontSize: 20.0, // Increased font size
            ),
          ),
          SizedBox(height: 5.0),
          SizedBox(
            height: height, // Set the height of the text field
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
