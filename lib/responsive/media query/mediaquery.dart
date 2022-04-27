import 'package:flutter/material.dart';

class LearnResponsive extends StatelessWidget {
  const LearnResponsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    bool isTablet(BuildContext context) {
      return screenWidth > 600 && screenWidth < 800;
    }

    bool isMobile(BuildContext context) {
      return screenWidth < 600;
    }

    bool isDesktop(BuildContext context) {
      return screenWidth > 800;
    }

    return Scaffold(
      drawer: isMobile(context) ? const Drawer() : null,
      appBar: AppBar(
        backgroundColor: screenWidth < 600 ? Colors.red : Colors.green,
        title: Text(screenWidth.toString()),
      ),
      body: isDesktop(context)
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                    child: Image.network(
                        "https://docs.flutter.dev/assets/images/dash/Dashatars.png"),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.amber,
                    ))
              ],
            )
          : ListView(children: [
              Container(
                margin: isTablet(context)
                    ? const EdgeInsets.all(40)
                    : const EdgeInsets.all(8),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey,
                      filled: true),
                ),
              )
            ]),
    );
  }
}
