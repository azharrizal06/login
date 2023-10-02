import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:login/app/routes/app_pages.dart';

import '../controllers/utama_controller.dart';

class UtamaView extends GetView<UtamaController> {
  const UtamaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> isi = [
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: Text("1")),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: MediaQuery.of(context).size.width,
          color: Colors.amber,
          child: Text("2")),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 150,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Text("3")),
    ];
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 200),
          child: Column(
            children: [
              Container(
                height: 50,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () => Get.offAllNamed(Routes.HOME),
                          icon: Icon(Icons.logout)),
                      Text(
                        "Mini Shop",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Material(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                              borderRadius: BorderRadius.circular(20),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Icon(Icons.person),
                              ))),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider(
                    items: isi,
                    options: CarouselOptions(
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(seconds: 2)),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.amber,
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
