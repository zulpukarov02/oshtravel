import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class WidgetSaldo extends StatelessWidget {
  const WidgetSaldo({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        elevation: 0,
        color: appColor(context).useThemeData.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: appColor(context).useScheme.secondaryContainer,
                      ),
                      child: Icon(
                        Icons.send_outlined,
                        size: 15,
                        color: appColor(context).useScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: appColor(context).useScheme.secondaryContainer,
                      ),
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 15,
                        color: appColor(context).useScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: appColor(context).useScheme.secondaryContainer,
                      ),
                      child: Icon(
                        Icons.qr_code_sharp,
                        size: 15,
                        color: appColor(context).useScheme.primary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
