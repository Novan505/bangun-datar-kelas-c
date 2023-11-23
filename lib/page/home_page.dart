import 'package:bangun_datar_kelas_c/page/lingkaran_page.dart';
import 'package:bangun_datar_kelas_c/page/persegi_panjang_page.dart';
import 'package:bangun_datar_kelas_c/page/segitiga_page.dart';
import 'package:flutter/material.dart';
import 'persegi_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PersegiPage()));
                        },
                        child: CustomMenu(
                            imageAsset: "assets/persegii.png",
                            title: "Persegi"))),
                Expanded(
                    child: InkWell(
                      onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PersegiPanjangPage()));
                        },
                        child: CustomMenu(
                        imageAsset: "assets/persegi pp.png",
                        title: "Persegi Panjang")),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SegitigaPage()));
                        },
                    child: CustomMenu(
                        imageAsset: "assets/segitigaa.png",
                        title: "Segitiga")),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                          Navigator.push(
                                context,
                                MaterialPageRoute(
                                      builder: (context) => LingkaranPage()));
                        },
                    child: CustomMenu(
                        imageAsset: "assets/lingkarann.png",
                        title: "Lingkaran")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: 200,
      height: 400,
      decoration: BoxDecoration(color: Colors.green.shade500),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            imageAsset,
            alignment: Alignment.center,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
