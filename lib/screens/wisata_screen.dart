import 'package:flutter/material.dart';
import 'package:myapp/screens/detail_wisata_screen.dart';
import 'detail_wisata_screen.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": " Planet Merkurius",
      "kota": "Bali",
      "image": "assets/images/merkurius.jpg",
      "gallery": [
        "assets/images/merkurius1.jpg",
        "assets/images/merkurius2.jpg",
        "assets/images/merkurius3.jpg"
      ],
      "desc": "Merkurius atau Utarid merupakan planet terkecil di Tata Surya sekaligus yang terdekat dari Matahari. Periode revolusi planet ini merupakan yang terpendek dari semua planet di Tata Surya, yakni 87,79 hari"
    },
    {
      "nama": "Planet Venus",
      "kota": "Bali",
      "image": "assets/images/venus.jpg",
      "gallery": [
        "assets/images/venus1.jpg",
        "assets/images/venus2.jpg",
        "assets/images/venus3.jpg"
      ],
      "desc": "Venus, Kejora (Bahasa Melayu) , Makbram (Bahasa Biak) atau Zohrah adalah planet terdekat kedua dari Matahari setelah Merkurius. Planet ini mengorbit Matahari selama 224,7 hari Bumi.[11] Venus tidak memiliki satelit alami dan dinamai dari dewi cinta dan kecantikan dalam mitologi Romawi."
    },
    {
      "nama": "Bumi",
      "kota": "Bali",
      "image": "assets/images/bumi.jpg",
      "gallery": [
        "assets/images/bumi1.jpg",
        "assets/images/bumi2.jpg",
        "assets/images/bumi3.jpg"
      ],
      "desc": "Bumi adalah planet terdekat ketiga dari Matahari yang merupakan planet terpadat dan terbesar kelima dari delapan planet dalam Tata Surya. Bumi juga merupakan planet terbesar dari empat planet kebumian di Tata Surya."
    },
    {
      "nama": " Planet Mars",
      "kota": "Lombok",
      "image": "assets/images/mars.jpg",
      "gallery": [
        "assets/images/mars1.jpg",
        "assets/images/mars2.jpg",
        "assets/images/mars3.jpg"
      ],
      "desc": "Mars, Marikh (dari bahasa Arab مریخ), Jaka belek (dari bahasa Jawa ꦗꦏꦧꦼꦭꦺꦏ꧀) atau Sangia (Bahasa Tolaki) adalah planet terdekat keempat dari Matahari. Namanya diambil dari dewa perang Romawi, Mars. Planet ini sering dijuluki sebagai planet merah karena tampak dari jauh berwarna kemerah-kemerahan. Ini disebabkan oleh keberadaan besi(III) oksida di permukaan planet Mars.[6] Mars adalah planet bebatuan dengan atmosfer yang tipis. Di permukaan Mars terdapat kawah, gunung berapi, lembah, gurun, dan tudung es. Periode rotasi dan siklus musim Mars mirip dengan Bumi. Di Mars berdiri Olympus Mons, gunung tertinggi di Tata Surya, dan Valles Marineris, lembah terbesar di Tata Surya. Selain itu, di belahan utara terdapat cekungan Borealis yang meliputi 40% permukaan Mars."
       },
    {
      "nama": "Planet Saturnus",
      "kota": "Bandung",
      "image": "assets/images/saturnus.jpg",
      "gallery": [
        "assets/images/saturnus1.jpg",
        "assets/images/saturnus2.jpg",
        "assets/images/saturnus3.jpg"
      ],
       "desc": "Saturnus disebut raksasa gas karena hidrogen dan helium merupakan penyusun utama planet ini. Meskipun tidak memiliki permukaan yang padat, Saturnus diperkirakan memiliki inti yang padat.[24] Bentuk Saturnus menyerupai sferoid pepat, bola yang bentuknya tertekan pipih di sepanjang sumbu dari kutub ke kutub sehingga terdapat tonjolan di sekitar khatulistiwa. Bentuk seperti ini muncul akibat rotasi Saturnus, yang menyebabkan radius khatulistiwa 60.268 km hampir 10% lebih besar dari radius 54.364 km dari kutub ke kutub."
        },
    {
      "nama": "Planet Neptunus",
      "kota": "Bandung",
      "image": "assets/images/neptunus.jpg",
      "gallery": [
        "assets/images/neptunus1.jpg",
        "assets/images/neptunus2.jpg",
        "assets/images/neptunus3.jpg"
      ],
      "desc": "Neptunus merupakan planet terjauh (kedelapan) dari Matahari. Neptunus merupakan planet terbesar keempat berdasarkan diameter (49.530 km) dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sedikit lebih kecil daripada Uranus.[10] Neptunus mengorbit Matahari pada jarak 30,1 satuan astronomi (sa) atau sekitar 4.450 juta km. Periode rotasi planet ini adalah 16,1 jam, sedangkan periode revolusinya adalah 164,8 tahun. Planet ini dinamai dari dewa lautan Romawi. Simbol astronomisnya adalah ♆, yang merupakan trisula dewa Neptunus."
       },
    {
      "nama": "Planet Uranus",
      "kota": "Bandung",
      "image": "assets/images/uranus.jpg",
      "gallery": [
        "assets/images/uranus1.jpg",
        "assets/images/uranus2.jpg",
        "assets/images/uranus3.jpg"
      ],
      "desc": "Ranca Upas adalah area perkemahan dan konservasi rusa yang terletak di Ciwidey, Bandung. Tempat ini menawarkan pengalaman berkemah yang unik dengan pemandangan alam yang indah dan udara sejuk."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Planet'),
        backgroundColor: Color.fromARGB(255, 250, 9, 9),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisata(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:DecorationImage(
                      image: AssetImage(wisataData[index]["image"]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    wisataData[index]["nama"],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
