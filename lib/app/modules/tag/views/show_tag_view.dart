import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/tag_model.dart';

class ShowTagView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataTag tag = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tag',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor:  Color.fromARGB(255, 21, 164, 8),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color:Color.fromARGB(255, 228, 255, 225),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama Tag: ${tag.namaTag}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 21, 164, 8),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Slug: ${tag.slug}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 21, 164, 8),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Created At: ${tag.createdAt}',
                  style: TextStyle(
                    fontSize: 18,
                    color:  Color.fromARGB(255, 21, 164, 8),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Updated At: ${tag.updatedAt}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 21, 164, 8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}