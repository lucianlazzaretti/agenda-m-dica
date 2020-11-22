import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;

  Widget _switcherBody() {
    switch (_index) {
      case 0:
        return new Container(
          margin: EdgeInsets.all(30.0),
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child:
              //widgetTextField()
              Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.person),
                    hintText: 'Informe o Nome'),
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.date_range),
                    hintText: 'Data e Hora'),
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.medical_services),
                    hintText: 'Informe o Médico'),
              ),
              TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.phone_android),
                    hintText: 'Número do Celular'),
              ),
            ],
          ),
        );

      case 1:
        return new Container(
            margin: EdgeInsets.all(30.0),
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Text(
                "Nome : João \nData e Hora: 16/07/2021 - 11:00 horas \nMédico: Dr.Paulo \nCelular: 999161915 \n\n\n" +
                    "Nome : Maria \nData e Hora: 16/07/2021 - 12:00 horas \nMédico: Dr.Joaquim \nCelular: 978161915  \n\n\n" +
                    "Nome : Jorge \nData e Hora: 16/07/2021 - 13:00 horas \nMédico: Dr.Tadeu \nCelular: 999145616   \n\n\n" +
                    "Nome : José \nData e Hora: 16/07/2021 - 14:00 horas \nMédico: Dr.Paulo \nCelular: 999467532  \n\n\n" +
                    "Nome : Marcos \nData e Hora: 16/07/2021 - 15:00 horas \nMédico: Dr.Armando \nCelular: 992348957",
                style: TextStyle(fontSize: 15)));
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Agenda Médica'),
        backgroundColor: Colors.green,
      ),
      body: _switcherBody(),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Lucian P. Lazzaretti'),
              accountEmail: new Text('lucian.lazzaretti@edu.unipar.br'),
              currentAccountPicture: new CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.green
                        : Colors.white,
                child: new Text(
                  "L",
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.green),
            ),
            new ListTile(
              leading: Icon(Icons.person_add_alt_1),
              title: new Text("Agendamento"),
              subtitle: Text("Cadastre aqui seu agendamento."),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  _index = 0;
                });
                Navigator.pop(context);
              },
            ),
            new Divider(),
            new ListTile(
              leading: Icon(Icons.list_alt),
              title: new Text("Listagem"),
              subtitle: Text("Lista dos agendamentos."),
              trailing: new Icon(Icons.arrow_forward),
              onTap: () {
                setState(() {
                  _index = 1;
                });
                Navigator.pop(context);
              },
            ),
            new Divider()
          ],
        ),
      ),
    );
  }

  widgetTextField() {
    return TextField();
  }
}
