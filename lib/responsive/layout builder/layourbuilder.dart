// import 'package:flutter/material.dart';

// class Lay extends StatelessWidget {
//   const Lay({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, Constraints) {
//       bool isDesktop(BuildContext context) => Constraints.maxWidth > 600;
//       return Scaffold(
//           appBar: AppBar(
//             title: isDesktop(context)
//                 ? const Text("Desktop")
//                 : const Text("Mobiel"),
//           ),
//           body: isDesktop(context)
//               ? Row(children: [
//                   Expanded(
//                     flex: 1,
//                     child: Container(
//                       color: Colors.red,
//                     ),
//                   ),
//                   Expanded(
//                     flex: 3,
//                     child: Container(
//                       width: 200,
//                       color: Colors.blue,
//                     ),
//                   ),
//                 ])
//               : const SingleChildScrollView());
//     });
//   }
// }
import 'package:flutter/material.dart';

class Lay extends StatelessWidget {
  const Lay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      bool isMobile(BuildContext context) => Constraints.maxWidth <= 600;
      bool isDesktop(BuildContext context) => Constraints.maxWidth > 600;
      return Scaffold(
        drawer: Constraints.maxWidth < 600 ? const Drawer() : null,
        appBar: AppBar(
          title:
              isMobile(context) ? const Text("Deskotp") : const Text("Mobile"),
        ),
        body: isDesktop(context)
            // Constraints.maxWidth > 600
            ? Row(
                children: [
                  if (Constraints.maxWidth > 600)
                    LayoutBuilder(builder: (context, Constraints) {
                      return Expanded(
                        child: Container(
                          height: Constraints.maxHeight,
                          width: 200,
                          color: Colors.red,
                          child: const Text("side base"),
                        ),
                      );
                    }),
                  Container(
                    height: Constraints.maxHeight,
                    width: 200,
                    color: Colors.blue,
                    child: const Text("side base"),
                  )

                  // Expanded(
                  //   flex: 1,
                  //   child: Container(
                  //     height: Constraints.minHeight,
                  //     color: Colors.green,
                  //     child: const Text("Body"),
                  //   ),
                  // )
                ],
              )
            : Container(
                color: Colors.blue,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ListView(children: const [
                  ListTile(
                    title: Text("Hello"),
                    subtitle: Text("uouo"),
                  )
                ]),
              ),
      );

      // Container(
      //   child: Constraints.maxWidth < 600
      //       ? const Text("Mobile")
      //       : const Text("desktop"),
      //   color: Colors.blue,
      // );
    });
  }
}


// class Layout extends StatelessWidget {
//   const Layout({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraiant) {
//         if (constraiant.maxWidth < 600) {
//           return Container(
//             color: Colors.red,
//           );
//         } else {
//           return Row(
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   color: Colors.green,
//                 ),
//               ),
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   color: Colors.blue,
//                 ),
//               ),
//             ],
//           );
//         }
//       },
//     );
//   }
// }
