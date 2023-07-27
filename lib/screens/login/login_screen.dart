import 'package:edume_zone/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isAnimate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _isAnimate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("WelCome!"),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            top: size.height * .15,
            right: _isAnimate ? size.width * .25 : -size.width * .5,
            width: size.width * .5,
            duration: Duration(seconds: 1),
            child: Image.asset("assets/logo_workspace.png"),
          ),
          AnimatedPositioned(
            bottom: size.height * .15,
            left: _isAnimate ? size.width * .05 : -size.width * .5,
            width: size.width * .9,
            height: size.height * .06,
            duration: const Duration(seconds: 1),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 223, 255, 187),
                shape: const StadiumBorder(),
                elevation: 1,
              ),
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              icon: Image.asset(
                "assets/ic_google.png",
                height: size.height * .03,
              ),
              label: RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  children: [
                    TextSpan(text: "Login with "),
                    TextSpan(text: "Google", style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
