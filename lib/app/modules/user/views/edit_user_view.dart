import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/user_model.dart';
import '../controllers/user_controller.dart';

class EditUserView extends StatelessWidget {
  final UserController controller = Get.find();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final DataUser user = Get.arguments;
    nameController.text = user.name!;
    emailController.text = user.email!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit User',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor:Color.fromARGB(255, 21, 164, 8),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Update User',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color:Color.fromARGB(255, 21, 164, 8),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(color: Color.fromARGB(255, 21, 164, 8),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Color.fromARGB(255, 21, 164, 8),),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color:Color.fromARGB(255, 21, 164, 8),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Color.fromARGB(255, 21, 164, 8),),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color.fromARGB(255, 21, 164, 8),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Color.fromARGB(255, 21, 164, 8),),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final updatedUser = DataUser(
                    id: user.id,
                    name: nameController.text,
                    email: emailController.text,
                    password: passwordController.text.isEmpty
                        ? user.password
                        : passwordController.text,
                  );
                  controller.updateUser(user.id!, updatedUser);
                  Get.back();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  backgroundColor: Color.fromARGB(255, 21, 164, 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Text(
                  'Update',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}