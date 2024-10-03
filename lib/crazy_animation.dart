import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CrazyAnimation extends StatelessWidget {
  const CrazyAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool manuClicked = false.obs;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                    onTap: (){
                      manuClicked.value = !manuClicked.value;
                    },
                    child: Icon(Icons.menu)
                ),
                SizedBox(height: 51,),
                SizedBox(
                  width: size.width,
                  height: size.width * .9,
                  child: Obx(()=>Stack(
                    children: [
                      AnimatedContainer(
                        duration:const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        height: size.width *.9,
                        width: manuClicked.value?size.width:size.width *.45,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(manuClicked.value?55:100),

                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: AnimatedOpacity(
                            duration:const Duration(milliseconds: 355),
                            curve: Curves.easeOut,
                            opacity: manuClicked.value?0:1,
                            child: Image.asset("assets/images/Pic1.jpg",
                             fit: BoxFit.cover,
                            ),
                          ),
                        ),

                      ),
                      AnimatedPositioned(
                        duration:const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        right: 0,
                        top: manuClicked.value? 65:0,
                        child: Padding(
                          padding: EdgeInsets.all(manuClicked.value? 17:0),
                          child: AnimatedContainer(
                            duration:const Duration(milliseconds: 355),
                            curve: Curves.easeOut,
                            height:manuClicked.value?size.width*.9- 65-34:size.width *.53,
                            width:manuClicked.value? size.width-42-34: size.width *.45,
                            decoration: BoxDecoration(
                              //0x use for convert int
                              // ff use opacity ff mean opacity 100%
                              color: Color(0Xff646161),
                              borderRadius: BorderRadius.circular(manuClicked.value?55:100),

                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: AnimatedOpacity(
                                    duration:const Duration(milliseconds: 355),
                                    curve: Curves.easeOut,
                                    opacity: manuClicked.value?0:1,
                                    child: Image.asset("assets/images/Profie_project.jpg",
                                      fit: BoxFit.cover,
                                      height: size.width *.53,
                                      width: size.width *.45,
                                    ),
                                  ),
                                ),
                                AnimatedOpacity(
                                  duration:const Duration(milliseconds: 355),
                                  curve: Curves.easeOut,
                                  opacity: manuClicked.value?1:0,
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration:const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        right:manuClicked.value?17:0 ,
                        bottom:manuClicked.value?size.width*0.9-size.width *.12-17: 0,
                        child: AnimatedContainer(
                          duration:const Duration(milliseconds: 355),
                          curve: Curves.easeOut,
                          height:manuClicked.value?size.width*0.12: size.width *.35,
                          width:manuClicked.value?size.width*0.12: size.width *.45,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100),

                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network("https://mediaslide-europe.storage.googleapis.com/motmodel/pictures/661/822/large-1670344180-2f0936ac65c9fb155b6d42f04050fdaa.jpg",
                             fit: BoxFit.cover,

                            ),
                          ),
                        ),

                      )
                    ],
                  ),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
