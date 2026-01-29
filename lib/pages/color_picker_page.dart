
import 'dart:math';

import 'package:color_picker/constants/colors.dart';
import 'package:color_picker/widgets/color_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ColorsPickerPage extends StatefulWidget {
  const ColorsPickerPage({super.key});

  @override
  State<ColorsPickerPage> createState() => _ColorsPickerPageState();
}

class _ColorsPickerPageState extends State<ColorsPickerPage> {
  //  (DEĞİŞKENLER)
  Color _selectRandomColor = Colors.blue;
  bool isCircle = false;
  bool isShowColorName = true;
  String _selectedName = 'Blue';

  // 1. Rastgele renk seçen fonksiyon
  void _selcetcolors() {
    final keys = colorsMap.keys.toList();
    final randomnumb = Random().nextInt(keys.length);
    final randomKey = keys[randomnumb];

    setState(() {
      _selectRandomColor = colorsMap[randomKey]!;
      _selectedName = randomKey;
    });
  }

  // 2. Altta siyah mesaj (Toast) çıkartan fonksiyon
  void showColorCode() {
    String colorCode = _selectRandomColor.value.toRadixString(16).toUpperCase();
    Clipboard.setData(ClipboardData(text: "#$colorCode"));
    Fluttertoast.showToast(
        msg: "Color code copied: #$colorCode",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: _selectRandomColor,
        textColor: Colors.white,
        fontSize: 24.0);
  }

  // 3. Kutunun şeklini değiştiren fonksiyon
  void toggleShape() {
    setState(() {
      isCircle = !isCircle; // Yuvarlaksa kare, kareyse yuvarlak yap
    });
  }

 
  //  TASARIM KISMI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Picker"),
        centerTitle: true,
        backgroundColor: _selectRandomColor,
        actions: [
          // Sağ üstteki 3 noktalı menü
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                isShowColorName = !isShowColorName; // Göster/Gizle ayarı
              });
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 'toggleColorName',
                  child: Row(
                    children: [
                      Icon(
                        isShowColorName
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 20,
                        color: Colors.black54,
                      ),
                      const SizedBox(width: 8),
                      // Yazı taşmasın diye Expanded kullandık
                      Expanded(
                        child: Text(
                          isShowColorName ? 'Hide Name' : 'Show Name',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ];
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      // GÖVDE
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ColorDisplay(selectedColor: _selectRandomColor, isCircle: isCircle),
              const SizedBox(
                height: 20,
              ),
          
              isShowColorName ? Text(_selectedName) : const SizedBox(),
          
              // BUTONLAR VE LİSTE
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // AÇILIR LİSTE (Dropdown)
                    Expanded(
                      child: DropdownButton<Color>(
                        isExpanded: true,
                        value: _selectRandomColor,
                        items: colorsMap.entries.map((entry) {
                          return DropdownMenuItem<Color>(
                            value: entry.value,
                            child: Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  color: entry.value,
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: Text(entry.key,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                        onChanged: (Color? value) {
                          setState(() {
                            if (value != null) {
                              _selectRandomColor = value;
                              // Listeden seçince ismini de buluyoruz
                              _selectedName = colorsMap.entries
                                  .firstWhere((e) => e.value == value)
                                  .key;
                            }
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
          
                    // RANDOM BUTONU
                    ElevatedButton(
                      onPressed: _selcetcolors,
                      child: const Text('Random'),
                    ),
          
                    // BİLGİ BUTONU (Toast)
                    IconButton(
                      onPressed: showColorCode,
                      icon: const Icon(Icons.info),
                    ),
          
                    // ŞEKİL DEĞİŞTİRME BUTONU
                    IconButton(
                        onPressed: () {
                          toggleShape();
                        },
                        icon: Icon(isCircle
                            ? Icons.square_outlined
                            : Icons.circle_outlined),
                            ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

