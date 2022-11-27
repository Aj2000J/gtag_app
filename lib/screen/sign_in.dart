// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, sized_box_for_whitespace, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
// import 'package:godriver_app/screen/menu_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gtag_app/provider/auth_provider.dart';
import 'package:gtag_app/widget/loading_view.dart';
import 'package:gtag_app/widget/primary_button.dart';
import 'package:provider/provider.dart';

// import 'package:sign_button/sign_button.dart';

// ignore: depend_on_referenced_packages
// import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

final TextEditingController emailC = TextEditingController();
final TextEditingController passwordC = TextEditingController();
final GlobalKey<FormState> keyForm = GlobalKey();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: Form(
        key: keyForm,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Form(
            child: Center(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Image.asset('assets/images/gtag.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Center(
                        child: Text(
                          "Welcome Back",
                          style: GoogleFonts.aBeeZee(
                              fontSize: 40, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Sign in to continue",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    TextFormField(
                      controller: emailC,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 97, 79, 79),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 188, 91, 91),
                          ),
                        ),
                        label: Text(
                          "Email ID",
                          style: GoogleFonts.aBeeZee(),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: false,
                      controller: passwordC,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: const TextStyle(
                          color: Color.fromARGB(255, 97, 79, 79),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 26, 236, 229),
                          ),
                        ),
                        label: Text(
                          "Password",
                          style: GoogleFonts.aBeeZee(),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 200),
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.aBeeZee(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 105, 103, 103),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Consumer<AuthProvider>(
                      builder: (context, bloc, _) {
                        return bloc.isLoading
                            ? const LoadingView()
                            : PrimaryButton(
                                child: "SIGN IN",
                                onTap: () async {
                                  bool isValid =
                                      keyForm.currentState!.validate();
                                  if (isValid) {
                                    await bloc.login(context,
                                        email: emailC.text,
                                        password: passwordC.text);
                                  }
                                },
                              );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // GestureDetector(
  //   onTap: () => Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (_) => const SignInPage(),
  //     ),
  //   ),
  //   child: Center(
  //     child: RichText(
  //       text: TextSpan(
  //         children: [
  //           TextSpan(
  //             text: "Visit our websites ",
  //             style: GoogleFonts.aBeeZee(color: Colors.black),
  //           ),
  //           TextSpan(
  //             text: "Click Here",
  //             style:
  //                 GoogleFonts.aBeeZee(color: Colors.pinkAccent),
  //           )
  //         ],
  //       ),
  //     ),
  //   ),
}
