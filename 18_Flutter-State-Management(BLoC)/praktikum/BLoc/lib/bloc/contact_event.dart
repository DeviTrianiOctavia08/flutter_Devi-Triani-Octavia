import 'package:assets/contact.dart';
import 'package:equatable/equatable.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object> get props => [];
}

class AddContact extends ContactEvent {
  final ContactData newContact;

  const AddContact(this.newContact);

  @override
  List<Object> get props => [newContact];
}

class UpdateContact extends ContactEvent {
  final int index;
  final ContactData updatedContact;

  const UpdateContact(this.index, this.updatedContact);

  @override
  List<Object> get props => [index, updatedContact];
}

class DeleteContact extends ContactEvent {
  final int index;

  const DeleteContact(this.index);

  @override
  List<Object> get props => [index];
}
