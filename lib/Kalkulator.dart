import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'menu_page.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  KalkulatorState createState() => KalkulatorState();
}

class KalkulatorState extends State<Kalkulator> {
  final TextEditingController angkaPertama = TextEditingController();
  final TextEditingController angkaKedua = TextEditingController();
  final TextEditingController angkaHasil = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Kalkulator Sederhana')),
      body: Center(
        child: Container(
          width: 512,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              TextField(
                controller: angkaPertama,
                decoration: const InputDecoration(
                  labelText: 'Masukkan angka pertama',
                  hintText: 'Masukkan angka pertama',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*')),
                ],
              ),
              TextField(
                controller: angkaKedua,
                decoration: const InputDecoration(
                  labelText: 'Masukkan angka kedua',
                  hintText: 'Masukkan angka kedua',
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d*')),
                ],
              ),
              SizedBox(height: 30),
              TextField(
                controller: angkaHasil,
                decoration: const InputDecoration(
                  labelText: 'Hasil penjumlahan',
                  hintText: 'Hasil penjumlahan',
                ),
                readOnly: true,
              ),

              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  ElevatedButton(onPressed: penjumlahan, child: Text('Tambah')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: pengurangan, child: Text('Kurang')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: perkalian, child: Text('Kali')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: pembagian, child: Text('Bagi')),
                ],
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
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: ((context) => MenuPage())),
                        );
                      },
                      child: Text('Main Menu', style: TextStyle(fontSize: 16)),
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

  penjumlahan() {
    double angka1 = double.tryParse(angkaPertama.text) ?? 0.0;
    double angka2 = double.tryParse(angkaKedua.text) ?? 0.0;
    double hasil = angka1 + angka2;
    angkaHasil.text = hasil.toString();
  }

  pengurangan() {
    double angka1 = double.tryParse(angkaPertama.text) ?? 0.0;
    double angka2 = double.tryParse(angkaKedua.text) ?? 0.0;
    double hasil = angka1 - angka2;
    angkaHasil.text = hasil.toString();
  }

  perkalian() {
    double angka1 = double.tryParse(angkaPertama.text) ?? 0.0;
    double angka2 = double.tryParse(angkaKedua.text) ?? 0.0;
    double hasil = angka1 * angka2;
    angkaHasil.text = hasil.toString();
  }

  pembagian() {
    double angka1 = double.tryParse(angkaPertama.text) ?? 0.0;
    double angka2 = double.tryParse(angkaKedua.text) ?? 0.0;
    double hasil = angka1 / angka2;
    angkaHasil.text = hasil.toString();
  }
}
