import 'package:flutter/material.dart';
import 'package:travello_ui/six.dart';

class Five extends StatefulWidget {
  const Five({super.key});

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
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
                        left: 40,
                        bottom: 80,
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Positioned(
                        left: 50,
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
                          hintText: 'Enter your email', // Hint text
                          suffixIcon: Icon(Icons.email,
                              color: Colors.white), // Gmail icon
                          border: InputBorder.none, // Remove the default border
                          contentPadding: EdgeInsets.symmetric(
                              vertical:
                                  height * 0.02), // Adjust vertical padding
                        ),
                        style: TextStyle(
                          color: const Color.fromARGB(255, 245, 243,
                              243), // Text color inside the field
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
                          hintText: 'Password', // Hint text
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
                          fillColor: MaterialStateProperty.all(Colors.orange),
                          checkColor: Colors.black,
                          value: _isChecked,
                          onChanged: _handleCheckboxChanged),
                      Text(
                        'Rmember Me',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Forget Password',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 170,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Six()));
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
                        'New Member?',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Six()));
                        },
                        child: Text(
                          'Register Now',
                          style: TextStyle(color: Colors.red, fontSize: 14),
                        ),
                      ),
                    ],
                  )
                ])));
  }
}
