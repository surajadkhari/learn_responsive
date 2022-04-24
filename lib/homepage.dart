import 'package:flutter/material.dart';

class Hompage extends StatelessWidget {
  const Hompage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    bool isDesktop(BuildContext context) => currentWidth >= 600;
    bool isMobile(BuildContext context) => currentWidth < 600;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title:
              isMobile(context) ? const Text("Mobile") : const Text("Desktop"),
        ),
        // backgroundColor: currentWidth < 600 ? Colors.amber : Colors.red,
        body: Row(
          children: [
            if (isDesktop(context))
              Container(
                width: 200,
                color: Colors.green,
                child: Column(
                  children: const [
                    ListTile(
                      title: Text('Menu'),
                    )
                  ],
                ),
              ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
                child: Column(),
              ),
            ),
          ],
        )
        // Column(
        //   children: [
        //     Center(
        //       child: Text(currentWidth.toString()),
        //     ),
        //     Container(
        //       margin: const EdgeInsets.symmetric(horizontal: 20),
        //       padding: const EdgeInsets.symmetric(horizontal: 20),
        //       height: currentWidth < 600 ? 100 : 120,
        //       decoration: BoxDecoration(
        //           color: Colors.blue,
        //           borderRadius: BorderRadius.circular(10),
        //           image: const DecorationImage(
        //               image: NetworkImage(
        //                   'https://docs.flutter.dev/assets/images/dash/Dashatars.png'))),
        //     )
        //   ],
        // ),
        );
  }
}
