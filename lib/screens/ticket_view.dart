import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mytickets/utils/app_layout.dart';
import 'package:mytickets/utils/app_styles.dart';
import 'package:mytickets/widget/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            ///showing the blue part of the card/ticket
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
                color: Color(0xFF526799)
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                            builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate((constraints.constrainWidth()/6).floor(), (index) =>
                                    SizedBox(
                                      height: 1,
                                      width: 3,
                                      child: DecoratedBox(decoration: BoxDecoration(
                                          color: Colors.white
                                      ),),
                                    )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.55, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                        ]
                      )),

                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("LDN", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New York", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100,
                        child: Text("London", textAlign: TextAlign.end,style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ///showing the orange part of the card/ticket
            Container(
              color: Styles.orangeColor,
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Styles.bgColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
                    ),),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(

                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                color: Colors.white
                                ),
                              ),
                          )),
                        );
                      },

                    ),
                  )),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Styles.bgColor,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))
                      ),),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
