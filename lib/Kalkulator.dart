import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      // debugShowCheckedModeBanner: false,
      appBar: AppBar(title: Text('Kalkulator Sederhana')),

      body: Container(
        padding: EdgeInsets.all(10),
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
          ],
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
