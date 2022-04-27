import 'dart:developer';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => currentWidth >= 600;
    bool isMobile(BuildContext context) => currentWidth < 600;
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final GlobalKey<FormState> _hellokey = GlobalKey<FormState>();
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _hellokey,
          child: SingleChildScrollView(
            child: Container(
                height: currentHeight,
                width: currentWidth,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                    color: isDesktop(context)
                        ? Colors.blue.shade100
                        : Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey, blurRadius: 1)
                    ]),
                margin: isDesktop(context) ? const EdgeInsets.all(20) : null,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    if (isDesktop(context))
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Image.asset("assets/flutter dash.png"),
                              const Text("Hello Flutter")
                            ],
                          )),
                          Expanded(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50, vertical: 10),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                    maxLength: 50,
                                    keyboardType: TextInputType.name,
                                    validator: ((value) {
                                      String pattern =
                                          r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                      return RegExp(pattern).hasMatch(value!)
                                          ? null
                                          : 'Enter Valid Email';
                                    }),
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      counterText: "",
                                      // prefixText: widget.prefixtext,
                                      enabled: true,
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 12),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.red[700]!,
                                          width: 0.5,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.red[700]!,
                                          width: 0.5,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.grey[200]!,
                                          width: 0.1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.grey[200]!,
                                          width: 0.00000001,
                                        ),
                                      ),

                                      hintText: "Email Please",
                                      // labelText: widget.lableText,
                                      errorStyle: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: 9,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  child: TextFormField(
                                    textInputAction: TextInputAction.next,
                                    textCapitalization:
                                        TextCapitalization.words,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                    maxLength: 50,
                                    keyboardType: TextInputType.name,
                                    validator: ((value) {
                                      if (value!.length < 8) {
                                        return "Please enter number more than 8 digits";
                                      }
                                      return null;
                                    }),
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                      counterText: "",
                                      // prefixText: widget.prefixtext,
                                      enabled: true,
                                      isDense: true,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 14, horizontal: 12),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.red[700]!,
                                          width: 0.5,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.red[700]!,
                                          width: 0.5,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.grey[200]!,
                                          width: 0.1,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: Colors.grey[200]!,
                                          width: 0.00000001,
                                        ),
                                      ),

                                      hintText: "Password ",
                                      // labelText: widget.lableText,
                                      errorStyle: TextStyle(
                                        color: Colors.red[700],
                                        fontSize: 9,
                                      ),
                                      hintStyle: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                // Container(
                                //     margin: const EdgeInsets.all(10),
                                //     height: 60,
                                //     width: 300,
                                //     child: TextFormField(
                                //         validator: ((value) {
                                //           String pattern =
                                //               r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                //           return RegExp(pattern)
                                //                   .hasMatch(value!)
                                //               ? null
                                //               : 'Enter Valid Email';
                                //         }),
                                //         textInputAction: TextInputAction.next,
                                //         decoration: InputDecoration(
                                //           isDense: true,
                                //           hintText: 'Username',
                                //           hintStyle:
                                //               const TextStyle(fontSize: 12),
                                //           border: OutlineInputBorder(
                                //             borderRadius:
                                //                 BorderRadius.circular(12),
                                //             borderSide: const BorderSide(
                                //               width: 0,
                                //               style: BorderStyle.none,
                                //             ),
                                //           ),
                                //           fillColor: Colors.white,
                                //           filled: true,
                                //         ))),
                                // Container(
                                //     margin: const EdgeInsets.all(10),
                                //     height: 60,
                                //     width: 300,
                                //     child: TextFormField(
                                //         style: const TextStyle(fontSize: 12),
                                //         validator: ((value) {
                                //           if (value!.length < 8) {
                                //             return "Please enter number more than 8 digits";
                                //           }
                                //           return null;
                                //         }),
                                //         textInputAction: TextInputAction.next,
                                //         decoration: InputDecoration(
                                //           isDense: true,
                                //           contentPadding:
                                //               const EdgeInsets.symmetric(
                                //             vertical: 15,
                                //             horizontal: 10,
                                //           ),
                                //           hintText: 'Password',
                                //           hintStyle:
                                //               const TextStyle(fontSize: 12),
                                //           border: OutlineInputBorder(
                                //             borderRadius:
                                //                 BorderRadius.circular(12),
                                //             borderSide: const BorderSide(
                                //               width: 1,
                                //               style: BorderStyle.none,
                                //             ),
                                //           ),
                                //           fillColor: Colors.white,
                                //           filled: true,
                                //         ))),
                                const SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 50),
                                  child: InkWell(
                                    onTap: (() {
                                      if (_hellokey.currentState!.validate()) {
                                        ScaffoldMessenger.of(context)
                                            .removeCurrentSnackBar();
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(const SnackBar(
                                          backgroundColor: Colors.green,
                                          content: Text('Awesome Snackbar!'),
                                        ));
                                        print('okay');
                                      }
                                    }),
                                    child: Container(
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.green,
                                      ),
                                      child: const Text(
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text("Forgot password?"),
                                    Text("Sign up "),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    if (isMobile(context))
                      Column(
                        children: [
                          const SizedBox(
                            height: 80,
                          ),
                          Image.asset("assets/flutter dash.png"),
                          const SizedBox(
                            height: 80,
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller: emailController,
                              validator: ((value) {
                                String pattern =
                                    r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                                return RegExp(pattern).hasMatch(value!)
                                    ? null
                                    : 'Enter Valid Email';
                              }),
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                errorStyle: const TextStyle(fontSize: 8),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 10.0),
                                hintText: 'Username',
                                hintStyle: const TextStyle(fontSize: 11),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 48,
                            child: TextFormField(
                              validator: ((value) {
                                if (value!.length < 8) {
                                  return "Please enter number more than 8 digits";
                                }
                                return null;
                              }),
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: const TextStyle(fontSize: 11),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          InkWell(
                            onTap: () {
                              if (_hellokey.currentState!.validate()) {
                                log("success");
                              }
                            },
                            child: Container(
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.pink,
                              ),
                              child: const Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Forgot password?"),
                              Text("Sign up "),
                            ],
                          ),
                        ],
                      ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
