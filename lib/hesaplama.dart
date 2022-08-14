
import 'package:yasam_suresi/user_data.dart';

class hesap{

UserData _userData;
hesap(this._userData);

 hesaplama(){
  double sonuc;
  sonuc=90+_userData.spor-_userData.icilenSigara;
  sonuc=sonuc+(_userData.boy/_userData.kilo);

}

}