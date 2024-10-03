import 'package:flutter/material.dart';
import 'package:get/get.dart';

class crazyAnimationThingy extends StatelessWidget {
  const crazyAnimationThingy({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool expand = false.obs;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    // expand = true.obs;
                    expand.value =!expand.value;
                  },
                  child: Text("expand",
                  style:TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: size.width*.045,
                  ) ,
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: Center(
                    child: Obx(()=>Stack(
                      children: [
                        Container(
                          width:expand.value?size.width-99: size.width*0.4,
                          height:expand.value?size.width*.7: size.width*0.4,
                          decoration:BoxDecoration(
                              color: Color(0xff7c7a7a),
                              borderRadius: BorderRadius.circular(expand.value?55:100),
                          ),
                        ),
                        Positioned(
                           // bottom:expand.value?50: 23,
                          top:expand.value?250: 0,
                           right:expand.value?15: 0 ,
                          // left:expand.value?0: 23,
                          child: Padding(
                            padding: const EdgeInsets.all(23.0),
                            child: Container(
                              width:expand.value?size.width *.1: size.width*0.3,
                              height: expand.value? size.width*.1: size.width*0.3,
                              decoration:BoxDecoration(
                                   color: Color(0xff3d3b3b),
                                  borderRadius: BorderRadius.circular(100)
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(51.0),
                          child: Container(
                            width: size.width*0.2,
                            height: size.width*0.2,
                            decoration:BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius: BorderRadius.circular(100)
                            ),
                          ),
                        ),
                      ],
                    ),)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
