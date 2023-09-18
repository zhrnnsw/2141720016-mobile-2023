void main(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Zahra Annisa Wahono');
  names2.add('Zahra Annisa Wahono');
  names1.addAll({'2141720016', '3H'});

  print(names1);
  print(names2);
  print(names3);
}