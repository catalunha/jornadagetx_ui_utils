import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContextExtPage extends StatelessWidget {
  const ContextExtPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context Extensions'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            Text('WxH: ${context.width.toInt()} x ${context.height.toInt()}'),
            Text('isSmallTablet: ${context.isSmallTablet}'),
            Text('isTablet: ${context.isTablet}'),
            Text('isLargeTablet (Desktop): ${context.isLargeTablet}'),
            Text('isPhone: ${context.isPhone}'),
            Container(
              width: 200,
              height: 100,
              color: Colors.cyan,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.yellow,
              // color: Colors.green,
            ),
            Container(
              width: context.width,
              height: 100,
              color: context.theme.primaryColor,
            ),
            Container(
              width: Get.width,
              height: 100,
              color: Get.theme.primaryColor,
            ),
            Container(
              width: context.widthTransformer(dividedBy: 3),
              height: 100,
              color: Colors.amber,
            ),
            Container(
              width: context.widthTransformer(reducedBy: 20),
              height: 100,
              color: Colors.black,
            ),
            context.responsiveValue(
              desktop: Container(
                width: 100,
                height: 100,
                color: Colors.black26,
              ),
              mobile: Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
