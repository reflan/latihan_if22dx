import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 200,
            color: Colors.red,
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Image(
                  image: NetworkImage(
                    "https://1.bp.blogspot.com/-rGzybmEYVHM/XyMB2ITDpcI/AAAAAAAAC9k/MzGR0c6iF_ES8VgiLbuDa7r9jWVdoPWSQCLcBGAsYHQ/s1600/download%2BLOGO%2BUniversitas%2BTeknokrat%2BPNG.png",
                  ),
                  height: 80,
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Positioned(
                      bottom: -10,
                      child: Text(
                        "UNIVERSITAS TEKNOKRAT",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "INDONESIA",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "ASEAN's Best Private University",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity, // Mengisi lebar secara penuh
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("LOGIN"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white, // Warna teks di tombol
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Lupa Password, Klik disini"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("developed by nama(npm)")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
