// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_reference_app/pages/categorydetails.dart';
import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Judul Aplikasi
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Fashion Catalog',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //News
                    children: [
                      Container(
                        height: 130,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 130,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 130,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  //kategori
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    //kumpulan kategori
                    children: const [
                      categoryClothing(categorylist: 'Baju Pria'),
                      categoryClothing(categorylist: 'Celana Pria'),
                      categoryClothing(categorylist: 'Jaket Pria'),
                      categoryClothing(categorylist: 'Kemeja Pria'),
                      categoryClothing(categorylist: 'Sweater'),
                      categoryClothing(categorylist: 'Baju Wanita'),
                      categoryClothing(categorylist: 'Celana Wanita'),
                      categoryClothing(categorylist: 'Kerudung'),
                      categoryClothing(categorylist: 'Rok Wanita'),
                      categoryClothing(categorylist: 'Dress')
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                //kategori Baju Pria
                const categoryTitle(cattitle: 'Baju Pria'),
                const rowItemCat(),
                //kategori Celana Pria
                const categoryTitle(cattitle: 'Celana Pria'),
                const rowItemCat(),
                //kategori Jaket Pria
                const categoryTitle(cattitle: 'Jaket Pria'),
                const rowItemCat(),
                //kategori Kemeja Pria
                const categoryTitle(cattitle: 'Kemeja Pria'),
                const rowItemCat(),
                //kategori Sweater
                const categoryTitle(cattitle: 'Sweater'),
                const rowItemCat(),
                //kategori Baju Wanita
                const categoryTitle(cattitle: 'Baju Wanita'),
                const rowItemCat(),
                //kategori Celana Wanita
                const categoryTitle(cattitle: 'Celana Wanita'),
                const rowItemCat(),
                //kategori Kerudung
                const categoryTitle(cattitle: 'Kerudung'),
                const rowItemCat(),
                //kategori Rok Wanita
                const categoryTitle(cattitle: 'Rok Wanita'),
                const rowItemCat(),
                //kategori Dress
                const categoryTitle(cattitle: 'Dress'),
                const rowItemCat(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//NEWS
class newsAPP extends StatefulWidget {
  const newsAPP({Key? key}) : super(key: key);

  @override
  _newsAPPState createState() => _newsAPPState();
}

class _newsAPPState extends State<newsAPP> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: 160,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index)),
            items: [],
          ),
        ],
      ),
    );
  }
}

//pilihan kategori box
class categoryClothing extends StatelessWidget {
  const categoryClothing({Key? key, required this.categorylist})
      : super(key: key);
  final String categorylist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        height: 40,
        width: 105,
        decoration: BoxDecoration(
          color: const Color(0xFFABA6A2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            categorylist,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}

//cuplikan kategori
class categoryTitle extends StatelessWidget {
  const categoryTitle({Key? key, required this.cattitle}) : super(key: key);
  final String cattitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cattitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoryDetails()));
            },
            child: const Text(
              'Lihat Semua',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//container item
class contItem extends StatelessWidget {
  const contItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 135,
          width: 135,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}

class rowItemCat extends StatelessWidget {
  const rowItemCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            contItem(),
            contItem(),
            contItem(),
            contItem(),
          ],
        ),
      ),
    );
  }
}
