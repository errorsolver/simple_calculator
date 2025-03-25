import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_calculator/kalkulator.dart';

void main(List<String> args) {
  runApp(MaterialApp(title: 'Aplikasi Pindah Halaman', home: MenuPage()));
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Main Menu',
          // style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        // backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          // color: Colors.white,
          width: 512,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              // Align(alignment: Alignment.center),
              // Padding(padding: EdgeInsets.all(10)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrangeAccent,
                ),
                // width: 350,
                alignment: Alignment.center,
                // margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                // margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Pilih Halaman:',
                  // textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 10,
                      child: Divider(
                        color: Colors.white, // Warna garis
                        thickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        // backgroundColor: WidgetStateProperty.all(
                        //   Colors.amberAccent,
                        // ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Kalkulator()),
                          ),
                        );
                      },
                      child: Text('Kalkulator', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // ),
    );
  }
}
