import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xFFF896D8),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Text(
                  "Fitness Time",
                  textAlign: TextAlign.center,
                ),
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("assets/profile_pic.jpg"),
                )
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Row(
                      children: [
                        Text(
                          "Hola Antònia,",
                          style: TextStyle(fontSize: 40),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    const Text(
                      "Recorda beure aigua regularment al llarg del dia per mantenir el teu cos hidratat i millorar el teu rendiment físic i mental.",
                      style: TextStyle(fontSize: 14),
                      textAlign: TextAlign.left,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16.0, horizontal: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Més detalls",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Text(
                          "Darreres Activitats",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(8.0))),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.run_circle_outlined,
                              color: Color(0xFFBF63F8),
                              size: 32,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "Running",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "Ayer, 18:20",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "7,300 km",
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(8.0))),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.run_circle_outlined,
                              color: Color(0xFFBF63F8),
                              size: 32,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "Running",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "15 Sep 2024, 21:45",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "6550 km",
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.all(
                              Radius.circular(8.0))),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.run_circle_outlined,
                              color: Color(0xFFBF63F8),
                              size: 32,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    "Running",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "10 Sep 2024, 21:33",
                                    style: TextStyle(fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "7,100 km",
                              style: TextStyle(fontSize: 24),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: CircularPercentIndicator(
                        radius: 50.0,
                        percent: 0.65,
                        lineWidth: 10.0,
                        backgroundColor: Colors.grey,
                        progressColor: const Color(0xFF3407DA),
                        center: const Text(
                          "65%",
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              BottomNavigationBar(items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inici"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Cercar"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart), label: "Botiga")
              ])
            ],
          ),
        ));
  }
}
