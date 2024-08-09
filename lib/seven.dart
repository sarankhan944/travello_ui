import 'package:flutter/material.dart';
import 'package:travello_ui/home.dart';

class Seven extends StatefulWidget {
  const Seven({super.key});

  @override
  State<Seven> createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  // A list of TextEditingControllers for each TextField

  @override
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: height * 0.2,
              width: width * width,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Almost There ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please enter the 6 digit code We sent to saranhafi24@gmail.com ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: height * 0.04,
                    width: width * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center, // Center the text cursor
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the underline
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center, // Center the text cursor
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the underline
                        // Adjust padding if needed
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center, // Center the text cursor
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the underline
                        // Adjust padding if needed
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center, // Center the text cursor
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the underline
                        // Adjust padding if needed
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center, // Center the text cursor
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the underline
                        // Adjust padding if needed
                      ),
                    ),
                  ),
                  Container(
                    height: height * 0.04,
                    width: width * 0.07,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center, // Center the text cursor
                      decoration: InputDecoration(
                        border: InputBorder.none, // Remove the underline
                        // Adjust padding if needed
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: height * 0.06,
                  width: width * 0.04,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Verify',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'Didn’t receive any code? Resend Again ',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Text(
                'Request a new code in 00:30s ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
