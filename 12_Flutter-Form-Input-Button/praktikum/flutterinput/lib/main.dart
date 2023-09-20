// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Contacts App',
//       home: const ContactsPage(),
//     );
//   }
// }

// class Contact {
//   final String name;
//   final String phoneNumber;

//   Contact(this.name, this.phoneNumber);
// }

// class ContactsPage extends StatefulWidget {
//   const ContactsPage({Key? key}) : super(key: key);

//   @override
//   _ContactsPageState createState() => _ContactsPageState();
// }

// class _ContactsPageState extends State<ContactsPage> {
//   final List<Contact> contacts = [];
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController phoneController = TextEditingController();

//   void addContact() {
//     setState(() {
//       contacts.add(Contact(nameController.text, phoneController.text));
//       nameController.clear();
//       phoneController.clear();
//     });
//   }

//   void deleteContact(int index) {
//     setState(() {
//       contacts.removeAt(index);
//     });
//   }

//   void updateContact(int index, String newName, String newPhoneNumber) {
//     setState(() {
//       contacts[index] = Contact(newName, newPhoneNumber);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Contacts'),
//         leading: Icon(Icons.contacts),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Create New Contacts',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 8),
//             const Text(
//               'Contact Devi Triani Octavia', // Deskripsi ditambahkan di sini
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey,
//               ),
//             ),
//             const SizedBox(height: 16),
//             TextFormField(
//               controller: nameController,
//               decoration: InputDecoration(
//                 labelText: 'Nama',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16),
//             TextFormField(
//               controller: phoneController,
//               decoration: InputDecoration(
//                 labelText: 'Nomor Telepon',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 32),
//             ElevatedButton(
//               onPressed: addContact,
//               child: const Text('Submit'),
//             ),
//             const SizedBox(height: 32),
//             const Text(
//               'List Contacts',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: contacts.length,
//                 itemBuilder: (context, index) {
//                   final contact = contacts[index];
//                   return ListTile(
//                     title: Text(contact.name),
//                     subtitle: Text(contact.phoneNumber),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete),
//                       onPressed: () => deleteContact(index),
//                     ),
//                     onTap: () {
//                       // Implementasikan logika perbarui di sini
//                     },
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts App',
      home: const ContactsPage(),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact(this.name, this.phoneNumber);
}

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final List<Contact> contacts = [];
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  void addContact() {
    setState(() {
      contacts.add(Contact(nameController.text, phoneController.text));
      nameController.clear();
      phoneController.clear();
    });
  }

  void deleteContact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  void updateContact(int index, String newName, String newPhoneNumber) {
    setState(() {
      contacts[index] = Contact(newName, newPhoneNumber);
    });
  }

  void _editContact(int index, Contact contact) {
    TextEditingController nameController = TextEditingController(text: contact.name);
    TextEditingController phoneController = TextEditingController(text: contact.phoneNumber);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Contact'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                updateContact(index, nameController.text, phoneController.text);
                Navigator.of(context).pop();
              },
              child: Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
        leading: Icon(Icons.contacts),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create New Contacts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Contact Devi Triani Octavia',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: addContact,
              child: const Text('Submit'),
            ),
            const SizedBox(height: 32),
            const Text(
              'List Contacts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return ListTile(
                    title: Text(contact.name),
                    subtitle: Text(contact.phoneNumber),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            _editContact(index, contact);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => deleteContact(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
