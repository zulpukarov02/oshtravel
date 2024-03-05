import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oshtravel/app/util/random/alamat_random_util.dart';
import 'package:oshtravel/app/util/random/price_room_util.dart';
import 'package:oshtravel/app/widget/card_hotel.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/app_theme.dart';
import '../../../util/random/room_image_util.dart';
import '../controllers/home_controller.dart';
import 'widget/widget_base_card.dart';
import 'widget/widget_button_search.dart';
import '../../../widget/widget_card_row.dart';
import 'widget/widget_city_round.dart';
import 'widget/widget_saldo.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text("Ош Травел"),
        // leading: ProfileView(),
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
      body: CustomScrollView(
        slivers: [
          const WidgetSaldo(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const WidgetButtonSearch(),
          const WidgetCityRound(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Мейманкана",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetCardRow(
            widget: CardHotel(
              networkImage: roomRandomUtil(),
              akchasy: "Баасы ${priceRandomUtil()} с",
              name: randomNameHotelUtil(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Ош",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetBaseCard(
            child: FadeInImage(
              image: NetworkImage(promoUtil().toString()),
              placeholder: const AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Кафе",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetCardRow(
            widget: CardHotel(
              networkImage: kafeFotoNameUrl(),
              name: kafeName(),
              akchasy: '★★★★',
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Мэрия",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 5,
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              color:
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  8,
                ),
              ),
              child: GridView.count(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 10, vertical: 10),
                shrinkWrap: true,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                children: [
                  for (var i in randomLocationResort())
                    Card(
                      elevation: 0,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                              child: FadeInImage(
                                image: NetworkImage(
                                  i["image"] as String,
                                ),
                                placeholder: const AssetImage(
                                  "assets/images/peace.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: appColor(context)
                                    .useScheme
                                    .primaryContainer,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(8),
                                  bottomRight: Radius.circular(8),
                                ),
                              ),
                              child: Text(
                                i["nama"] as String,
                                style: appFont(context).bodySmall?.copyWith(
                                      color:
                                          appColor(context).useScheme.primary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Университет",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetCardRow(
            widget: CardHotel(
              networkImage: roomRandomUtil(),
              akchasy: "Баасы ${priceRandomUtil()} с,",
              name: kafeName(),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Стадион",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetBaseCard(
            child: FadeInImage(
              image: NetworkImage(promoUtil()),
              placeholder: const AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Аэропорт",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),

          WidgetBaseCard(
            child: FadeInImage(
              image: NetworkImage(
                randomUiPayment(),
              ),
              placeholder: const AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: kToolbarHeight * 2,
            ),
          ),
        ],
      ),
    );
  }
}
