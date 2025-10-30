import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dasarstate extends StatefulWidget {
  const Dasarstate({super.key});

  @override
  State<Dasarstate> createState() => _DasarstateState();
}

class _DasarstateState extends State<Dasarstate> {
  bool isDark = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ambilData();
  }
  
  // function untuk menyimpan data ke shared preferences
  void simpanData()async {
    final p = await SharedPreferences.getInstance();
    await p.setBool("temaGelap", isDark);
  }

  void ambilData()async{
    final p = await SharedPreferences.getInstance();
    setState(() {
      isDark = p.getBool("temaGelap") ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan Shared Preference",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Switch Theme"),
        ),
        body: Center(
          child: SwitchListTile(
            title: const Text("tombol tema"),
            value: isDark,
            onChanged: (bool value) {
              setState(() {
                isDark = value;
              });
              simpanData();
            },
          ),
        ),
      ),
    );
  }
}
