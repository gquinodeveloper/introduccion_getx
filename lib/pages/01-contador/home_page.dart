import 'package:app_get_contador/pages/01-contador/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        print("Estoy dibujando el arbol de widget");
        return Scaffold(
          appBar: AppBar(
            title: Text("Getx"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(
                () => ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _.users.length,
                  itemBuilder: (context, index) {
                    final user = _.users[index];
                    return ListTile(
                      title: Text(user.firstName ?? ""),
                      subtitle: Text(user.email ?? ""),
                    );
                  },
                ),
              ),
              Text(
                'Otro contador 3',
              ),
              Obx(() {
                print("Solo estoy dibujando esta sección 3");
                return Text(
                  "${_.counter3}",
                  style: Theme.of(context).textTheme.headline4,
                );
              }),
              Divider(color: Colors.red),
              Text(
                'Otro contador 2 ',
              ),
              Obx(() {
                print("Solo estoy dibujando esta sección 2");
                return Text(
                  "${_.counter2}",
                  style: Theme.of(context).textTheme.headline4,
                );
              }),
              Divider(color: Colors.red),
              Text(
                'Otro contador 1 ',
              ),
              GetBuilder<HomeController>(
                id: "contador1",
                builder: (__) {
                  print("Solo estoy dibujando esta sección 2");
                  return Text(
                    "${_.counter}",
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
            ],
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: _.increment3,
                tooltip: 'Increment',
                child: Text("3"),
              ),
              SizedBox(width: 10.0),
              FloatingActionButton(
                onPressed: _.increment2,
                tooltip: 'Increment',
                child: Text("2"),
              ),
              SizedBox(width: 10.0),
              FloatingActionButton(
                onPressed: _.increment,
                /* onPressed: () {
              _.increment();
            }, */
                tooltip: 'Increment',
                child: Text("1"),
              )
            ],
          ),
        );
      },
    );
  }
}

class Prueba extends StatefulWidget {
  Prueba({Key? key}) : super(key: key);

  @override
  _PruebaState createState() => _PruebaState();
}

class _PruebaState extends State<Prueba> {
  @override
  void initState() {
    //Cargar param (BD)

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}
