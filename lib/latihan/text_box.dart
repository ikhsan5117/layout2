import 'package:flutter/material.dart';

class TextBoxPage extends StatefulWidget {
  const TextBoxPage({super.key});

  @override
  State<TextBoxPage> createState() => _TextBoxPageState();
}

class _TextBoxPageState extends State<TextBoxPage> {
  bool _showpassword = true;
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _tanggalLahir = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("text Box flutter")),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          // text filed nama lengkap
          Text("Nama :"),
          TextField(
            controller: _namaController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_2),
              hintText: "Masukan nama lengkap",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),
          Text("Kata sandi :"),
          TextField(
            controller: _passwordController,
            obscureText: _showpassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _showpassword = !_showpassword;
                  });
                },
                icon: Icon(
                  _showpassword ? Icons.remove_red_eye : Icons.visibility_off
                  ),
                ),
              hintText: "Masukan kata sandi",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
          ),

          // Inputan tanggal
          Text("Tanggal lahir :"),
          TextField(
            controller: _tanggalLahir,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.calendar_month),
              hintText: "dd-mm-yyyy",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
            onTap: ()async {
              DateTime? pilihTanggal = await showDatePicker(context: context, firstDate: DateTime(2000), lastDate: DateTime(2100),
              initialDate: DateTime.now()
              );
              // cek tanggal yang dipilih
              if (pilihTanggal !=null) {
                setState(() {
                  _tanggalLahir.text = "${pilihTanggal.day}-${pilihTanggal.month}-${pilihTanggal.year}";
                });
              }
            },
          ),

          ElevatedButton(onPressed: () {
            print(_namaController.text);
            print(_passwordController.text);
          }, child: Text("Simpan")
          )
          
        ],
      ),
      ),
    );
  }
}
