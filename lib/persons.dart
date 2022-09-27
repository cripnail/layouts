class Person {
  final String title;
  final String email;
  final String picture;
  final String grade;
  final String department;
  final String jobTitle;

  Person(
    this.title,
    this.email,
    this.picture,
    this.grade,
    this.department,
    this.jobTitle,
  );
}

final List<Person> persons = _persons
    .map(
      (e) => Person(
        e['title'],
        e['email'],
        e['picture'],
        e['grade'].toString(),
        e['department'],
        e['jobTitle'],
      ),
    )
    .toList();

final List<Map<String, dynamic>> _persons = [
  {
    "title": "Kalya Tucker",
    "email": "kaylat@contoso.com",
    "picture": "assets/images/2.jpg",
    "grade": 5.6,
    "department": "Human Resources",
    "jobTitle": "HR Manager",
  },
  {
    "title": "Liz Reese",
    "email": "liz@cgyuguy.com",
    "picture": "assets/images/3.jpg",
    "grade": 6.0,
    "department": "PR",
    "jobTitle": "specialist",
  },
  {
    "title": "Marion Hail",
    "email": "marion@cgyuguy.com",
    "picture": "assets/images/4.jpg",
    "grade": 6.0,
    "department": "Finance",
    "jobTitle": "Economist",
  },
  {
    "title": "Valentine Bail",
    "email": "vera@cgyuguy.com",
    "picture": "assets/images/5.jpg",
    "grade": 5.2,
    "department": "Finance",
    "jobTitle": "Counter",
  },
  {
    "title": "Rud Zol",
    "email": "rud@cgyuguy.com",
    "picture": "assets/images/1.jpg",
    "grade": 5.7,
    "department": "IT",
    "jobTitle": "Software Engineer",
  },
  {
    "title": "Maria Dot",
    "email": "maks@cgyuguy.com",
    "picture": "assets/images/6.jpg",
    "grade": 5.5,
    "department": "IT",
    "jobTitle": "Software Engineer",
  },
];
