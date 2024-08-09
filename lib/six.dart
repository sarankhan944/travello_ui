import 'package:flutter/material.dart';
import 'package:travello_ui/seven.dart';

class Six extends StatefulWidget {
  const Six({super.key});

  @override
  State<Six> createState() => _SixState();
}

class _SixState extends State<Six> {
  bool _isChecked = false; // State variable to keep track of checkbox status

  void _handleCheckboxChanged(bool? value) {
    setState(() {
      _isChecked = value ?? false; // Update the state with the new value
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            height: height * height,
            width: width * width,
            color: Colors.white,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                  ),
                  Stack(
                    children: [
                      Container(
                          width: 300,
                          child: Image(
                            image: AssetImage('images/pag5.png'),
                            fit: BoxFit.cover,
                          )),
                      Positioned(
                        left: 30,
                        bottom: 80,
                        child: Text(
                          'Get Started ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 26),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        bottom: 60,
                        child: Text('sign in to access your account',
                            style: TextStyle(
                              color: Colors.black,
                            )),
                      )
                    ],
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 127, 7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Full Name', // Hint text
                          suffixIcon: Icon(Icons.man,
                              color: Colors.white), // Gmail icon
                          border: InputBorder.none, // Remove the default border
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  height * 0.02), // Adjust vertical padding
                        ),
                        style: TextStyle(
                          color: Colors.white, // Text color inside the field
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 127, 7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Valid Email', // Hint text
                          suffixIcon: Icon(Icons.password,
                              color: Colors.white), // Gmail icon
                          border: InputBorder.none, // Remove the default border
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  height * 0.02), // Adjust vertical padding
                        ),
                        style: TextStyle(
                          color: Colors.white, // Text color inside the field
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 127, 7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone No', // Hint text
                          suffixIcon: Icon(Icons.phone_android,
                              color: Colors.white), // Gmail icon
                          border: InputBorder.none, // Remove the default border
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  height * 0.02), // Adjust vertical padding
                        ),
                        style: TextStyle(
                          color: Colors.white, // Text color inside the field
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 127, 7),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Strong Password', // Hint text
                          suffixIcon: Icon(Icons.password,
                              color: Colors.white), // Gmail icon
                          border: InputBorder.none, // Remove the default border
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  height * 0.02), // Adjust vertical padding
                        ),
                        style: TextStyle(
                          color: Colors.white, // Text color inside the field
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          fillColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 252, 251, 251)),
                          checkColor: Colors.black,
                          value: _isChecked,
                          onChanged: _handleCheckboxChanged),
                      Expanded(
                        child: Text(
                          'By checking the box you agree to our Terms and Conditions',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 100,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Seven()));
                    },
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Text(
                          'Next >',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a Member?',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Seven()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ),
                    ],
                  )
                ])));
  }
}
