import 'package:flutter/material.dart';

class OrienClass extends StatelessWidget {
  const OrienClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {
        // return const LandScapeView();
        return orientation == Orientation.portrait
            ? const Porttait()
            : const LandScapeView();
      }),
    );
  }
}

class LandScapeView extends StatelessWidget {
  const LandScapeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 200,
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_vZRtH_iDR4id2BEMpY8nkANVBL7sSIZRnk9SfgnH5FuGJtYFUzKzmt8Xv5r8Iu_PV2I&usqp=CAU"),
        ),
        Expanded(
            child: Container(
          margin: const EdgeInsets.all(10),
          child: const CustomTextformField(),
        ))
      ],
    );
  }
}

class Porttait extends StatelessWidget {
  const Porttait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_vZRtH_iDR4id2BEMpY8nkANVBL7sSIZRnk9SfgnH5FuGJtYFUzKzmt8Xv5r8Iu_PV2I&usqp=CAU"),
        _buildTextformField(),
        const SizedBox(
          height: 12,
        ),
        const CustomTextformField(),
      ],
    );
  }

  TextFormField _buildTextformField() {
    return TextFormField(
      decoration: const InputDecoration(
          fillColor: Colors.red,
          filled: true,
          hintText: "Usernaem",
          border: InputBorder.none),
    );
  }
}

class CustomTextformField extends StatelessWidget {
  const CustomTextformField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          fillColor: Colors.red,
          filled: true,
          hintText: "Usernaem",
          border: InputBorder.none),
    );
  }
}
