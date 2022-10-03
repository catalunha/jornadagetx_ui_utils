import 'package:flutter/material.dart';

class ContextExtPage extends StatelessWidget {
  const ContextExtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context Extensions'),
      ),
      body: Center(
        child: Column(children: [
          Container(
            // width: 200,
            width: MediaQuery.of(context).size.width,
            height: 200,
            color: Colors.green,
          )
        ]),
      ),
    );
  }
}
