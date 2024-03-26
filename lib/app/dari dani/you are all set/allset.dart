import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllSet extends StatelessWidget {
  const AllSet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/allset.png"),
            const Text(
              "Selamat!",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF393636)),
            ),
            const Text(
              "Anda Berhasil!",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF393636)),
            ),
            const Text(
              "Mendaftar!",
              style: TextStyle(fontSize: 36, color: Color(0xFF393636)),
            ),
            SizedBox(
              height: 100,
            ),
            const Text(
              "Tahap Selanjutnya, Lorem Ipsum!",
              style: TextStyle(fontSize: 14, color: Color(0xFF393636)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        primary: const Color(0xFFE8E8E8),
                        onPrimary: Colors.purple),
                    onPressed: () {},
                    child: const Text(
                      "Selanjutnya",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
