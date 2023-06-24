import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';
import 'package:instagram/screens/login_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  FocusNode emailfocusnode = FocusNode();
  FocusNode passwordfocusnode = FocusNode();
  @override
  void initState() {
    super.initState();
    emailfocusnode.addListener(() {
      setState(() {});
    });
    passwordfocusnode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 78, 21, 184),
              Colors.purple,
              Colors.purple,
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            rocket(),
            textfields(),
          ],
        ),
      ),
    );
  }

  Widget textfields() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sign in to',
                          textAlign: TextAlign.center,
                          style: AppFonts.gb(
                            fontsize: 20,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/moodinger_logo.png',
                          height: 25,
                          width: 102,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 44),
                    child: TextField(
                      focusNode: emailfocusnode,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 20,
                          color: emailfocusnode.hasFocus
                              ? const Color(0xffF35383)
                              : Colors.white,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide:
                              BorderSide(color: Color(0xffC5C5C5), width: 3.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(
                            width: 3,
                            color: Color(0xffF35383),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 44),
                    child: TextField(
                      focusNode: passwordfocusnode,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 20,
                          color: passwordfocusnode.hasFocus
                              ? const Color(0xffF35383)
                              : Colors.white,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide:
                              BorderSide(color: Color(0xffC5C5C5), width: 3.0),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          borderSide: BorderSide(
                            width: 3,
                            color: Color(0xffF35383),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(130, 45),
                        backgroundColor: AppColors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'sign in',
                        style: AppFonts.gb(
                          fontsize: 16,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do you have an account already?',
                        style: AppFonts.gb(
                          color: const Color.fromARGB(255, 101, 99, 99),
                          fontsize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: AppFonts.gb(
                            color: AppColors.grey,
                            fontsize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget rocket() {
    return Positioned(
      top: 70,
      left: 0,
      right: 0,
      bottom: 0,
      child: Column(
        children: [
          Expanded(
            child: Image.asset('assets/images/rocket.png'),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }
}
