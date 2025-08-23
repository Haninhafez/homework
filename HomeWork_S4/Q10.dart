void main() {
  Map<String, String> countryCodes = {
    'US': 'United States',
    'EG': 'Egypt',
    'CA': 'Canada',
    'JP': 'Japan',
    'CN': 'China',
  };

  print("EG:${countryCodes['EG']}");

  countryCodes['QA'] = 'Qatar';

  print("Total Conturies:${countryCodes.length}");

  if (!countryCodes.containsKey('JO')) {
    print("Jordan missing");
  }
}
