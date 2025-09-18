class PatientEntry {
  final String name;
  final String patientId;
  final int daysAdmitted;
  final int roomChargesPerDay;
  final int doctorFees;
  final int medicineCharges;
  final int otherCharges;

  PatientEntry({
    required this.name,
    required this.patientId,
    required this.daysAdmitted,
    required this.roomChargesPerDay,
    required this.doctorFees,
    required this.medicineCharges,
    required this.otherCharges,
  });
}
