import 'package:flutter/material.dart';
import '../controller/detail_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      init: DetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Detail"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListBody(
                    children: [
                      TextFormField(
                        controller: controller.nameController,
                        // initialValue: '',
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Medical name",
                        ),
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        controller: controller.stockController,
                        // initialValue: '0',
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Stock',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Stock?",
                        ),
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        controller: controller.priceController,
                        // initialValue: '10000',
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Price',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "price?",
                        ),
                        onChanged: (value) {},
                      ),
                      TextFormField(
                        controller: controller.descriptonController,
                        // initialValue: '',
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Description',
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          helperText: "Description?",
                        ),
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(64.0),
                      ),
                    ),
                    onPressed: () {
                      controller.AddDataMedicals();
                    },
                    child: const Text("Save"),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
