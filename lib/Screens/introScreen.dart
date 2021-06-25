import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                    color: Color(0xff128c7e),
                    fontSize: 31,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80,
              ),
              Image.asset(
                'assets/SignupScreenImage.png',
                height: 250,
              ),
              SizedBox(
                height: 85,
              ),
              RichText(
                text: TextSpan(
                    text: 'Read our ',
                    style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Colors.blue[300],
                          )),
                      TextSpan(
                          text: '. Tap "Agree and continue" to',
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontWeight: FontWeight.normal))
                    ]),
              ),
              RichText(
                text: TextSpan(
                    text: 'accept the ',
                    style: TextStyle(
                        color: Colors.grey[700], fontWeight: FontWeight.normal),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Terms of Service.',
                          style: TextStyle(
                            color: Colors.blue[300],
                          )),
                    ]),
              ),
              SizedBox(height: 25),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '\authenticationScreen');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent[700],
                    ),
                    child: Text('AGREE AND CONTINUE')),
              ),
              SizedBox(height: 42),
              Text(
                'from',
                style: TextStyle(color: Colors.grey[700]),
              ),
              SizedBox(height: 5),
              Text(
                'FACEBOOK',
                style:
                    TextStyle(letterSpacing: 2, color: Colors.greenAccent[700]),
              )
            ],
          ),
        ));
  }
}
