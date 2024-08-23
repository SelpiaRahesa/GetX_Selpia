import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  UserView({super.key});
  final UserController controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'User',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.add, color: Colors.white, size: 28),
              onPressed: () => Get.toNamed('/user/create'),
            )
          ],
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 21, 164, 8),
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: controller.tagList.length,
              itemBuilder: (context, index) {
                final item = controller.tagList[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  shadowColor:Color.fromARGB(255, 170, 246, 163),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    title: Text(
                      item.name ?? 'No Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 21, 164, 8),
                      ),
                    ),
                    subtitle: Text(
                      item.email ?? '',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit, color:  Color.fromARGB(255, 21, 164, 8)),
                          onPressed: () =>
                              Get.toNamed('/user/edit', arguments: item),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () => controller.deleteUser(item.id!),
                        ),
                      ],
                    ),
                    onTap: () => Get.toNamed('/user/show', arguments: item),
                  ),
                );
              });
        }));
  }
}
