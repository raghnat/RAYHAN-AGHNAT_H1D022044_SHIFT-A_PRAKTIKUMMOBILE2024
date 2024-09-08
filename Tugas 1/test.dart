class Person {
  String person_name;
  int person_age;

  Person(this.person_name, this.person_age);

  void halo() {
    print("halo saya ${person_name} umur ${person_age}");
  }
}

class SalingSalaman {
  void salaman(List<Person> persons) {
    // Looping untuk membuat setiap orang bersalaman dengan orang lain
    for (int i = 0; i < persons.length; i++) {
      for (int j = i + 1; j < persons.length; j++) {
        print(
            "${persons[i].person_name} bersalaman dengan ${persons[j].person_name}");
      }
    }
  }
}

void main() {
  Person person1 = new Person("Jarvis", 18);
  Person person2 = new Person("Mila", 18);
  Person person3 = new Person("Alex", 19);

  person2.halo();
  person1.halo();
  person3.halo();

  SalingSalaman salingSalam = new SalingSalaman();
  salingSalam.salaman([person1, person2, person3]);
}
