//Soal Prioritas 2 bagian 2

//Buatlah sebuah class Course dan Student dengan kriteria sebagai berikut:
// Atribut dari Course terdiri dari judul dan deskripsi.
// Atribut dari Student terdiri dari nama, kelas dan daftar course yang dimiliki.
// Student dapat menambahkan course.
// Student dapat menghapus course.
// Student dapat melihat semua course yang telah ditambahkan.

class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course course) {
    daftarCourse.add(course);
  }

  void hapusCourse(Course course) {
    daftarCourse.remove(course);
  }

  void lihatCourse() {
    print('Daftar Course milik $nama:');
    for (var course in daftarCourse) {
      print('${course.judul}: ${course.deskripsi}');
    }
  }
}

void main() {
  var course1 = Course('Matematika', 'Materi tentang matematika dasar');
  var course2 = Course('Fisika', 'Materi tentang konsep fisika');

  var student = Student('Devi Triani Octavia', 'XII');

  student.tambahCourse(course1);
  student.tambahCourse(course2);

  student.lihatCourse();

  student.hapusCourse(course1);

  student.lihatCourse();
}
