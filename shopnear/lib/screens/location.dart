import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

String? dropdownValue;
List listItem = [
  "Thiruvanthapuram",
  "Kollam",
  "Pathanamthitta",
  "Alappuzha",
];

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Container(
            child: Image.asset(
              'assets/images/loc.PNG',
              fit: BoxFit.contain,
            ),
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Select your location',
            style: TextStyle(
              color: Color(0xff181725),
              fontSize: 26,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Swithch on your location to stay in tune with \n what’s happening in your area',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff7C7C7C),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
              child: DropdownButton<String>(
                hint: Text('Select District'),
                value: dropdownValue,
                elevation: 16,
                isExpanded: true,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 1,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  'Thiruvananthapuram',
                  'Kollam',
                  'Pathanamthitta',
                  'Alappuzha',
                  'Kottyam',
                  'Idukki',
                  'Ernakulam',
                  'Thrissur',
                  'Palakkad',
                  'Malappuram',
                  'Kozhikode',
                  'Wayanad',
                  'Kannur',
                  'Kasargod',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
