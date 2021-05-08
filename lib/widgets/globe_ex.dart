import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_earth/flutter_earth.dart';
import 'package:flutter/services.dart' show rootBundle;

class GlobeEx extends StatefulWidget {
  GlobeEx({Key key}) : super(key: key);

  @override
  _GlobeExState createState() => _GlobeExState();
}

class _GlobeExState extends State<GlobeEx> {
  FlutterEarthController _controller;
  double _zoom = 0;
  LatLon _position = LatLon(0, 0);
  String _cityName = '';
  String imageName = '';
  dynamic _cityList;
  int noOfEmployees;

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _onMapCreated(FlutterEarthController controller) {
    _controller = controller;
  }

  void _onCameraMove(LatLon latLon, double zoom) {
    if (mounted) {
      setState(() {
        _zoom = zoom;
        _position = latLon.inDegrees();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    rootBundle.loadString('assets/city.json').then((String data) {
      _cityList = json.decode(data);
    });
  }

  void _moveToCity(int index) {
    if (_cityList != null) {
      final dynamic city = _cityList[index];
      final double lat = double.parse(city['latitude']);
      final double lon = double.parse(city['longitude']);
      _cityName = city['city'];
      imageName = 'assets/pexels/' + city['image'];
      noOfEmployees = int.parse(city['employees']);
      _controller.animateCamera(
          newLatLon: LatLon(lat, lon).inRadians(),
          riseZoom: 2.2,
          fallZoom: 6.0,
          panSpeed: 500,
          riseSpeed: 3,
          fallSpeed: 2);
    }
  }

  Widget getSmallCardType1(String imageName, int index,
      {double height = 200,
      double width = 120,
      String title = "A Title Needed",
      String subtitle = "A subtitle will appear here"}) {
    String cityImage = _cityList[index]['image'];
    return GestureDetector(
      onTap: () {
        _moveToCity(index);
      },
      child: Center(
        child: Container(
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: getImageContainer(imageName: "assets/pexels/$cityImage"),
              ),
              getCardFooter(width, title: title, subtitle: subtitle)
            ],
          ),
        ),
      ),
    );
  }

  Widget getImageContainer(
      {String imageName = "assets/pexels/4.jpeg", double height: 150}) {
    return Container(
      height: height,
      child: Image.asset(imageName, fit: BoxFit.cover),
    );
  }

  Widget getCardFooter(double width,
      {title = "A Nice Small Card Title", subtitle = "01:22 | 13 hrs ago"}) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            subtitle,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget readCitiesList() {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/city.json'),
      builder: (context, snapshot) {
        var cities = json.decode(snapshot.data.toString());
        return AspectRatio(
          aspectRatio: 3 / 1,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return getSmallCardType1(
                  index < 20 ? (index + 1).toString() : "1", index,
                  title: cities[index]['city'],
                  height: 400,
                  subtitle: cities[index]['locationAnchor']);
            },
            itemCount: cities == null ? 0 : cities.length,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Center(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: FlutterEarth(
                      url:
                          'http://mt0.google.cn/vt/lyrs=y&hl=en&x={x}&y={y}&z={z}',
                      radius: 150,
                      onMapCreated: _onMapCreated,
                      onCameraMove: _onCameraMove,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                readCitiesList(),
              ],
            ),
            _cityName != null && _cityName != ''
                ? Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      height: 180,
                      width: 180,
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        child: Column(
                          children: <Widget>[
                            Image.asset(imageName),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    _cityName,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    noOfEmployees.toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
