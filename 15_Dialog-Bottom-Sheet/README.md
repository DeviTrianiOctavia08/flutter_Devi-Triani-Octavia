Dialog & Bottom Sheet

1. Aplikasi task manajement
Menambahkan dan menghapus kegiatan.

-TODO 1 : membuat model untuk informasi yang mau disimpan, buat folder models dan di dalamnya buat file dart baru task_model.dart.
class TaskModel {
final String id;
final String taskName;

TaskModel ({
required this.id,
required this.taskName,
});
}

- TODO 2: membuat task screen, buat folder screens di dalamnya buat file dart baru task_screen.dart
class TaskScreen extends StatelessWidget {
const TaskScreen ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Scaffold (
appBar: AppBar (
title: const Text ('Task Management'),
centerTitle: true,
), // AppBar
); // Scaffold
}
}

- TODO 3: membuat empty screen, buat file dart baru empty_task_screen.dart dan folder screens.
class EmptyScreen extends StatelessWidget {
const EmptyScreen ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Container (color: Colors.amber);
}
}

- TODO 4: tambahkan package provider di pubspec.yaml
dependencies:
flutter:
sdk: flutter
provider: ^6.0.2

-TODO 5:
Membuat task manager, buat file dart baru task_manager.dart di dalam folder models. Tambahkan method delete task dan addTask.
class TaskManager extends ChangeNotifier {
final _taskModels = <TaskModel>[ ];
List<TaskModel> get taskModels => List.unmodifiable(_taskModels);

void deleteTask(int index) {
_taskModels.removeAt(index);
notifyListeners();
}

void addTask(TaskModel task) {
_taskModels.add(task);
notifyListeners();
}
}

- TODO 6: (main.dart) menambahkan TaskManager sebagai provider
Widget build (BuildContext context) {
return MultiProvider(
providers: [
ChangeNotifierProvider(
create: (context) => TaskManager (),
), // ChangeNotifierProvider
],
child: const MaterialApp (
debugShowCheckedModeBanner: False,
title: 'Task Management',
home: TaskScreen(),
), // MaterialApp
); // MultiProvider
}

TODO 7: (task_screen.dart) membuat fungsi buildTaskScreen , akan me-return antara Task Screen yang ada data nya atau nya kosong dan panggil fungsi nya dibody.
body: buildTaskScreen (),

Widget buildTaskScreen () {
return Customer<TaskManager> (
builder: (context, manager, child) {
if (manager.taskModels.isNotEmpty) {
return Container ();
} else {
return const EmptyTaskScreen ();
}
},
); // Costumer
}

- TODO 8: membuat task item screen, buat file dart baru task_item_screen.dart didalam folder screens dan tambahkan properti onCreate
class _TaskItemScreenState extends State<TaskItemScreen> {
@override
Widget build (BuildContext context ) {
return Scaffold (
appBar: AppBar(
title: const Text ('Create Task'),
), // AppBar
body: padding(
padding: const Edgeinsets.all(16),
child: Listview (
children: [
// buildTaskNameField
// buildButton
],
), // ListView
), // Padding
); // Scaffold
}
}

final Function (TaskModel) onCreate;
const TaskItemScreen ({
Key? key,
required this.onCreate,
}) : super(key: key);

- TODO 9: (task_screen.dart) buat FloatingActionButton, untuk navigasi ke TaskItemScreen.
floatingActionButton: FloatingActionButton (
child: const Icon(Icons.add),
onPressed: () {
final manager = Provider.of<TaskManager>(context, listen: false);
Navigator.push(
context,
MaterialPageRoute(
builder: (context) => TaskItemScreen (
onCreate (task) {
manager.addTask(task);
Navigator.pop(context);
},
), // TaskItemScreen
), // ManagerPageRoute
);
},
), // FloatingActionButton 

- TODO 10: (task_item_screen.dart) menambahkan state properti, initState, dan dispose.
final _taskNameController = TextEditingController ();
String _taskName = ' ';
@override
void initState() {
super.initState();
_taskNameController.addListener(() {
setState(() {
_taskName = _taskNameController.text;
});
});
}

@override
void dispose () {
_taskNameController.dispose();
super dispose();
}

- TODO 11: (task_item_screen.dart) membuat buildNameField dan dipanggil fungsi nya di dalam ListView.
Widget buildNameField () {
return Column (
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text ('Task title'),
const SizedBox (
height: 8,
), // SizedBox
TextField(
controller: _taskNameController,
cursorColor: colors.black,
decoration: const InputDecoration(
hintText: 'E.g. study',
enableBorder: OutlineInputBorder(
borderSize: BorderSize (color: colors.black),
borderRadius: BorderRadius.all(
Radius.circular(10),
), // BorderRadius.all
), // OutlineInputBorder
), // InputDecoration
) // TextField
],
); // Column
}

TODO 12: (task_item_screen.dart) membuat buildButton dan panggil fungsi nya di dalam ListView
Widget buildButton () {
return ElevatedButton(
child: const Text ('Create Task'),
onPressed: () {},
); // ElevatedButton
}

- TODO 13: membuat Task Item Card, buat folder baru components lalu didalam nya buat file dart baru task_item_card.dart
class TaskItemCard extends StatelessWidget (
final TaskModel task;
const TaskItemCard ({
Key? key,
required this.task,
}) : super (key: key);

@override
Widget build (BuildContext context) {
return Container (
padding: const EdgeInsets.all(16),
decoration: BoxDecoration (
color: Colors.amberAccent[100],
borderRadius: BorderRadius circular(
20,
), // BorderRadius.circular
), // BorderDecoration
child: Row(
children: [
Text(task.taskName),
IconButton(
onPressed: () {},
icon: const Icon(Icons.delete_forever_rounded),
), // IconButton
], 
), // Row
); // Container
}
}

- TODO 14: (task_item_screen.dart) menambahkan call back handler di ElevatedButton pada buildButton, dan menambahkan package uuid
Widget buildButton () {
return ElevatedButton (
child: const Text ('Create Task'),
onPressed: () {
final taskItem = TaskModel(
id: const Uuid().v1(),
taskName : _taskNameController.text,
); // TaskModel
widget.onCreate(taskItem);
},
); // ElevatedButton
}

dependencies:
flutter:
sdk : flutter
provider: ^6.0.2
uuid: ^3.0.5

- TODO 15: membuat task list screen, dalam folder screens buat file dart baru task_list_screen.dart. dan tambahkan di buildTaskScreen (task_screen.dart)
class TaskListScreen extends StatelessWidget {
final TaskManager manager;
const TaskListScreen ({
Key? key,
required this.manager,
}) : super(key: key);

@override
Widget build (BuildContext context) {
final taskItem = manager.taskModels;
return Padding(
padding: const EdgeInsets.all(16),
child: ListView.separated(
itemCount: taskItems.length,
itemBuilder: (context, index) {
final item = taskItems[index];
return TaskItemCard ();
},
separatorBuilder: (context, index) {
return const SizedBox (
height: 16,
); // SizedBox
},
), // ListView.separated
); // Padding
}
}

Widget buildTaskScreen () {
return Costumer<TaskManager>(
builder: (context, manager, child) {
if (manager.taskModels.isNotEmpty) {
return TaskListScreen (
manager : manager,
); // TaskListScreen
} else {
return const EmptyTaskScreen ();
}
}
); // Costumer
}

TODO 16: (task_list_screen.dart) menambahkan properti yang dibutuhkan pada TaskItemCard untuk melihat task yang sudah dibuat.
return TaskItemCard (
key : Key(item.id),
task: item,
); // TaskItemCard

2. AlertDialog
Untuk tampilan android, dari material design, menginformasikan penggunaa tentang situasi tertentu, bisa digunakan untuk mendapatkan input dari user, membutuhkan helper method showDialog.

Cara membuat AlertDialog
- TODO 17: (task_item_card.dart) menambahkan Alert Dialog.
- memanggil fungsi showDialog di dalam fungsi onPressed pada IconButton.
- showDialog membutuhkan context dan builder.
- di builder nya akan me-return AlertDialog.
onPressed: () {
showDialog (
context: context,
builder: (context) => Alert Dialog (
Content: const Text ('Are You sure?'),
actions: [
TextButton (
onPressed: () {
Navigator.pop(context);
},
child: const Text ('NO'),
), // TextButton
TextButton (
onPressed: onPressed,
child: const Text ('YES'),
), // TextButton
],
), // AlertDialog
);
},

AlertDialog menyediakan properti seperti content dan actions, content bisa dimasukkan widget text, gambar dan animasi gambar, actions bisa ditambahkan button untuk menerima respon dari user, TODO 18: (task_item_card.dart) membuat properti onPressed.
onPressed: () {
showDialog (
Context: context,
builder: (context) => AlertDialog (
content: const Text ('Are You sure?'),
actions: [
TextButton (
onPressed: () {
Navigator.pop(context);
},
child: const Text ('NO'),
), // TextButton
TextButton (
onPressed: onPressed,
child: const Text ('YES'),
), // TextButton
],
), // AlertDialog
);
},

class TaskItemCard extends StatelessWidget {
final TaskModel task;
final Function () onPressed;

const TaskItemCard ({
Key? key,
required this.task,
required this.onPressed,
}) : super(key : key);

TODO 19: (task_list_screen.dart) menambahkan fungsi onPressed pada TaskItemCard, pada body fungsi nya tambahan method deteleTask, Navigator.pop(context), dan ScaffoldMessenger.
return TaskItemCard (
key: Key(item.id),
task: item,
onPressed: () {
manager.deleteTask(index);
Navigator.pop(context);
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(content: Text('${item.taskName} Deleted')),
);
},
); // TaskItemCard

Hasil Akhir
Ketika icon delete nya ditekan maka akan menampilkan alert dialog seperti gambar disamping ini "are you sure" no atau yes?

3. Bottom Sheet
Seperti dialog tetapi muncul dari bawah layar aplikasi, menggunakan fungsi bawaan flutter showModalBottomSheet, membutuhkan dua properti, yaitu context dan builder.

Cara membuat Bottom Sheet
- TODO 20: (task_screen.dart) membuat Bottom Sheet.
actions: [
IconButton (
onPressed: () {
showModalBottomSheet (
shape: const RoundedRectangleBorder(
borderRadius: BorderRadius.vertical(
top: Radius.circular(20),
), // BorderRadius.vertical
), // RoundedRectangleBorder
Context: context,
builder: (context) => Container (),
);
},
icon: const Icon(Icons.account_circle),
), // IconButton
],

- TODO 21: buat file dart baru profile_sheet.dart didaam folder components dan buat konten-konten nya.
class ProfileSheet extends StatelessWidget {
const ProfileSheet ({ Key? key}) : super(key: key);

@override
Widget build (BuildContext context) {
return Padding(
padding: const EdgeInsets.all(16),
child: Column(
children: [
Container: (
height: 100,
Widht: 100,
decoration: const BoxDecoration(
shape: BoxShape.circle,
color: Colors.blue,
), // BoxDecoration
), // Container
const SizedBox (
height: 16,
), // SizedBox
const Text ('Andre'),
],
), // Column
); // Padding
}
}

- TODO 22: (task_screen.dart) mengganti container pada builder showModalBottomSheet menjadi ProfileSheet()
builder: (context) => const ProfileSheet (),