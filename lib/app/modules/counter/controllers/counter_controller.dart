import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt bilangan = 0.obs;

  @override
  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar('Warning', 'Anda Sudah Melebihi Batas Maksimal');
    } else {
      bilangan.value++;
    }
  }
  @override
  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar('Warning', 'Anda Harus Menambahkan Angka Terlebih Dahulu');
    } else {
      bilangan.value--;
    }
  }
}
