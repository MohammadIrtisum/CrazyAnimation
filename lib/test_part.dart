import 'package:flutter/material.dart';
import 'package:get/get.dart';

class textPart extends StatelessWidget {
  const textPart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    return  Scaffold(
      backgroundColor: Colors.grey,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                      child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width*.04,)
                  ),
                  TextSpan(
                    text: "  item in cart",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: size.width*.035,
                      height: 0,
                      fontWeight: FontWeight.w900
                    )
                  )
                ]
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text.rich(
                TextSpan(
                    children: [
                      WidgetSpan(
                          child: Icon(Icons.history_toggle_off_outlined,color: Colors.white,size: size.width*.04,)
                      ),
                      TextSpan(
                          text: "  purchase history",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: size.width*.035,
                              height: 0,
                              fontWeight: FontWeight.w900
                          )
                      )
                    ]
                ),

              ),
            ),
            Text.rich(
              TextSpan(
                  children: [
                    WidgetSpan(
                        child: Icon(Icons.settings_rounded,color: Colors.white,size: size.width*.04,)
                    ),
                    TextSpan(
                        text: "  app setting",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width*.035,
                            height: 0,
                            fontWeight: FontWeight.w900
                        )
                    )
                  ]
              ),

            ),
          ],
        ),
      ),
    );
  }
}
