import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Text('data'),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed('/context_ext');
                },
                child: const Text('Context Extensions'))
          ],
        ),
      ),
    );
  }
}

//  body: Center(
//         child: Column(children: [
//           const Text('data'),
//           ElevatedButton(onPressed: () {}, child: const Text('click'))
//         ]),
//       ),