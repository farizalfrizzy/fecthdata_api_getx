import 'package:fhe_template/module/models/medicals_model.dart';

import "package:dio/dio.dart";
import 'package:fhe_template/module/models/request_medicals_model.dart';

class Repository {
  String baseUrl = 'https://fic-app-fry88.ondigitalocean.app/api';
  Future<MedicalModel> getAllMedicals() async {
    final response = await Dio().get(
      "$baseUrl/medicals",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    return MedicalModel.fromJson(response.data);
  }

  Future<void> addData(RequestMedical request) async {
    String url = '$baseUrl/medicals';
    final response = await Dio().post(url,
        // options: Options(
        //   headers: {
        //     "Content-Type": "application/json",
        //   },
        // ),
        data: {
          'data': request.toMap(),
        });

    print(response.toString());
  }

  Future<void> deleteData(int id) async {
    var response = await Dio().delete(
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      "$baseUrl/medicals/$id",
    );
    print(response.statusCode);
  }
}
