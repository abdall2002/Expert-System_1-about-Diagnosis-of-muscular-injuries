import 'package:flutter/material.dart';

int bruises = 0;
int muscle_contraction = 0;
int partial_rupture = 0;
int total_rupture = 0;
int tightening = 0;
int inflammation = 0;
int muscle_strain = 0;
int maxval = 0;
void max()
{
  List<int>values=[bruises , muscle_contraction , partial_rupture , total_rupture , tightening , inflammation , muscle_strain];
  int maxv=values.reduce((value, element) => value > element ? value:element);
  maxval = maxv;
}
void main() {
  runApp( MaterialApp(
      home: Question0()));
  max();
}

class Question0 extends StatefulWidget {
  @override
  State<Question0> createState() => _QuestionsState();
}

class _QuestionsState extends State<Question0> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
      backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                      "1- Do you feel pain? "),
                ),
              ],
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("Hard pain"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("Medium pain")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0),
                Text("Simple pain")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question1()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question1 extends StatefulWidget {
  @override
  State<Question1> createState() => _QuestionsState1();
}

class _QuestionsState1 extends State<Question1> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,backgroundColor: Colors.orange
      ),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text( style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                    "2- Can the player use the injured muscle and continue playing?"),
              ],
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        tightening++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("relatively poor muscle strength")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question2()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question2 extends StatefulWidget {
  @override
  State<Question2> createState() => _QuestionsState2();
}

class _QuestionsState2 extends State<Question2> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "3-Is there bleeding blood?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("hard"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        tightening++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("simple")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question3()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question3 extends StatefulWidget {
  @override
  State<Question3> createState() => _QuestionsState3();
}

class _QuestionsState3 extends State<Question3> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "4-feeling pain like : ............."),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        partial_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Knife"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Tingling or numbness")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question4()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question4 extends StatefulWidget {
  @override
  State<Question4> createState() => _QuestionsState4();
}

class _QuestionsState4 extends State<Question4> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                      "5-Is there a continuous contraction in the affected muscle?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Severe contraction"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Simple contraction")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No contraction")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question5()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question5 extends StatefulWidget {
  @override
  State<Question5> createState() => _QuestionsState5();
}

class _QuestionsState5 extends State<Question5> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                      "6-Do you feel stiff when stressed?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        inflammation++;
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question6()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question6 extends StatefulWidget {
  @override
  State<Question6> createState() => _QuestionsState6();
}

class _QuestionsState6 extends State<Question6> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                      "7-Do you feel weakness in the muscle and lack of flexibility?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        inflammation++;
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question7()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question7 extends StatefulWidget {
  @override
  State<Question7> createState() => _QuestionsState7();
}

class _QuestionsState7 extends State<Question7> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                      "8-Do you notice an increase in symptoms \n when exposed to a cold?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        inflammation++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question8()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question8 extends StatefulWidget {
  @override
  State<Question8> createState() => _QuestionsState8();
}

class _QuestionsState8 extends State<Question8> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "9-Do you feel pain when the doctor presses on \n the affected area the bones with the muscles\n that grow from them?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        inflammation++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question9()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question9 extends StatefulWidget {
  @override
  State<Question9> createState() => _QuestionsState9();
}

class _QuestionsState9 extends State<Question9> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                      "10-Do you feel tired, very tired and low in physical abilities?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question10()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question10 extends StatefulWidget {
  @override
  State<Question10> createState() => _QuestionsState10();
}

class _QuestionsState10 extends State<Question10> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "11-Do we notice a gradual increase in swelling \n during the first 24 hours of injury?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("to some extent")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question11()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question11 extends StatefulWidget {
  @override
  State<Question11> createState() => _QuestionsState11();
}

class _QuestionsState11 extends State<Question11> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "12-Does the skin color change?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        tightening++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("to some extent")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        inflammation++;
                        muscle_strain++;
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question12()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question12 extends StatefulWidget {
  @override
  State<Question12> createState() => _QuestionsState12();
}

class _QuestionsState12 extends State<Question12> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "13-Is there a tumor ?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        tightening++;
                        inflammation++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("to some extent")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question13()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question13 extends StatefulWidget {
  @override
  State<Question13> createState() => _QuestionsState13();
}

class _QuestionsState13 extends State<Question13> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                      "14-Is the blood gathering clear around the site of \n the injury, especially after 48 hours have passed?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("to some extent")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question14()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question14 extends StatefulWidget {
  @override
  State<Question14> createState() => _QuestionsState14();
}

class _QuestionsState14 extends State<Question14> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                      "15-Is there a gap or a decrease in the place of injury?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        total_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        partial_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Simple")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question15()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question15 extends StatefulWidget {
  @override
  State<Question15> createState() => _QuestionsState15();
}

class _QuestionsState15 extends State<Question15> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "16-Does the temperature change locally?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question16()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question16 extends StatefulWidget {
  @override
  State<Question16> createState() => _QuestionsState16();
}

class _QuestionsState16 extends State<Question16> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "17-Is the continuous contraction can be seen \n and touched by hand?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question17()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question17 extends StatefulWidget {
  @override
  State<Question17> createState() => _QuestionsState17();
}

class _QuestionsState17 extends State<Question17> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "18-Do you feel pain when moving the joint \n on which the muscle works, which leads to a \n limitation in the movement of the joint?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        tightening++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("In Great pain"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        inflammation++;
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("In Simple pain")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No pain")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question18()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question18 extends StatefulWidget {
  @override
  State<Question18> createState() => _QuestionsState18();
}

class _QuestionsState18 extends State<Question18> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                      "19-Is there a low level of neuromuscular compatibility?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question19()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question19 extends StatefulWidget {
  @override
  State<Question19> createState() => _QuestionsState19();
}

class _QuestionsState19 extends State<Question19> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "20-Can you move the injured muscle?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        total_rupture++;
                        total_rupture++;
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        partial_rupture++;
                        tightening++;
                        inflammation++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Simple Move")
              ],
            ),
            Row(
              children: [
                Radio(value: 3,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question20()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question20 extends StatefulWidget {
  @override
  State<Question20> createState() => _QuestionsState20();
}

class _QuestionsState20 extends State<Question20> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "21-As a result of external trauma or external\nviolence such as collision with a solid object\n or a player body?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        bruises++;
                        bruises++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question21()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question21 extends StatefulWidget {
  @override
  State<Question21> createState() => _QuestionsState21();
}

class _QuestionsState21 extends State<Question21> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "22-As a result of tightening more than \nnecessary for some fibers in the muscle?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        tightening++;
                        partial_rupture++;
                        tightening++;
                        partial_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question22()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question22 extends StatefulWidget {
  @override
  State<Question22> createState() => _QuestionsState22();
}

class _QuestionsState22 extends State<Question22> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "23-As a result of sudden violent muscle \n contraction to resist an external force at the \n moment of occurrence when the muscle \n is not prepared for it?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        partial_rupture++;
                        total_rupture++;
                        muscle_contraction++;
                        partial_rupture++;
                        total_rupture++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question23()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question23 extends StatefulWidget {
  @override
  State<Question23> createState() => _QuestionsState23();
}

class _QuestionsState23 extends State<Question23> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "24-As a result of voluntary contraction in the \n muscle so that it can be relaxed?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_contraction++;
                        muscle_contraction++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question24()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question24 extends StatefulWidget {
  @override
  State<Question24> createState() => _QuestionsState24();
}

class _QuestionsState24 extends State<Question24> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "25-As a result of chronic stress and tension \n on the small fibers that connect the muscle \n to the associated bone area ?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        inflammation++;
                        inflammation++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No")
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question25()));
              },
              child: Text("Next"),
            ),
          ]),
    );
  }
}

class Question25 extends StatefulWidget {
  @override
  State<Question25> createState() => _QuestionsState25();
}

class _QuestionsState25 extends State<Question25> {
  int? _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ES Diagnosis of muscular injuries"),
        centerTitle: true,
          backgroundColor: Colors.orange),

      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text( style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                      "26-As a result of a decrease in the efficiency \n and ability of playing with a feeling of severe\n pain when performing muscular effort?"),
                ],
              ),
            ),
            Row(
              children: [
                Radio(value: 0,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                      if(value == _value) {
                        muscle_strain++;
                        muscle_strain++;
                        max();
                      }
                    }),
                SizedBox(width: 10.0,),
                Text("Yes"),
              ],
            ),
            Row(
              children: [
                Radio(value: 2,
                    groupValue: _value,
                    onChanged:(value){
                      setState(() {
                        _value = value;
                      });
                    }),
                SizedBox(width: 10.0,),
                Text("No"),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                if(bruises >= 5 && bruises==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bruises()));
                }
                else if (muscle_contraction >= 5 && muscle_contraction==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Contraction()));
                }
                else if (inflammation >= 4 && inflammation==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inflammation()));
                }
                else if (muscle_strain >= 4 && muscle_strain==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Muscle_Strain()));
                }
                else if (partial_rupture >= 7 && partial_rupture==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Partial_Rupture()));
                }
                else if (tightening >= 3 && tightening==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Tight()));
                }
                else if (total_rupture >= 6 && total_rupture==maxval) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Total_Rupture()));
                }
              },
              child: Text("Show Result"),
            ),
          ]),
    );
  }
}

class Bruises extends StatefulWidget {
  @override
  State<Bruises> createState() => _BruisesState();
}

class _BruisesState extends State<Bruises> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Bruises"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: Rest time before starting the \n treatment program Duration of the \n treatment programme 1 day to 10 days"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child:
              Text("Restart"),
            ),
          ]

      ),
    );
  }
}

class Contraction extends StatefulWidget {
  @override
  State<Contraction> createState() => _ContractionState();
}

class _ContractionState extends State<Contraction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Contraction"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: you should take a rest from 1 day to 3 \n days Duration of the treatment programme 1 week"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child: Text("Restart"),
            ),
          ]
      ),
    );
  }
}

class Inflammation extends StatefulWidget {
  @override
  State<Inflammation> createState() => _InflammationState();
}

class _InflammationState extends State<Inflammation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Inflammation"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: you should take a rest from 2 days to \n4 days Duration of the treatment programme \n1 week to 3 weeks"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child: Text("Restart"),
            ),
          ]
      ),
    );
  }
}

class Muscle_Strain extends StatefulWidget {
  @override
  State<Muscle_Strain> createState() => _Muscle_StrainState();
}

class _Muscle_StrainState extends State<Muscle_Strain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Muscle Strain"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: you should take a rest from 2 days to \n4 days Duration of the treatment programme \n1 days to 10 days"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child: Text("Restart"),
            ),
          ]
      ),
    );
  }
}

class Partial_Rupture extends StatefulWidget {
  @override
  State<Partial_Rupture> createState() => _Partial_RuptureState();
}

class _Partial_RuptureState extends State<Partial_Rupture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Partial Rupture"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: you should take a rest from 3 days \nto 6 days Duration of the treatment programme \n3 weeks to 7 weeks"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child: Text("Restart"),
            ),
          ]
      ),
    );
  }
}

class Tight extends StatefulWidget {
  @override
  State<Tight> createState() => _TightState();
}

class _TightState extends State<Tight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Tightening of the muscle"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: you should take a rest from 2 days\nto 4 days Duration of the treatment programme\n10 days to 20 days"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child: Text("Restart"),
            ),
          ]
      ),
    );
  }
}

class Total_Rupture extends StatefulWidget {
  @override
  State<Total_Rupture> createState() => _Total_RuptureState();
}

class _Total_RuptureState extends State<Total_Rupture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text("ES Diagnosis of muscular injuries"),
          backgroundColor: Colors.orange),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text( style: TextStyle(fontWeight: FontWeight.w900,
                        fontSize: 22), "Total_Rupture"),
                  ),]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text( style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                      """Treatment: According to the doctor's opinion \nDuration of the treatment programme \n5 weeks to 12 weeks"""),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                elevation: 0,
              ),
              onPressed: () {
                bruises = 0;
                muscle_contraction = 0;
                inflammation = 0;
                muscle_strain = 0;
                partial_rupture = 0;
                tightening = 0;
                total_rupture = 0;
                Navigator.push(context, MaterialPageRoute(builder: (context) => Question0()));
              },
              child: Text("Restart"),
            ),
          ]
      ),
    );
  }
}
