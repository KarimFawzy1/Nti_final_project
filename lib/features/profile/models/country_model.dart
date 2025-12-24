class Country {
  final String name;
  final String code;
  final String dialCode;
  final String flag;

  const Country({
    required this.name,
    required this.code,
    required this.dialCode,
    required this.flag,
  });
}

final List<Country> countries = [
  Country(name: "United States", code: "US", dialCode: "+1", flag: "🇺🇸"),
  Country(name: "Canada", code: "CA", dialCode: "+1", flag: "🇨🇦"),
  Country(name: "United Kingdom", code: "GB", dialCode: "+44", flag: "🇬🇧"),
  Country(name: "Australia", code: "AU", dialCode: "+61", flag: "🇦🇺"),
  Country(name: "New Zealand", code: "NZ", dialCode: "+64", flag: "🇳🇿"),
  Country(name: 'Egypt', code: 'EG', dialCode: '+20', flag: '🇪🇬'),
  Country(name: 'Saudi Arabia', code: 'SA', dialCode: '+966', flag: '🇸🇦'),
  Country(name: 'UAE', code: 'AE', dialCode: '+971', flag: '🇦🇪'),
  Country(name: 'USA', code: 'US', dialCode: '+1', flag: '🇺🇸'),
];
