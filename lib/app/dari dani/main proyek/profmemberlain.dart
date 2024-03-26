import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfMemberLain extends StatelessWidget {
  const ProfMemberLain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      child: Icon(
                        Icons.arrow_back,
                        color: Color(0xFFD9D9D9),
                        size: 35,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Nico Robin",
                              style: TextStyle(
                                  color: Color(0xFF652A95),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "UI/UX Designer",
                              style: TextStyle(
                                  color: Color(0xFFE3C7FA),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Pemula",
                              style: TextStyle(
                                  color: Color(0xFFE3C7FA),
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage('images/Message 39.png'),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Color(0xFFDEDEDE),
                  thickness: 2,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text("Proyek Selesai",
                    style: TextStyle(
                        color: Color(0xFF652A95),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(7)),
                            width: 91,
                            height: 91,
                            // child: const Text("halo"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Judul Proyek",
                                  style: TextStyle(
                                      color: Color(0xFF652A95),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Collaboration with Sabo & 4 more",
                                  style: TextStyle(fontSize: 8),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/Rectangle 16.png'),
                                        maxRadius: 10,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 12,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "2+",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Telah selesai pada tanggal ",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xFF652A95)),
                                    ),
                                    Text(
                                      "25/03/2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(7)),
                            width: 91,
                            height: 91,
                            // child: const Text("halo"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Judul Proyek",
                                  style: TextStyle(
                                      color: Color(0xFF652A95),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Collaboration with Sabo & 4 more",
                                  style: TextStyle(fontSize: 8),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/Rectangle 16.png'),
                                        maxRadius: 10,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 12,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "2+",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Telah selesai pada tanggal ",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xFF652A95)),
                                    ),
                                    Text(
                                      "25/03/2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(7)),
                            width: 91,
                            height: 91,
                            // child: const Text("halo"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Judul Proyek",
                                  style: TextStyle(
                                      color: Color(0xFF652A95),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Collaboration with Sabo & 4 more",
                                  style: TextStyle(fontSize: 8),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/Rectangle 16.png'),
                                        maxRadius: 10,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 12,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "2+",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Telah selesai pada tanggal ",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xFF652A95)),
                                    ),
                                    Text(
                                      "25/03/2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    height: 109,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9),
                                borderRadius: BorderRadius.circular(7)),
                            width: 91,
                            height: 91,
                            // child: const Text("halo"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Judul Proyek",
                                  style: TextStyle(
                                      color: Color(0xFF652A95),
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Collaboration with Sabo & 4 more",
                                  style: TextStyle(fontSize: 8),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Stack(
                                  children: [
                                    const CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                            'images/Rectangle 16.png'),
                                        maxRadius: 10,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 15),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 30),
                                      child: CircleAvatar(
                                        radius: 12,
                                        backgroundColor: Colors.white,
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/Rectangle 16.png'),
                                          maxRadius: 10,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 45),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 12,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              "2+",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Telah selesai pada tanggal ",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: Color(0xFF652A95)),
                                    ),
                                    Text(
                                      "25/03/2024",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
