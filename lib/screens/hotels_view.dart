import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mytickets/utils/app_layout.dart';
import 'package:mytickets/utils/app_styles.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/one.png", )
              )
            ),
          ),
          const Gap(10),
          Text("Open space", style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(5),
          Text("London", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
          const Gap(8),
          Text("\$40/night", style: Styles.headlineStyle1.copyWith(color: Styles.kakiColor),),
        ],
      ),
    );
  }
}
