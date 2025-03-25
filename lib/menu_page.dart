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
      appBar: AppBar(title: Text('Main Menu')),
      body: Center(
        child: Container(
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrangeAccent,
                ),
                alignment: Alignment.center,
                child: Text(
                  'Pilih Halaman:',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 10,
                      child: Divider(color: Colors.white, thickness: 1),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(),
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
    );
  }
}
