// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yasam_suresi/result_page.dart';
import 'package:yasam_suresi/user_data.dart';

import 'MyColumn.dart';
import 'MyContainer.dart';

class girisekrani extends StatefulWidget {
  const girisekrani({Key? key}) : super(key: key);

  @override
  State<girisekrani> createState() => _girisekraniState();
}

class _girisekraniState extends State<girisekrani> {
  String seciliButon = '';
  double icilenSigara = 0.0;
  double spor = 0.0;
  int boy = 150;
  int kilo = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: Text('YAŞAM BEKLENTİ SÜRESİ'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    child: buildRowOnlineButton('BOY'),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOnlineButton('KİLO'),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          'Haftada kaç gün spor yapıyorsunuz?',
                          style: const TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          spor.round().toString(),
                          style: const TextStyle(
                            fontSize: 25.0,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Slider(
                            max: 7,
                            min: 0,
                            divisions: 7,
                            value: spor,
                            onChanged: (double NewValue) {
                              setState(() {
                                spor = NewValue;
                              });
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          const Text(
                            'Günde Kaç Adet Sigara İçiyorsunuz?',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            '${icilenSigara.round()}',
                            style: const TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo,
                            ),
                          ),
                          Slider(
                              max: 40,
                              min: 0.0,
                              value: icilenSigara,
                              onChanged: (double NewValue) {
                                setState(() {
                                  icilenSigara = NewValue;
                                });
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliButon = 'Kadın';
                      });
                    },
                    child: MyContainer(
                      renk: seciliButon == 'Kadın' ? Colors.pink : Colors.white,
                      child: MyColumn(
                        cinsiyet: 'Kadın',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        seciliButon = 'Erkek';
                      });
                    },
                    child: MyContainer(
                      child: MyColumn(
                          cinsiyet: 'Erkek', icon: FontAwesomeIcons.mars),
                    ),
                  ),
                ),
              ],
            )),
            FlatButton(
                color: Colors.white70,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>resultpage(
                    UserData(seciliButon: seciliButon,
                        spor: spor,
                        boy: boy,
                        icilenSigara: icilenSigara,
                    kilo: kilo),
                  )));
                },
                child: Text(
                  'HESAPLA',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.indigo,
                  ),
                ),),
             SizedBox(height: 10.0,),
          ],
        ));
  }

  Row buildRowOnlineButton(String label) {
    return Row(
      children: [
        SizedBox(
          width: 10.0,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == 'BOY' ? boy.toString() : kilo.toString(),
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.indigo,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy++ : kilo++;
                  });
                },
                child: Icon(
                  Icons.add,
                  size: 30,
                  color: Colors.indigo,
                )),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    label == 'BOY' ? boy-- : kilo--;
                  });
                },
                child: Icon(
                  Icons.remove,
                  size: 30,
                  color: Colors.indigo,
                ))
          ],
        ),
      ],
    );
  }
}
