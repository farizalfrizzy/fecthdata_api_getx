import 'package:fhe_template/module/models/medicals_model.dart';
import 'package:fhe_template/module/repository/repository.dart';
import 'package:get/get.dart';
import '../view/home_view.dart';

class HomeController extends GetxController {
  HomeView? view;
  List<Medical> medical = [];
  bool isLoading = false;

  @override
  void onInit() {
    super.onInit();
    GetAllDataMedicals();
  }

  Future<void> GetAllDataMedicals() async {
    final result = await Repository().getAllMedicals();
    medical = result.data;
    update();
  }
}
