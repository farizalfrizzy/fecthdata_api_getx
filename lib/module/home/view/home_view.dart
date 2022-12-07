import 'package:fhe_template/module/repository/repository.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Home"),
            automaticallyImplyLeading: false,
          ),
          body: ListView.builder(
            itemCount: controller.medical.length,
            itemBuilder: (context, index) {
              var data = controller.medical[index];
              return InkWell(
                onTap: () {
                  // Medical? data;
                  Repository().deleteData(data.id);
                },
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      child: Text(
                        data.attributes.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: Text(data.attributes.description),
                    subtitle: Text(data.attributes.price.toString()),
                    trailing: Text(data.attributes.stock.toString()),
                  ),
                ),
              );
            },
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              //
              Get.to(const DetailView());
            },
          ),
        );
      },
    );
  }
}
