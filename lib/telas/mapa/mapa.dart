import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grrot_application/telas/catalogo/views/especies_list.dart';
import 'package:grrot_application/telas/geral/404.dart';
import 'package:grrot_application/telas/perfil/perfil-usuario.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../especies/especies.dart';
import '../equipe/equipe.dart';
import '../parceiros/parceiros.dart';
import '../tarefas/tarefas.dart';
import '../qrcode/qrcode.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class Mapa extends StatefulWidget {
  String title;
  Mapa({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  double latitudeData = -19.9797789;
  double longitudeData = -44.015892;

  void setCustomMaker() async {
    mapMaker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/botoes/region.png');
  }

  void initState() {
    super.initState();
    getCurrentLocation();
    setCustomMaker();
  }

  getCurrentLocation() async {
    final geoposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      latitudeData = geoposition.latitude;
      longitudeData = geoposition.latitude;
    });
  }

  @override
  Set<Marker> _markers = {};
  BitmapDescriptor mapMaker;

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('id-1'),
          position: LatLng(latitudeData, longitudeData),
          icon: mapMaker,
          infoWindow: InfoWindow(
            title: 'Minha Localização',
            snippet: 'Região',
          )));
    });
  }

  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;
    BorderRadiusGeometry radius = BorderRadius.only(
        topLeft: Radius.circular(24.1), topRight: Radius.circular(24.0));

    return new Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Container(
          decoration: BoxDecoration(
              color: Color(0xFFD6D6D6),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Color(0xFF757575),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Page_404()));
                  }),
              SizedBox(
                height: 10,
                width: 200,
              ),
              Container(
                width: 40,
                height: 50,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PerfilUsuario()),
                      );
                    });
                  },
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'assets/usuario/mariaeduarda.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SlidingUpPanel(
        minHeight: 80,
        maxHeight: 300,
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: _markers,
          initialCameraPosition: CameraPosition(
            target: LatLng(latitudeData, longitudeData),
            zoom: 16.0,
          ),
          zoomControlsEnabled: true,
        ),
        backdropEnabled: true,
        borderRadius: radius,
        panel: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF69F0AE).withOpacity(0.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Especie()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/botoes/arvore.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Espécies',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF69F0AE).withOpacity(0.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Qrcode()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/botoes/qrcode.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'QR Code',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF69F0AE).withOpacity(0.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Catalogo()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/botoes/catalogo.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Catalogo',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF69F0AE).withOpacity(0.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Parceiros()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/botoes/parceiro.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Parceiros',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF69F0AE).withOpacity(0.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Tarefas()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/botoes/tarefas.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Tarefas',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF69F0AE).withOpacity(0.7),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Equipe()),
                                );
                              });
                            },
                            child: Image.asset(
                              'assets/botoes/equipe.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Equipe',
                            style: TextStyle(
                                color: Color(0xDD000000), fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
