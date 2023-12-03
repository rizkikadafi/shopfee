import 'package:flutter/material.dart';
import 'package:shopfee/views/pages/login_page.dart';
import 'package:shopfee/views/themes/color_scheme.dart';
import 'package:shopfee/views/widgets/logo.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _nomorController = TextEditingController();

  void _submitForm() {
    String nama = _namaController.text;
    String nomor = _nomorController.text;
    print('Nama: $nama');
    print('Nomor: $nomor');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo2(),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _namaController,
                  decoration: InputDecoration(labelText: 'Name'),
                ),
                SizedBox(height: 10.0),
                TextField(
                  controller: _nomorController,
                  decoration: InputDecoration(labelText: 'Phone Number'),
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(primaryBrandColor),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Register'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: new Text(
                  "Login now",
                  style: TextStyle(color: Color.fromARGB(255, 205, 166, 122)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
