// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_share_app/views/show_money_share_ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  bool _tipCheck = false;
  TextEditingController _moneyCtrl = TextEditingController(text: '');
  TextEditingController _personCtrl = TextEditingController(text: '');
  TextEditingController _tipCtrl = TextEditingController(text: '');

  _showWarningDialog(context, msg) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            color: Color.fromARGB(255, 224, 79, 95),
            padding: EdgeInsets.only(
              top: 10.0,
              bottom: 10.0,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'คำเตือน',
                style: GoogleFonts.itim(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          content: Text(
            msg,
            textAlign: TextAlign.center,
            style: GoogleFonts.itim(
              color: Color.fromARGB(255, 224, 79, 95),
              fontSize: MediaQuery.of(context).size.width * 0.05,
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 224, 79, 95),
                  ),
                  child: Text(
                    'ตกลง',
                    style: GoogleFonts.itim(),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 246, 165, 165),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 224, 79, 95),
          title: Text(
            'แชร์เงินกันเถอะ',
            style: GoogleFonts.itim(
              fontSize: MediaQuery.of(context).size.width * 0.065,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [                
                Image.asset(
                  'assets/images/money_share_logo.png',
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: TextField(
                    controller: _moneyCtrl,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.itim(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                    decoration: InputDecoration(
                      hintText: 'ป้อนจำนวนเงิน (บาท)',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(152, 232, 229, 229),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.moneyBillWave,
                        color: Colors.yellow,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 79, 95),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 79, 95),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.05,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: TextField(
                    controller: _personCtrl,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.itim(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                    decoration: InputDecoration(
                      hintText: 'ป้อนจำนวนคน (คน)',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(152, 232, 229, 229),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.yellow,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 79, 95),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 79, 95),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      onChanged: (value) {
                        setState(() {
                          if (_tipCheck == true) {
                            _tipCheck = false;
                            _tipCtrl.text = '';
                          } else {
                            _tipCheck = true;
                          }
                        });
                      },
                      value: _tipCheck,
                      activeColor: Colors.yellow,
                      side: BorderSide(
                        color: Color.fromARGB(255, 224, 79, 95),
                      ),
                    ),
                    Text(
                      'เงินทิป (บาท)',
                      style: GoogleFonts.itim(
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: TextField(
                    controller: _tipCtrl,
                    enabled: _tipCheck,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.itim(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.05,
                    ),
                    decoration: InputDecoration(
                      hintText: 'ป้อนจำนวนเงินทิป (บาท)',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(152, 232, 229, 229),
                      ),
                      prefixIcon: Icon(
                        FontAwesomeIcons.moneyBillTrendUp,
                        color: Colors.yellow,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 79, 95),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 224, 79, 95),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 161, 161, 161),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.15,
                    right: MediaQuery.of(context).size.width * 0.15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (_moneyCtrl.text.trim().isEmpty == true) {
                              _showWarningDialog(context, 'ป้อนจำนวนเงินด้วย...');
                            } else if (_personCtrl.text.trim().isEmpty == true) {
                              _showWarningDialog(context, 'ป้อนจำนวนคนด้วย...');
                            } else if (_tipCheck == true) {
                              if (_tipCtrl.text.trim().isEmpty == true) {
                                _showWarningDialog(
                                    context, 'ป้อนจำนวนเงินทิปด้วย...');
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ShowMoneyShareUI(
                                      money: double.parse(_moneyCtrl.text),
                                      person: int.parse(_personCtrl.text),
                                      tip: double.parse(_tipCtrl.text),
                                    ),
                                  ),
                                );
                              }
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ShowMoneyShareUI(
                                    money: double.parse(_moneyCtrl.text),
                                    person: int.parse(_personCtrl.text),
                                    tip: 0,
                                  ),
                                ),
                              );
                            }
                          },
                          label: Text(
                            'คำนวณ',
                            style: GoogleFonts.itim(
                              fontSize: MediaQuery.of(context).size.width * 0.05,
                            ),
                          ),
                          icon: Icon(
                            FontAwesomeIcons.calculator,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 35, 199, 74),
                            fixedSize: Size.fromHeight(
                              MediaQuery.of(context).size.width * 0.15,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                              _moneyCtrl.text = '';
                              _personCtrl.text = '';
                              _tipCtrl.text = '';
                              _tipCheck = false;
                            });
                          },
                          label: Text(
                            'ยกเลิก',
                            style: GoogleFonts.itim(
                              fontSize: MediaQuery.of(context).size.width * 0.05,
                            ),
                          ),
                          icon: Icon(
                            Icons.cancel,
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 241, 102, 118),
                            fixedSize: Size.fromHeight(
                              MediaQuery.of(context).size.width * 0.15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
