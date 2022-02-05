import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class BackgroundParticle extends StatefulWidget {
  const BackgroundParticle({Key? key}) : super(key: key);

  @override
  _BackgroundParticleState createState() => _BackgroundParticleState();
}

class _BackgroundParticleState extends State<BackgroundParticle>
    with TickerProviderStateMixin {
  ParticleOptions particleOptions1 = const ParticleOptions(
    baseColor: Colors.blue,
    colors: [
      Color(0xff4ec7ba),
      Color(0xff66cec3),
      Colors.redAccent,
      Color(0xffcb84d0),
      Colors.yellow,
      Color(0xfffccee6),
    ],
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.2,
    maxOpacity: 0.5,
    spawnMinSpeed: 5.0,
    spawnMaxSpeed: 10.0,
    spawnMinRadius: 5.0,
    spawnMaxRadius: 8.0,
    particleCount: 6,
  );

  ParticleOptions particleOptions2 = const ParticleOptions(
    baseColor: Colors.blue,
    colors: [
      Color(0xffb2e7e1),
      Colors.blue,
      Colors.cyan,
      Colors.pink,
      Color(0xffe3dde9),
      Colors.amber,
    ],
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.2,
    maxOpacity: 0.5,
    spawnMinSpeed: 5.0,
    spawnMaxSpeed: 10.0,
    spawnMinRadius: 5.0,
    spawnMaxRadius: 8.0,
    particleCount: 6,
  );

  ParticleOptions particleOptions3 = const ParticleOptions(
    baseColor: Colors.blue,
    colors: [
      Colors.tealAccent,
      Colors.cyan,
      Color(0xfff7be8a),
      Color(0xffabb2eb),
      Color(0xfff1d2e1),
      Color(0xfffdd515),
    ],
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.2,
    maxOpacity: 0.5,
    spawnMinSpeed: 5.0,
    spawnMaxSpeed: 10.0,
    spawnMinRadius: 5.0,
    spawnMaxRadius: 8.0,
    particleCount: 6,
  );

  ParticleOptions particleOptions4 = const ParticleOptions(
    baseColor: Colors.blue,
    colors: [
      Colors.tealAccent,
      Colors.blue,
      Color(0xfff6b376),
      Color(0xffcce7f0),
      Color(0xffe86e6e),
      Colors.deepPurple,
    ],
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.2,
    maxOpacity: 0.5,
    spawnMinSpeed: 5.0,
    spawnMaxSpeed: 10.0,
    spawnMinRadius: 5.0,
    spawnMaxRadius: 8.0,
    particleCount: 6,
  );

  var particlePaint = Paint()
    ..style = PaintingStyle.fill
    ..strokeWidth = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: AnimatedBackground(
                        behaviour: RandomParticleBehaviour(
                          options: particleOptions1,
                          paint: particlePaint,
                        ),
                        vsync: this,
                        child: Container())),
                Expanded(
                    child: AnimatedBackground(
                        behaviour: RandomParticleBehaviour(
                          options: particleOptions2,
                          paint: particlePaint,
                        ),
                        vsync: this,
                        child: Container()))
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: AnimatedBackground(
                        behaviour: RandomParticleBehaviour(
                          options: particleOptions3,
                          paint: particlePaint,
                        ),
                        vsync: this,
                        child: Container())),
                Expanded(
                    child: AnimatedBackground(
                        behaviour: RandomParticleBehaviour(
                          options: particleOptions4,
                          paint: particlePaint,
                        ),
                        vsync: this,
                        child: Container())),
              ],
            ),
          )
        ],
      ),
    );
  }
}
