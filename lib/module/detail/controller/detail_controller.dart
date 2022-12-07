import 'package:fhe_template/core.dart';
import 'package:fhe_template/module/models/request_medicals_model.dart';
import 'package:fhe_template/module/repository/repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  DetailView? view;
  final nameController = TextEditingController();
  final stockController = TextEditingController();
  final priceController = TextEditingController();
  final descriptonController = TextEditingController();

  Future<void> AddDataMedicals() async {
    RequestMedical requestData = RequestMedical(
      nameController.text,
      int.parse(stockController.text),
      int.parse(priceController.text),
      descriptonController.text,
    );
    await Repository().addData(requestData);
    // await HomeController().GetAllDataMedicals();
    Get.to(const HomeView());
    update();
  }
}
