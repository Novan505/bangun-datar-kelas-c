import 'package:get/get.dart';

class LingkaranController extends GetxController {
  double jarijari = 0;

  final hasil = "".obs;
  final angka = "".obs;

  void hitungLuas (){
    double hitung = 3.14 * jarijari * jarijari;
    hasil.value = "Hasil perhitungan luas dari jarijari $jarijari  adalah $hitung";
    angka.value = "$hitung";
  }
  void hitungKeliling (){
    double hitung = 2 * 3.14 * jarijari;
    hasil.value = "Hasil perhitungan keliling dari jarijari $jarijari adalah $hitung";
    angka.value = "$hitung";
  }
}