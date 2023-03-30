import 'package:uuid/uuid.dart';

class BreadCrumb {

  final String _name;
  bool isActive;
  String uuid;

  @override
  int get hashCode => uuid.hashCode;

  String get title => '$_name ${isActive ? '>' : ''} ';

  BreadCrumb({required String name, this.isActive = false,}) :
    _name = name,
    uuid = const Uuid().v4();

  @override
  bool operator ==(covariant BreadCrumb other) =>
      isActive == other.isActive && _name == other._name;
}