void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  gifts['nama'] = 'Zahra Annisa Wahono';
  gifts['nim']= '2141720016';
  nobleGases[1] = 'Zahra Annisa Wahono';
  nobleGases[3]= '2141720016';
  
  mhs1['nama'] = 'Zahra Annisa Wahono';
  mhs1['nim']= '2141720016';
  mhs2[1] = 'Zahra Annisa Wahono';
  mhs2[2]= '2141720016';

  print(gifts);
  print(nobleGases);
}