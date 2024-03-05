import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class WidgetCityRound extends StatelessWidget {
  const WidgetCityRound({super.key});
  // List<String> images = ["assets/images/dark.webp", "assets/images/light.webp"];
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: 42.5 * 2.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 20,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 2,
                            sigmaY: 2,
                          ),
                          child: CupertinoAlertDialog(
                            title:
                                const Text("Жайгашкан жерди аныктоого уруксат"),
                            content: const Text(
                              "Жайгашкан жерге кирүүгө уруксат берүү менен, биз сизге жакынкы мейманканаларды жана турак жайларды көрсөтө алабыз.",
                            ),
                            actions: [
                              CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Кайтуу",
                                  style: appFont(context).bodySmall,
                                ),
                              ),
                              CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Уруксат алуу",
                                  style: appFont(context).bodySmall,
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.near_me_rounded,
                            color: appColor(context).useScheme.primary,
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: Text(
                                "Саякаттар",
                                style: appFont(context).labelSmall?.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            for (var i in [
              "Сары-Ой",
              "Кара-Кой",
              "Ноокат",
              "Алай",
              "Кара-Суу",
              "Абшыр-Ата",
              "Чыйырчык",
              "Папан",
              "Изумруд көлү",
              "Кожо-Келен",
            ])
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {},
                    child: Container(
                      color: Colors.transparent,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            radius: 25,
                            // backgroundImage:
                            // AssetImage('assets/images/dark.webp'),
                            child: Text(
                              i.split("")[0] + i.split("")[1],
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: Text(
                                  i,
                                  style: appFont(context).labelSmall?.copyWith(
                                        fontWeight: FontWeight.normal,
                                      ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                ],
              ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
