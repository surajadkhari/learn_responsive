import 'package:flutter/material.dart';

class OrientationPgae extends StatelessWidget {
  const OrientationPgae({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffFBFDFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: const Text("Orintation"),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? builPortrait(emailController, passwordController)
            : builLandscapes(emailController, passwordController);
      }),
    );
  }

  Widget builLandscapes(TextEditingController emailController,
      TextEditingController passwordController) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // children: List.generate(4, (index) => const Text("sjf")),
        children: [
          SizedBox(
            width: 400,
            child: Image.network(
                "https://lh3.googleusercontent.com/xqYYML8qjq22WfbjbAupQl3Ea8qTjBNkZNAY-Tvn_wS4E5yG1ETigIgXdGFfjFBMcvLTovdEKDRbfhVUajQRenMlfjIVPTUFZH3OpH26qtIqFU85EVr-pCNKaiQUh0Pm-xeJMv6T5d7F4YEwlTvV5uIDOlNjls0ZiGSHA-zwQEd-5zNn7AbNiXc6k72xMkTWFrmS00mgUDbOYr88otybkAg11pYlA1fcbh8rjkHTV6fFIFSeJWNUuvzZ4JWctasL0vxjj2qfVSBGfAEw5UNKwug955x3lG8YzqU2cLQfzVuTLMcEGgnsUXUzJDEcZMY0WeIhaveoCPxJpB5GoKaTLkFPkceKa0u83hw7SHkai_0Y4IJcvm2QqjP1jziBiVmBa9bIAapZJPmRM9DvHRnA9N2LRNjUGzXLY-W8P1cZmottueF0BeZubzasPTVQArUopIGcaV08VW4hB_AnO1-sbjfF_A-RNodwg9Xm6w3ZDIadD1itGT7khUTXGer07pftb8BBU5vFS6pPpBVedXEuxFhRJfyF27PnF2q1RnDQ-t3TtSc6tuihf5BiA8g0Pr3q_4vjlbMde04oairsIryuRW2jP7iDLk-rbgqjkSR40eslEgK-CCMs03Lx6tH4bNijzH5R3TCiXKqZrusileQ6HBrUk8HOxxzlcwxWBOtPvu49FW4wfSvO-DKER332oyDosVVWO6BoTO2RjHEN-3NoMTbW7KQzTVrpAN9Pi92g6i--mtC8e-cGkSmm-eTFM6u5zC1FZy6shVqy2GR-CUTcrYNfw_KLQgWEbORO=w1588-h893-no?authuser=1"),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    style: const TextStyle(fontSize: 10),
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
                  TextFormField(
                    style: const TextStyle(fontSize: 10),
                    controller: passwordController,
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
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("submit")))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget builPortrait(TextEditingController emailController,
      TextEditingController passwordController) {
    return ListView(
      shrinkWrap: true,
      // children: List.generate(4, (index) => const Text("sjf")),
      children: [
        Image.network(
            "https://docs.flutter.dev/assets/images/dash/Dashatars.png"),
        TextFormField(
          style: const TextStyle(fontSize: 10),
          controller: emailController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            errorStyle: const TextStyle(fontSize: 8),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          style: const TextStyle(fontSize: 10),
          controller: passwordController,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            errorStyle: const TextStyle(fontSize: 8),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
        ElevatedButton(onPressed: () {}, child: const Text("submit"))
      ],
    );
  }
}
