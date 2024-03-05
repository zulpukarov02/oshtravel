import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../../../theme/app_theme.dart';
import '../../../util/random/room_image_util.dart';
import '../../home/views/widget/widget_base_card.dart';
import '../controllers/diskon_controller.dart';

class DiskonView extends GetView<DiskonController> {
  const DiskonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('ОШ'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.NOTIFICATION);
              },
              icon: const Badge(
                label: Text("2"),
                child: Icon(
                  Icons.notifications_rounded,
                ),
              ))
        ],
      ),
      body: ListView(
        children: [
          WidgetBaseCardSecondary(
            onTap: () {
              log("JOSS");
              try {
                if (Get.isSnackbarOpen == true) {
                  Get.closeCurrentSnackbar();
                }
                Get.rawSnackbar(
                  icon: Icon(
                    Icons.done_all_rounded,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.white
                        : Colors.black,
                  ),
                  messageText: Text(
                    "Купонду ийгиликтүү талап кылыңыз",
                    style: appFont(context).bodySmall?.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.white
                                  : Colors.black,
                        ),
                  ),
                  borderRadius: 5,
                  backgroundColor: appColor(context).useScheme.primary,
                  margin: const EdgeInsets.fromLTRB(
                    20,
                    0,
                    20,
                    40,
                  ),
                );
              } catch (e) {
                log(e.toString());
              }
            },
            child: Stack(
              children: [
                Positioned.fill(
                  child: FadeInImage(
                    image: NetworkImage(
                      promoUtil(),
                    ),
                    placeholder: const AssetImage(
                      "assets/images/peace.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                      ),
                      minimumSize: const MaterialStatePropertyAll(
                        Size.zero,
                      ),
                      textStyle: MaterialStatePropertyAll(
                        appFont(context).bodySmall,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.done_all_rounded,
                      size: 20,
                    ),
                    label: const Text("Кооздуктар"),
                  ),
                )
              ],
            ),
          ),
          const WidgetBaseCardSecondary(
            child: FadeInImage(
              image: NetworkImage(
                "https://www.centralasia-travel.com/uploads/gallery/1216/osh-28.jpg",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          const WidgetBaseCardSecondary(
            child: FadeInImage(
              image: NetworkImage(
                "https://st-1.akipress.org/st_runews/8/351518.1.1536049429.jpg",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          const WidgetBaseCardSecondary(
            child: FadeInImage(
              image: NetworkImage(
                "https://www.centralasia-travel.com/uploads/gallery/1216/osh-11.jpg", //3
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: kToolbarHeight * 2,
          ),
        ],
      ),
    );
  }
}
