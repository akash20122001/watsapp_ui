import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  _AuthenticationPageState createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Enter your phone number',
              style: TextStyle(
                  color: Color(0xff128c7e),
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              ' Whatsapp will send an SMS message to verify your',
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            RichText(
              text: TextSpan(
                  text: 'phone number.',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                  children: [
                    TextSpan(
                        text: " What's my number?",
                        style: TextStyle(
                          color: Colors.blue[300],
                        )),
                  ]),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 250,
              child: DropdownButton<String>(
                style: TextStyle(
                    color: Colors.grey[900], fontWeight: FontWeight.bold),
                value: 'India',
                underline: Container(color: Color(0xff128c7e), height: 2.0),
                elevation: 0,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xff128c7e),
                ),
                isExpanded: true,
                items: <String>['India', 'United States', 'Canada', 'England']
                    .map((e) {
                  return DropdownMenuItem(
                    value: e,
                    child: Container(
                      child: Text(
                        e,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.grey[800]),
                      ),
                      alignment: Alignment.center,
                    ),
                  );
                }).toList(),
                onChanged: (value) {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff128c7e)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff128c7e)),
                        ),
                        hintText: '+91',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 160,
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff128c7e)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff128c7e)),
                        ),
                        hintText: '',
                        hintStyle: TextStyle(
                          color: Colors.grey[700],
                        )),
                    // Row(
                    //   children: [
                    //     Container(
                    //       height: 30,
                    //       child: TextField(
                    //         decoration: InputDecoration(
                    //             hintText: '+91',
                    //             hintStyle: TextStyle(
                    //               color: Colors.grey[700],
                    //             )),
                    //       ),
                    //     ),
                    //   ],
                    // )
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Carrier SMS charges may apply',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 90,
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '\homescreen');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent[700],
                  ),
                  child: Text('NEXT')),
            ),
          ]),
        ));
  }
}
