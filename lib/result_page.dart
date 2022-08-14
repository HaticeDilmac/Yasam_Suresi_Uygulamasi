import 'package:flutter/material.dart';
import 'package:yasam_suresi/user_data.dart';

class resultpage extends StatelessWidget {
 final UserData _userData;

 resultpage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          'Hesaplama Sayfası',
        ),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(flex: 6,
                child: Center(
                    child: Text(
                      _userData.kilo.toString(),
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                )
            ),
            Expanded(flex: 1,
                child: IconButton(
                  highlightColor: Colors.black,
                color: Colors.indigo,
                 onPressed: (){
                  Navigator.pop(context);
                 },
                   icon: Icon(Icons.home,size: 50.0,),
              ),
            ),
          ],
        ),
    );
  }
}
