import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/foundation.dart';

String kafeFotoNameUrl() {
  List<String> kafeUrl = [
    "https://media-cdn.tripadvisor.com/media/photo-s/0f/24/90/62/caption.jpg",
    "https://antimonopolia.gov.kg/wp-content/uploads/2022/12/uluk-ata.jpg",
    "https://oshfood.kg/image_by_id/13541",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLubEBgT-PgCz1zOLfrebxS0fyLgaFwY01tg&usqp=CAU"
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtXLgj00kv3W7SAkMycY97Wu9Ald3T1_z6mQ&usqp=CAU"
  ];
  var random = math.Random();
  var randomIndex = random.nextInt(kafeUrl.length);

  return kafeUrl[randomIndex];
}

String roomRandomUtil() {
  var url = [
    "https://pix10.agoda.net/hotelImages/105/10564071/10564071_220209182400111047472.jpg?s=414x232&ar=16x9",
    "https://travelandia.ru/data/l-989defc08b47b7008343d2bbaea4d83d.jpg",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/421563945.jpg?k=b21a83dd90cb8c934a2cbc0f478afc64a69fc86d9a978be175cdb61f2ed5203c&o=",
    "https://cf.bstatic.com/xdata/images/hotel/270x200/434089996.jpg?k=9402f3c8aca0f4bea1eb2c4589d2ef8f49517ed3e2a42f82220a2fef8f4263b3&o=",
    "https://photos.travelmyth.com/hotels/480/25/m-2583936.jpg",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);

  return url[randomIndex];
}

String promoUtil() {
  var url = [
    "https://www.centralasia-travel.com/uploads/gallery/1216/osh-28.jpg", //1
    "https://st-1.akipress.org/st_runews/8/351518.1.1536049429.jpg", //2
    "https://www.centralasia-travel.com/uploads/gallery/1216/osh-11.jpg", //3
    "https://asiamountains.net/assets/cache_image/assets/lib/resized/370/1600x1063_0x0_d0b.jpg", //4
    "https://kg.kabar.kg/site/assets/files/30931/osh_kyrgyz-ata.jpg", //6
    "https://24.kg/thumbnails/367b2/d704a/129025_w_h500_1564657545_r.jpg", //7
    "https://ak-sai.com/wp-content/uploads/Jewel-of-Fergana-1-1-400x400.jpg", //
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);

  return url[randomIndex];
}

String kafeName() {
  var url = [
    "Ала-Тоо",
    "Гулназ",
    "Баатыр",
    "Ojak-Keba",
  ];
  var random = math.Random();
  var randomIndex = random.nextInt(url.length);

  return url[randomIndex];
}

Map<String, String> randomComment() {
  List<String> names = [
    "Budi Setiawan",
    "Dewi Rahayu",
    "Arif Saputra",
    "Siti Hidayah",
    "Iwan Santoso",
    "Nia Fitriani",
    "Joko Susilo",
    "Maya Sari",
    "Adi Pratama",
    "Rini Cahyani",
    "Dwi Nugroho",
    "Rina Indah",
    "Fahmi Akbar",
    "Anisa Putri",
    "Dian Kusuma",
    "Rizki Ramadhan",
    "Sari Wahyuni",
    "Yoga Pranata",
    "Nova Kurniawan",
    "Astuti Wulandari",
  ];
  List<String> comments = [
    "Бул мейманкана жөн гана укмуш! Кызмат жана объектилер укмуштай, мен 5 жылдыз рейтингин берем!",
    "Бул мейманканада болуу мени өзгөчө сезет. Атмосфера жана комфорт укмуш, 5/5!",
    "Отелдин кызматкерлери абдан достук жана кесипкөй. Мен калганыма абдан ыраазы болдум."
        "Мейманкананын ички жасалгасы абдан жарашыктуу. Ар бир деталына көңүл бурулган окшойт. Мен 5/5 деген баа берем.",
    "Бул мейманкананын бөлмөсүнүн көрүнүшү укмуш! Жогорку класстагы тейлөө жана кооз көрүнүштөр.",
    "Бул мейманканада эртең мененки тамак абдан сонун! Даамдуу тамактардын түрлөрү, мен абдан ыраазымын.",
    "Бул мейманканадагы керебеттин ыңгайлуулугу укмуш. Мен күн сайын жакшы уктайм."
        "Бул мейманкананын спорттук жабдыктары абдан толук. Мен жашаган убакта активдүү боло алам."
        "Мейманкананын жайгашкан жери абдан стратегиялык, негизги туристтик жайларга жакын. Айланыш үчүн абдан ыңгайлуу.",
    "Бөлмө кызматы абдан сезимтал жана натыйжалуу. Мейманкана кызматкерлери ар дайым жардам берүүгө даяр."
        "Бул мейманкананын бассейни абдан таза жана сергитет. Ал жерде эс алуу чынында эле жагымдуу."
        "Мага бул мейманкананын тынч атмосферасы жагат. Эс алуу үчүн ылайыктуу.",
    "Отель бизнес үчүн эң сонун шарттарды камсыз кылат. Мен сапарым учурунда ыңгайлуу иштей алдым."
        "Бул мейманкананын архитектуралык дизайны уникалдуу жана көңүл бурат. Инстаграмга ылайыктуу жер!",
    "Отелдин бардык кызматкерлери достук жана жылмаюу менен жардам берүүгө даяр. Мен абдан жакшы мамиле сездим."
        "Отел ресторанында кечки тамактануу өзгөчө болду. Алардын ашпозчусу чындап эле акылдуу!",
    "Бул мейманкананын курорттук жайлары эң сонун эс алууну камсыздайт. Андан кийин мен өзүмдү сергип, эс алып жатам."
        "Бул мейманкана абдан таза жана жакшы сакталган. Тазалык артыкчылыктуу, 5/5!",
    "Мен бул мейманкананы иш сапарларга же майрамдарга сунуштайм. Канаттандырарлык эс алуу.",
    "Бул мейманкана коноктор үчүн активдүүлүк программасы менен кошумча наркты камсыз кылат. Мен бул жерде өткөргөн убактымды абдан жактырдым."
  ];

  math.Random random = math.Random();

  String name = names[random.nextInt(names.length)];
  String comment = comments[random.nextInt(comments.length)];

  Map<String, String> review = {"nama": name, "komentar": comment};

  // Menampilkan komentar yang dihasilkan (opsional)
  if (kDebugMode) {
    print("Pengguna ${review['nama']} berkata - \"${review['komentar']}\"");
  }

  return review;
}

String randomResortKota() {
  var data = [
    "https://st-1.akipress.org/cdn-st-0/qcw/F/1570403.89304d0599414d059431eb631a66e971.jpg",
    "https://fastly.4sqi.net/img/general/600x600/48774695_hWMXeOq1vYNQAIbhT8FBWzoXQVd7M7eCYwKN3l3VwW4.jpg",
    "https://photos.wikimapia.org/p/00/02/99/33/69_big.jpg",
    "https://fastly.4sqi.net/img/general/600x600/45675179_BX89oL9A9PYTFwXX20SQ2Qe__b2I3rGjcEruz3Cudco.jpg",
    "https://knews.kg/wp-content/uploads/2016/03/gorod-OSH.jpg",
    "https://cdn2.tu-tu.ru/image/pagetree_node_data/1/452848f821997374ad88d1e910bf139a",
    "https://st-0.akipress.org/st_gallery/55/1128555.cbb557540d369008653ebd5c372591b1.jpg",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String randomResortHutan() {
  var data = [
    "https://th.bing.com/th/id/OIG.DkG1IiaXpKPVkidegyXD?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.VW0hxLwta34ibLotE85Q?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.kXM44U94TS4QI2Q.CcQ6?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.YRm1I57KrWL4wsMWEd4l?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.vaMJK8zhS0aWP4ia.HMw?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.0Ce5fc_Q_n6j1IxL4umy?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.UbyHhWT7R2M3A1L8Xz4Q?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.5GTU72RiqCrBApjvC8LX?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String randomResortGunung() {
  var data = [
    "https://th.bing.com/th/id/OIG.DkG1IiaXpKPVkidegyXD?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.wbQMQvPE69Uf5TgaXrtR?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.35ZAyeGXay3bpjIFUDYS?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.LpOw6M.l45IQkn1PxY0Q?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.LyRe8W4Dh9h2IPtr12U2?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.FQ9nKTa0eMEuhz6plzhf?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.xdMMZUyaratXsrj6FfUx?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.JPiCREWrtVNDObzl5eWs?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.S4t1Nag5HSsu.7TkFoSG?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String randomResortPantai() {
  var data = [
    "https://th.bing.com/th/id/OIG.Z7fyVvG4jvRyS559ymfL?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.oYRoFPy4z4e7PyW3xYsI?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.v.A1a5LIWp3jHxQ_V6lI?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.Ehsbm9_dNoenh53d5cyE?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.J.SoFRFWUE2WlbaS8nCm?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.PMdUmdJm3EUHwLQI6uLZ?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.rPqg9UtwH9GMtZ8ZPE7M?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.nsQufVvlfTnXO08p_On0?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

List<Map<String, String>> randomLocationResort() {
  var data = [
    {
      "nama": "Мерия",
      "image": randomResortKota(),
    },
    {
      "nama": "Мерия",
      "image": randomResortKota(),
    },
    {
      "nama": "Мерия",
      "image": randomResortKota(),
    },
    {
      "nama": "Мерия",
      "image": randomResortKota(),
    },
  ];

  data.shuffle();
  return data;
}

List<Map<String, String>> randomRoomAvail() {
  List<Map<String, String>> jenisKamar = [
    {
      "name": "Бир кишилик бөлмө",
      "description": "Бир керебеттүү бир конок үчүн бөлмө."
    },
    {
      "name": "Эки кишилик бөлмө",
      "description": "Бир эки керебет менен эки коноктор үчүн бөлмө."
    },
    {
      "name": "Эки керебеттүү бөлмө",
      "description": "Эки өзүнчө керебети бар эки конок үчүн бөлмө."
    },
    {
      "name": "Үч кишилик бөлмө",
      "description": "Үч коноктор үчүн бөлмө, адатта үч керебеттүү."
    },
    {
      "name": "люкс",
      "description":
          "Өзүнчө жашоо аянты менен чоңураак жана көбүнчө люкс бөлмө."
    },
    {
      "name": "Президенттик люкс",
      "description":
          "Отельдеги эң люкс люкс, көбүнчө атактуу коноктор же VIPлер колдонушат."
    },
    {
      "name": "Кошуна бөлмөлөр",
      "description":
          "Эки же андан көп бөлмөлөр, алардын ортосундагы эшик аркылуу туташтырылат."
    },
    {
      "name": "Үй-бүлө бөлмөсү",
      "description":
          "Бөлмө үй-бүлө үчүн атайын иштелип чыккан, балким, кошумча ыңгайлуулуктары бар."
    },
    {
      "name": "Жеткиликтүү бөлмө",
      "description":
          "Атайын өзгөчө муктаждыктары бар же мүмкүнчүлүгү чектелген коноктор үчүн иштелип чыккан бөлмө."
    },
    {
      "name": "Кошуна бөлмөлөр",
      "description":
          "Бири-бирине жанаша жайгашкан, бирок түздөн-түз байланышпаган бөлмөлөр."
    },
    {
      "name": "Экономикалык бөлмө",
      "description": "Жөнөкөй ыңгайлуулуктары жана арзаныраак баасы бар бөлмө."
    },
    {
      "name": "Пентхаус",
      "description": "Сюита эң жогорку кабатта жайгашкан, кооз көрүнүшү бар."
    }
  ];

  jenisKamar.shuffle(); // Mengacak list

  int jumlahMax = min(5,
      jenisKamar.length); // Ambil maksimum 10 elemen jika jumlah lebih dari 10

  List<Map<String, String>> hasilRandom = jenisKamar.sublist(0, jumlahMax);
  return hasilRandom;
}

String randomUiPayment() {
  var data = [
    "https://avatars.mds.yandex.net/get-altay/5484072/2a0000017da3f84dc52898a0ef21ea45fbd4/orig",
    "https://static.mk.ru/upload/entities/2022/02/21/11/articles/detailPicture/ad/b2/8c/a8/e139328751924b8fdef62f88bfec912e.jpg",
    "https://avatars.mds.yandex.net/get-altay/6955494/2a00000182da6b3c2a37899153d63060b3e7/L_height",
    "https://avia2.ru/media/airports/820-315-m/00/00/180/Osh-Airport1-4048.jpg",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}
