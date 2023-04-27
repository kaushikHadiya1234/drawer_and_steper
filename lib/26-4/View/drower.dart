import 'package:flutter/material.dart';
import 'package:prectice/26-4/Provider/steper_provider.dart';
import 'package:provider/provider.dart';

class DrowerScreen extends StatefulWidget {
  const DrowerScreen({Key? key}) : super(key: key);

  @override
  State<DrowerScreen> createState() => _DrowerScreenState();
}

class _DrowerScreenState extends State<DrowerScreen> {
  SteperProvider? pt;
  SteperProvider? pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<SteperProvider>(context, listen: true);
    pf = Provider.of<SteperProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.white,
          child: Stepper(
            steps: [
              Step(
                  title: Text(" Personal Information"),
                  content: Text(
                    "Ahir",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text(" Document Information"),
                  content: Text(
                    "Ahir",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text(" Document Upload"),
                  content: Text(
                    "Ahir",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text("pay Fees"),
                  content: Text(
                    "Ahir",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Step(
                  title: Text(" Download Fees Receipt"),
                  content: Text(
                    "Ahir",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ],
            currentStep: pt!.i,
            onStepContinue: () {
              pf!.Nextstep();
            },
            onStepCancel: () {
              pf!.prestep();
            },
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/person_icon.png"),
                      radius: 50,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Ahir",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Ahir111@gmail.com",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                height: 300,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  itemExtent: 60,
                  children: [
                    ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text("Home"),
                    ),
                    ListTile(
                      leading: Icon(Icons.favorite_border),
                      title: Text("Favorite"),
                    ),
                    ListTile(
                      leading: Icon(Icons.workspaces_filled),
                      title: Text("Workflow"),
                    ),
                    ListTile(
                      leading: Icon(Icons.update),
                      title: Text("Update"),
                    ),
                    ListTile(
                      leading: Icon(Icons.logout),
                      title: Text("Log out"),
                    ),
                  ],
                ),
              ),
              Divider(height: 10),
              Container(
                height: 200,
                child: ListView(
                  itemExtent: 65,
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text("Setting"),
                    ),
                    ListTile(
                      leading: Icon(Icons.rate_review_outlined),
                      title: Text("Rate"),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessibility_sharp),
                      title: Text("About"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
