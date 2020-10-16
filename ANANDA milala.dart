import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new UTS(),
  ));
}

class UTS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Beranda"),
        actions: <Widget>[
          IconButton(
            icon: Icon(IconData(59574, fontFamily: 'MaterialIcons')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pesan()),
              );
            },
          ),
          IconButton(
            icon: Icon(IconData(59574, fontFamily: 'MaterialIcons')),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Rumus()),
              );
            },
          ),
          ],
        ),
      body: new Center(
          child: new Container(
              width: 190.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: new NetworkImage(
                          "https://raw.githubusercontent.com/gunturs/mobile1/master/artis1.PNG"))))),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pesan()),
                );
              },
            ),
          ListTile(
              leading: Icon(Icons.border_all),
              title: Text('Kubus'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Rumus()),
                  );
              },
            ),
            ],
          ),
        ),
      );
  }
}
                  
class Pesan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Cari"),
      backgroundColor: Colors.green,
    ),
  body: RegisterScreen(),
      );
      }
}

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Registrasi'),
        ),
        body: RegisterScreen(),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> with Validation {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';
  String alamat = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: [
              nameField(),
              alamatField(),
              emailField(),
              passwordField(),
              registerButton(),
            ],
          )),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Nama Lengkap'),
      validator: validateName,
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget alamatField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Alamat',
      ),

      validator: validateAlamat,
      onSaved: (String value) {
        alamat = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget registerButton() {
    return RaisedButton(
      color: Colors.blueAccent,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      child: Text('Daftar'),
    );
  }
}

class Validation {
  String validatePassword(String value) {
    if (value.length < 4) {
      return 'Password Minimal 4 Karakter';
    }
    return null;
  }

  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Email tidak valid';
    }
    return null;
  }

  String validateAlamat(String value) {
    if (value.length < 7) {
      return 'Tidak Boleh Kosong';
    }
    return null;
  }

  String validateName(String value) {
    if (value.isEmpty) {
      return 'Nama Lengkap Harus Diisi';
    }
    return null;
  }
}

class Rumus extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Jangan Lupa diisi ya'),
    ),
    body: Penjumlahan(),
      
    );
  }
}

class Penjumlahan extends StatefulWidget {
  _PenjumlahanState createState() => _PenjumlahanState();
}

class _PenjumlahanState extends State<Penjumlahan> {
  final txtsisi = TextEditingController();
  
  String result1  = '';
    String result2 = '';
  getTextInputData() {
    setState(() {
      var sisi = int.parse(txtsisi.text);
      var luas = sisi * sisi;
      var keliling = 12 * sisi;
      result1 = luas.toString();
      result2 = keliling.toString();
    });
  }
  
Widget build(BuildContext context) {
    return Center(
     child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: txtsisi,
              autocorrect: true,
              decoration: InputDecoration(hintText: 'Input Luas'),
            ),
          ),
       
          RaisedButton(
            child: Text('Hitung Luas'),
            onPressed: getTextInputData
          ),

          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: Text("Luas Kubus = $result1"),
          ),
          
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: Text("Volume Kubus = $result2"),
            ),
      ])
    );
  }
}
