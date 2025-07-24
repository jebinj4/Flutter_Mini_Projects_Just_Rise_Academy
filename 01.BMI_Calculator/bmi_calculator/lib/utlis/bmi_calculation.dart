String formulaBMI(double weight, double height) {
  final bmi = weight / ((height / 100) * (height / 100));
  if (bmi < 18.5) return "Underweight";
  if (bmi < 24.9) return "Normal weight";
  if (bmi < 29.9) return "Overweight";
  return "Obesity";
}
