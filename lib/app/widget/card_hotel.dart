import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../theme/app_theme.dart';

class CardHotel extends StatelessWidget {
  const CardHotel(
      {super.key,
      required this.networkImage,
      required this.akchasy,
      required this.name});
  final String networkImage;
  final String akchasy;
  final String name;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      children: [
        IntrinsicHeight(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
            color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: size.width / 1.8,
                        height: size.width / 3,
                        decoration: BoxDecoration(
                          color: appColor(context).useScheme.primary,
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: FadeInImage(
                            image: NetworkImage(networkImage.toString()),
                            placeholder: const AssetImage(
                              "assets/images/peace.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(
                          10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              //randomNameHotelUtil(),
                              style: appFont(context).bodySmall?.copyWith(),
                            ),
                            // Text(
                            //   "Rp${priceRandomUtil()}",
                            //   style: appFont(context).bodyLarge?.copyWith(
                            //         fontWeight: FontWeight.bold,
                            //       ),
                            // ),
                            const SizedBox(
                              height: 5,
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                akchasy,
                                // getKotaFromAlamatUtil(
                                //   randomAlamatUtil(),
                                // ),
                                style: appFont(context).labelSmall?.copyWith(),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Positioned.fill(
                  child: Material(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.DETAIL_HOTEL);
                      },
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 0,
        ),
      ],
    );
  }
}
