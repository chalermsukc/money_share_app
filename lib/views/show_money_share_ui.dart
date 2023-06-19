// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class ShowMoneyShareUI extends StatefulWidget {
  double? money;
  int? person;
  double? tip;

  ShowMoneyShareUI({super.key, this.money, this.person, this.tip});

  @override
  State<ShowMoneyShareUI> createState() => _ShowMoneyShareUIState();
}

class _ShowMoneyShareUIState extends State<ShowMoneyShareUI> {
  double? _moneyshare;
  var nf = NumberFormat('###,###.00', "en_US");

  @override
  void initState() {
    _moneyshare = (widget.money! + widget.tip!) / widget.person!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 165, 165),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 224, 79, 95),
        title: Text(
          'แชร์เงินกันเถอะ (ผลลัพธ์)',
          style: GoogleFonts.itim(
            fontSize: MediaQuery.of(context).size.width * 0.065,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [              
              Image.asset(
                'assets/images/money_share_logo.png',
                width: MediaQuery.of(context).size.width * 0.4,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              Text(
                'จำนวนเงินที่จะหาร',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              Text(
                nf.format(widget.money!),
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  color: Colors.white,
                ),
              ),
              Text(
                'บาท',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                'จำนวนคนที่จะหาร',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              Text(
                widget.person.toString(),
                 style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  color: Colors.white,
                ),
              ),
              Text(
                'คน',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                'จำนวนเงินทิป',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              Text(
                nf.format(widget.tip!),
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.075,
                  color: Colors.white,
                ),
              ),
              Text(
                'บาท',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                'แชร์เงินกันคนละ',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.width * 0.05,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    nf.format(_moneyshare!),
                    style: GoogleFonts.itim(
                      fontSize: MediaQuery.of(context).size.width * 0.075,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                'บาท',
                style: GoogleFonts.itim(
                  fontSize: MediaQuery.of(context).size.width * 0.05,
                  color: Color.fromARGB(255, 224, 79, 95),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
