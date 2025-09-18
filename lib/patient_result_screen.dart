import 'patient_entry_model.dart';
import 'package:flutter/material.dart';

class PatientResultScreen extends StatelessWidget {
  const PatientResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final entry = ModalRoute.of(context)!.settings.arguments as PatientEntry;
    final roomCost = entry.daysAdmitted * entry.roomChargesPerDay;
    final totalBill = roomCost + entry.doctorFees + entry.medicineCharges + entry.otherCharges;
    final isHighBill = totalBill > 50000;

    return Scaffold(
      appBar: AppBar(title: Text("Patient Bill Result Screen"), backgroundColor: Colors.amberAccent),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: ListTile(
                leading: Icon(Icons.person, color: Colors.deepPurple, size: 32),
                title: Text("Name: ${entry.name}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text("Patient ID: ${entry.patientId}", style: TextStyle(fontSize: 16)),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: ListTile(
                leading: Icon(Icons.hotel, color: Colors.blueAccent, size: 32),
                title: Text("Room Cost: ₹$roomCost", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text("Doctor Fees: ₹${entry.doctorFees}", style: TextStyle(fontSize: 16)),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: ListTile(
                leading: Icon(Icons.medical_services, color: Colors.green, size: 32),
                title: Text("Medicine Charges: ₹${entry.medicineCharges}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                subtitle: Text("Other Charges: ₹${entry.otherCharges}", style: TextStyle(fontSize: 16)),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: ListTile(
                leading: Icon(Icons.receipt_long, color: Colors.orange, size: 32),
                title: Text("Total Bill: ₹$totalBill", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
              child: ListTile(
                leading: Icon(Icons.info, color: isHighBill ? Colors.red : Colors.green, size: 32),
                title: isHighBill
                  ? Text("High Medical Bill – Please check with insurance!", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 16))
                  : Text("Bill calculated successfully.", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
