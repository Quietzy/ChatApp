import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:texting/pages/contact/widget/contact_list.dart';
import 'index.dart';

class ContactPage extends GetView<ContactController> {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "Contact",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      body: const ContactList(),
    );
  }
}
