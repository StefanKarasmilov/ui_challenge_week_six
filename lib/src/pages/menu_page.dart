import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ManuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [

          Positioned(
            top: -150,
            left: -150,
            child: CircleWithPhoto()
          ),

          Menu()

        ],
      )
   );
  }
}

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(top: 288),
      child: GridView.count(
        padding: EdgeInsets.all(20),
        crossAxisCount: 3,
        physics: BouncingScrollPhysics(),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          Item('Area', 'assets/icons/radar.png'),
          Item('Currency', 'assets/icons/money.png'),
          Item('Data', 'assets/icons/flash-drive.png'),
          Item('Mileage', 'assets/icons/petrol.png'),
          Item('Length', 'assets/icons/tape-measure.png'),
          Item('Power', 'assets/icons/thunderbolt.png'),
          Item('Pressure', 'assets/icons/pressure-gauge.png'),
          Item('Speed', 'assets/icons/speedometer.png'),
          Item('Temperature', 'assets/icons/thermometer.png'),
          Item('Time', 'assets/icons/clock.png'),
          Item('Volume', 'assets/icons/flask.png'),
          Item('Weight', 'assets/icons/dumbbell.png'),
        ],
      ),
    );

  }

}

class Item extends StatelessWidget {

  final String text;
  final String image;

  Item(this.text, this.image);

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 0,
                  child: shadow()
                ),
                Image(
                  image: AssetImage(image)
                ),
              ],
            ),

            SizedBox(height: 20,),

            Text(text, style: TextStyle(fontWeight: FontWeight.w500),)

          ],
        ),
      ),
    );

  }

  Container shadow() {

    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 9,
            spreadRadius: 1
          )
        ]
      ),
    );

  }

}

class CircleWithPhoto extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 550,
      width: 550,
      child: Stack(
        alignment: Alignment.center,
        children: [

          Background(),

          Front(),

          Positioned(
            top: 200,
            left: 180,
            child: Content()
          )

        ],
      ),
    );

  }

}

class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Icon(Icons.menu, color: Colors.white, size: 30,),

          SizedBox(height: 90,),

          Text('Welcome', style: TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.w500),),

          Text('Dhipu Mathew', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),),

        ],
      ),
    );

  }

}

class Front extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 500,
      width: 500,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.8),
            Colors.white.withOpacity(0.5),
            Colors.white.withOpacity(0.3),
            Colors.white.withOpacity(0.1),
            Colors.white.withOpacity(0),
          ]
        )
      ),
    );

  }

}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.all(70),
      height: 550,
      width: 550,
      child: SvgPicture.asset(
        'assets/pictures/tree.svg'
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(186, 184, 244, 1),
            Color.fromRGBO(108, 55, 255, 1),
          ] 
        ),
        shape: BoxShape.circle
      ),
    );

  }

}

