import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PilihTier extends StatelessWidget {
  const PilihTier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Pilih",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Tingkatan",
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8437C2)),
                          ),
                        ],
                      ),
                      const Text(
                        "Yang sesuai",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset('images/tingkat.png'),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Pemula ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 11),
                          ),
                          Text("Membuat aplikasi logic sederhana ",
                              style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Menengah ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 11),
                          ),
                          Text(
                            "Membuat aplikasi dengan hanya beberapa fitur didalamnya ",
                            style: TextStyle(fontSize: 11),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "Mahir ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 11),
                          ),
                          Text(
                              "Membuat aplikasi fullstcak lengkap dengan semua kebutuhan fiturnya ",
                              style: TextStyle(fontSize: 10)),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            primary: const Color(0xFFE8E8E8),
                            onPrimary: Colors.purple),
                        onPressed: () {},
                        child: Text(
                          "Selanjutnya",
                          style: TextStyle(color: Colors.white),
                        )),
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
