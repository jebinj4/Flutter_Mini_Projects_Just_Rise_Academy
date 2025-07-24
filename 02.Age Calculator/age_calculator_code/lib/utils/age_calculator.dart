String calculateAge(DateTime birthDate) {
  final now = DateTime.now();
  // Duration difference = now.difference(birthDate);
  int years = now.year - birthDate.year;
  int months = now.month - birthDate.month;
  int days = now.day - birthDate.day;

  if (days < 0) {
    months--;
    days += DateTime(now.year, now.month, 0).day;
  }

  if (months < 0) {
    years--;
    months += 12;
  }

  return 'You are $years years, $months months, and $days days old.';
}
