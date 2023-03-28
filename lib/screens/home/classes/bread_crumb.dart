import 'package:uuid/uuid.dart';

class BreadCrumb {

  final String _name;
  bool _isActive;
  String uuid;

  @override
  int get hashCode => uuid.hashCode;

  set isActive(bool value) => _isActive = value;

  String get title => '$_name ${_isActive ? '>' : ''} ';

  BreadCrumb({required String name, bool isActive = false,}) :
    _name = name,
    _isActive = isActive,
    uuid = const Uuid().v4();

  @override
  bool operator ==(covariant BreadCrumb other) =>
      _isActive == other._isActive && _name == other._name;
}