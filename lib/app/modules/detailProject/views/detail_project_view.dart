import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:motion_hack/app/modules/detailProject/views/detail_user_view.dart';

import '../controllers/detail_project_controller.dart';

class DetailProjectView extends GetView<DetailProjectController> {
  const DetailProjectView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Proyek",
            style: TextStyle(color: Color(0xFF652A95)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Judul Proyek",
                    style: TextStyle(
                        color: Color(0xFFA345F0),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Sedang Berlangsung",
                    style: TextStyle(
                      color: Color(0xFFE3C7FA),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                child: Image.asset("images/Rectangle 16.png"),
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 25,
              ),
              const Center(
                child: Text(
                  "Minggu 4/6",
                  style: TextStyle(
                      color: Color(0xFFE3C7FA),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Penanggung Jawab",
                    style: TextStyle(
                        color: Color(0xFF652A95),
                        fontWeight: FontWeight.w800,
                        fontSize: 14),
                  ),
                  Image.asset("images/Message 39.png")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Luffy Dono ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      Text("-"),
                      Text(
                        " Project Manager",
                        style: TextStyle(color: Color(0xFFB7B7B7)),
                      )
                    ],
                  ),
                  Text("Chat")
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    "Sanji Vinsmoke ",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text("-"),
                  Text(
                    " Project Manager",
                    style: TextStyle(color: Color(0xFFB7B7B7)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Nami ",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text("-"),
                  Text(
                    " UI/UX Designer",
                    style: TextStyle(color: Color(0xFFB7B7B7)),
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => const DetailUserView()),
                    child: Text(
                      "Nico Robin ",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Text("-"),
                  Text(
                    " UI/UX Designer",
                    style: TextStyle(color: Color(0xFFB7B7B7)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Text(
                    "Usopp Gosh",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(" -"),
                  Text(
                    " Mobile Programming",
                    style: TextStyle(color: Color(0xFFB7B7B7)),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Text(
                    "Richo Robin",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(" -"),
                  Text(
                    " Mobile Programming",
                    style: TextStyle(color: Color(0xFFB7B7B7)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Mentor",
                style: TextStyle(
                    color: Color(0xFF652A95),
                    fontWeight: FontWeight.w800,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text("Zoro Rorona"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Deskripsi Proyek",
                style: TextStyle(
                    color: Color(0xFF652A95),
                    fontWeight: FontWeight.w800,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc iaculis malesuada orci, vitae condimentum diam consequat nec. Fusce id nibh est. Etiam metus nisi, sagittis eleifend turpis in, malesuada ornare risus. Cras ipsum urna, imperdiet vel dolor ac, consequat luctus erat. Etiam pharetra nulla id tortor ultricies, a consectetur turpis placerat. Fusce a mi ultricies, molestie metus nec, mollis turpis. Donec pretium placerat ex, sed mattis nisl pretium vel."),
            ],
          ),
        ),
      ),
    );
  }
}
