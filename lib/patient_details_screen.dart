import 'package:flutter/material.dart';
import 'patient_entry_model.dart';

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({super.key});

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}
class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  //state
  final _formkey = GlobalKey<FormState>();
  final _namecontroller = TextEditingController();
  final _idcontroller = TextEditingController();
  final _dayscontroller = TextEditingController();
  final _roomcontroller = TextEditingController();
  final _doctorcontroller = TextEditingController();
  final _medicinecontroller = TextEditingController();
  final _othercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Patient Details Screen'),backgroundColor: Colors.amberAccent,),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: _namecontroller,
                  decoration: InputDecoration(
                    labelText: "Patient Name:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter patient name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _idcontroller,
                  decoration: InputDecoration(
                    labelText: "Patient ID:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter patient ID";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _dayscontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Number of Days Admitted:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter number of days admitted";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _roomcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Room Charges per Day:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter room charges per day";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _doctorcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Doctor Consultation Fees:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter doctor consultation fees";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _medicinecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Medicine Charges:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter medicine charges";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: _othercontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Other Charges:",
                    border: OutlineInputBorder()
                  ),
                  validator: (value){
                    if(value==null || value.isEmpty){
                      return "Enter other charges";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple,foregroundColor: Colors.white),
                  onPressed: (){
                    if(_formkey.currentState!.validate()) {
                      final entry = PatientEntry(
                        name: _namecontroller.text,
                        patientId: _idcontroller.text,
                        daysAdmitted: int.parse(_dayscontroller.text),
                        roomChargesPerDay: int.parse(_roomcontroller.text),
                        doctorFees: int.parse(_doctorcontroller.text),
                        medicineCharges: int.parse(_medicinecontroller.text),
                        otherCharges: int.parse(_othercontroller.text),
                      );
                      Navigator.pushNamed(
                        context,
                        '/result',
                        arguments: entry,
                      );
                    }
                  },
                  child: Text("Submit Details"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
