import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:custom_switch_button/custom_switch_button.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:weather/weather.dart';


void main() { runApp(MaterialApp(
  title: "ouk",

  home:
  MyApp(),
));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFEFEFEF),
      home: Scaffold(
        backgroundColor: Color(0xffF4F3E9),

        body: Container(
          child: SingleChildScrollView (
            child: Stack(
                children: <Widget> [

                  Positioned(

                    child: (DateTime.now().hour > 4) & (DateTime.now().hour < 17)  ?
                    new Container(
                      width: double.infinity,
                      child: FittedBox(
                        child:
                        new Image.asset('Assets/home.png'),
                        fit: BoxFit.fitWidth,
                      ),

                      //),
                    ): (DateTime.now().hour > 16) & (DateTime.now().hour < 20)  ?
                    new Container(
                      width: double.infinity,
                      child: FittedBox(
                        child:
                        new Image.asset('Assets/sunset.png'),
                        fit: BoxFit.fitWidth,


                      ),
                    ):new Container( width: double.infinity,
                      child: FittedBox(
                        child:
                        new Image.asset('Assets/night.png'),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),

                  Positioned(child: Container(
                    width: double.infinity,
                    height: 1650,
                    child: FittedBox(
                      child:
                      new Image.asset('Assets/home3.png'),
                    ),
                  ),
                  ),

                  Positioned(child: Container(
                    width: double.infinity,
                    height: 1970,
                    child: FittedBox(
                      child:
                      new Image.asset('Assets/home3.png'),
                    ),
                  ),
                  ),


                  Positioned(child: Container(
                    width: double.infinity,
                    height: 2290,
                    child: FittedBox(
                      child:
                      new Image.asset('Assets/home3.png'),
                    ),
                  ),
                  ),

                  Positioned(child: Container(
                    width: double.infinity,
                    height: 2610,
                    child: FittedBox(
                      child:
                      new Image.asset('Assets/home3.png'),
                    ),
                  ),
                  ),



                  Positioned(
                    top: 657,
                    left: 203,
                    child: Container(
                      child: MyWidget(),
                    ),
                  ),

                  Positioned(
                    top: 927,
                    left: 33,

                    child: Container(
                      width: 35,
                      height: 35,
                      child:
                      new Image.asset('Assets/watering-plants.png'),

                    ),
                  ),


                  Positioned(
                    top: 1240,
                    left: 35,
                    child: Container(
                      width: 33,
                      height: 33,
                      child:
                      new Image.asset('Assets/settings.png'),

                    ),
                  ),


                  Positioned(
                    top: 780,
                    left: 35,

                    child: Container(
                      width: 35,
                      height: 35,

                      child:
                      new Image.asset('Assets/raspberry-pi.png'),

                    ),
                  ),


                  Positioned(
                    top: 0,
                    bottom: 1860,
                    left: 15,
                    child: Container(
                      width: 27,
                      height: 27,
                      child:
                      new Image.asset('Assets/calendar.png'),

                    ),
                  ),

                  Positioned(
                    top: 1085,
                    left: 33,
                    child: Container(
                      width: 33,
                      height: 33,
                      child:
                      new Image.asset('Assets/save-water.png'),

                    ),
                  ),



                  Positioned(
                    top: 790,
                    left: 75,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Configuration',
                        style: TextStyle(fontFamily: 'verona-serial', fontSize: 17, color:Color(0xff084C61)),
                      ),

                    ),
                  ),

                  Positioned(
                    top: 943,
                    left: 75,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Mode d\'arrosage',
                        style: TextStyle(fontFamily: 'verona-serial', fontSize: 17, color:Color(0xff084C61)),
                      ),

                    ),
                  ),


                  Positioned(
                    top: 993,
                    left: 72,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Automatique                Manuel',
                        style: TextStyle(fontFamily: 'SpaceGrotesk-Regular'
                            , fontSize: 15, color:Colors.black),
                      ),

                    ),
                  ),


                  Positioned(
                    top: 1096,
                    left: 75,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Niveau d\'eau',
                        style: TextStyle(fontFamily: 'verona-serial', fontSize: 17, color:Color(0xff084C61)),
                      ),

                    ),
                  ),

                  Positioned(
                    top: 1251,
                    left: 75,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Réglages',
                        style: TextStyle(fontFamily: 'verona-serial', fontSize: 17, color:Color(0xff084C61)),
                      ),

                    ),
                  ),

                  Positioned(
                    top: 0,//30,
                    left: 0,//240,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Meteo(),
                    ),


                  ),

                  Positioned(
                    top: 600,
                    left: 173,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Votre plante est en bonne santé en ce moment',
                        style: TextStyle(fontFamily: 'SpaceGrotesk-Regular'
                            '', fontSize: 14),
                      ),

                    ),
                  ),

                  Positioned(
                    top: 825,
                    left: 34,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      child:
                      Text(
                        'Terminez la configuration de votre\nRaspberry Pi et système d\'arrosage',
                        style: TextStyle(fontFamily: 'SpaceGrotesk-Regular'
                            '', fontSize: 14),
                      ),

                    ),
                  ),



                  Positioned(
                    top: 1290,
                    left: 34,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      width: 170,
                      height: 170,
                      child:
                      Text(
                        'Personnalisez votre experience',
                        style: TextStyle(fontFamily: 'SpaceGrotesk-Regular'
                            '', fontSize: 14),
                      ),
                    ),

                  ),
                  /*Positioned(
                    top: -40,
                    left: 27,
                    right: 0,
                    bottom: 560,
                    child: Container(
                      child: MyHomePage(),
                    ),
                  ),*/
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 180,
                    bottom:1860,
                    child: Container(
                      width: 170,
                      height: 170,
                      child: Jour(),
                    ),
                  ),


                  Positioned(
                    top: 0,
                    left: 0,
                    right: 180,
                    bottom:1810,
                    child: Container(
                      width: 170,
                      height: 170,
                      child: Mois(),
                    ),
                  ),


                  Positioned(
                    top: 0,
                    left: 320,
                    right: 17,
                    bottom:1007,
                    child: Container(
                      width: 1,
                      height: 1,
                      child: IconButton(
                        icon: Image.asset('Assets/continue.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),
                    ),
                  ),


                  Positioned(
                    top: 0,
                    left: 320,
                    right: 17,
                    bottom:80,
                    child: Container(
                      width: 1,
                      height: 1,
                      child: IconButton(
                        icon: Image.asset('Assets/continue.png'),
                        iconSize: 50,
                        onPressed: () {},
                      ),
                    ),
                  ),



                ]
            ),
          ),
        ),

      ),
      //child: Center(child: FlutterLogo(size: 160)),
      //),
    );
  }
}

/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  //var textValue = 'Switch is OFF';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GestureDetector(
          onTap: (
              ) {
            setState(() {
              isChecked = !isChecked;

            });
          },
          child: Center(
            child:
            CustomSwitchButton(
              backgroundColor: Color(0xffBD7D5A),
              unCheckedColor: Color(0xffF4F3E9),
              animationDuration: Duration(milliseconds: 400),
              checkedColor: Color(0xffF4F3E9),
              checked: isChecked,

            ),

          ),
        ),

      ),

    );

  }



}
*/







class MyWidget extends StatelessWidget {
  get borderRadius => BorderRadius.circular(15.0);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 0,
        borderRadius: borderRadius,
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(0.0),
            height: 26.0,//MediaQuery.of(context).size.width * .08,
            width: 121.0,//MediaQuery.of(context).size.width * .3,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: Color(0xff00C1C4),
            ),
            child: Row(
              children: <Widget>[

                Expanded(
                  child: Text(
                    'Mon jardin',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13, fontFamily: 'SpaceGrotesk-Regular', color: Color(0xffF4F3E9)
                    ),
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



class Jour extends StatelessWidget {
  const Jour({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center (
      child: DateFormat('EEEE').format(DateTime.now()) == 'Saturday' ?
      new Container(
          child: Text(
            'Samedi',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),

          )
      ):
      DateFormat('EEEE').format(DateTime.now()) == 'Friday' ?
      new Container(child: Text(
        'Vendredi',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),),):


      DateFormat('EEEE').format(DateTime.now()) == 'Sunday' ?
      new Container(child: Text(
        'Dimanche',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),),):


      DateFormat('EEEE').format(DateTime.now()) == 'Monday' ?
      new Container(child: Text(
        'Lundi',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),),):



      DateFormat('EEEE').format(DateTime.now()) == 'Tuesday' ?
      new Container(child: Text(
        'Mardi',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),),):


      DateFormat('EEEE').format(DateTime.now()) == 'Wednesday' ?
      new Container(child: Text(
        'Mercredi',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),),):

      DateFormat('EEEE').format(DateTime.now()) == 'Thursday' ?
      new Container(child: Text(
        'Jeudi',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),),):
      new Container(),
    );
  }
}



class Mois extends StatelessWidget {
  const Mois({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center (
      child: DateFormat('MMM').format(DateTime.now()) == 'May' ?
      new Container(
        child: Text(
          DateFormat('dd ').format(DateTime.now())+
              'Mai',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),

        ),
      ):  DateFormat('MMM').format(DateTime.now()) == 'Apr' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Avril',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):
      DateFormat('MMM').format(DateTime.now()) == 'Jan' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Janvier',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Feb' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Février',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Mar' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Mars',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Jun' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Juin',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Jul' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Juillet',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Aug' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Août',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Sep' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Septembre',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Oct' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Octobre',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Nov' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Novembre',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):

      DateFormat('MMM').format(DateTime.now()) == 'Dec' ?
      new Container(
          child: Text(DateFormat('dd ').format(DateTime.now())+
            'Décembre',style: TextStyle(fontFamily: 'verona-serial', fontSize: 20, color:Color(0xff084C61)),
          )
      ):new Container(),

    );
  }
}




enum AppState { NOT_DOWNLOADED, DOWNLOADING, FINISHED_DOWNLOADING }
class Meteo extends StatefulWidget {

  @override
  _MeteoState createState() => _MeteoState();

}

class _MeteoState extends State<Meteo> {
  String key = '63027ce7a27c0b8d5df00b05f734c987';
  late WeatherFactory ws;
  List<Weather> _data = [];
  AppState _state = AppState.NOT_DOWNLOADED;
  String? CityName = "Algiers";


  @override
  void initState() {
    super.initState();
    ws = new WeatherFactory(key);
  }


  void queryWeather() async {
    /// Removes keyboard
    FocusScope.of(context).requestFocus(FocusNode());

    setState(() {
      _state = AppState.DOWNLOADING;
    });

    Weather weather = await ws.currentWeatherByCityName(CityName!);
    setState(() {
      _data = [weather];
      _state = AppState.FINISHED_DOWNLOADING;
    });
  }

  Widget contentFinishedDownload() {

    return Center(
      child: ListView.separated(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text((_data[index].toString()).substring((_data[index].toString()).indexOf("Temp:")+6,(_data[index].toString()).indexOf("Celsius"))+"°",
              style: TextStyle(fontFamily: 'SpaceGrotesk-Regular', fontSize: 35, color:Color(0xffF4F3E9)),
            ),

          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }



  Widget WeatherIcon() {

    return Container(
      child: ListView.separated(
        itemCount: _data.length,
        itemBuilder: (context, index) {
          String weather = ( (_data[index].toString()).substring((_data[index].toString()).indexOf("code:")+6,(_data[index].toString()).length-4)).replaceAll("\n", "");
          print (weather);
          int weath= int.parse(weather);
          return ListTile(
            title: (( weath ==800)? Container():
            ( weath>=200 && weath<=232 )?
            Container(child: Image.asset('Assets/storm.png')):
            ( weath>=300 && weath<=321 )?
            Container(child: Image.asset('Assets/rain.png')): //averse
            ( weath>=500 && weath<=511 )?
            Container(width:200,
                height:200,
                child: Image.asset('Assets/rain.png')):  //pluie
            ( weath>=511 && weath<=531 )?
            Container(child: Image.asset('Assets/rain.png')):   //averse
            ( weath>=600 && weath<=622 )?
            Container(child: Image.asset('Assets/snow.png')):  //neige
            ( weath>=701 && weath<=781 )?
            Container(child: Image.asset('Assets/haze.png')):   //brouillard
            ( weath>=802 && weath<=804 )?
            Container(child: Image.asset('Assets/clouds.png')):  //nuageux
            ( weath==801 )?
            Container(child: Image.asset('Assets/cloud.png')):  //partiellement nuageux
            Container()

                //( weather ==" Clouds, overcast clouds ")||( weather ==" Clouds, broken clouds ")||( weather ==" Clouds, scattered clouds ")?

            ),
          );
          //Container(child: new Image.asset('Assets/home3.png')):Container(child: new Image.asset('Assets/home4.png')) );
          //Container(child:Text("clear oui")):Container(child:Text("not clear non")));


        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }




  Widget contentDownloading() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(children: [
        Text(
          'Chargement...',
          style: TextStyle(fontSize: 15, fontFamily: 'SpaceGrotesk-Regular',color: Color(0xffF4F3E9)),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: Center(child: CircularProgressIndicator(strokeWidth: 5, color: Color(0xffBD7D5A))))
      ]),
    );
  }

  Widget contentNotDownloaded() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Cliquez pour obtenir la météo', //style: TextStyle(fontSize: 15, fontFamily: 'SpaceGrotesk-Regular',color: Color(0xffF4F3E9))
          ),
        ],
      ),
    );
  }

  Widget _resultView() => _state == AppState.FINISHED_DOWNLOADING
      ? contentFinishedDownload()
      : _state == AppState.DOWNLOADING
      ? contentDownloading()
      : contentNotDownloaded();



  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5),
          child: IconButton(
            icon: Image.asset('Assets/refresh.png'),
            iconSize: 33,
            onPressed: () {queryWeather();},
          ),
        ),

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack( children: <Widget> [



      Positioned(
        top: 100,
        left: 240,
        bottom:-100,
        right: 0,
        child:
        Container(child:
        _resultView()
        ),
      ),

      Positioned(
        top: 40,
        left: 290,
        //bottom:2500,
        //right: 10,
        child:
        Container(child: _buttons(),
        ),
      ),


      Positioned(
        top: 33,
        left: 5,
        bottom:0,
        right: 115,
        child:
        Container(child: _state == AppState.FINISHED_DOWNLOADING
            ? WeatherIcon():Container(),
        ),
      ),


    ],
    );
  }
}

