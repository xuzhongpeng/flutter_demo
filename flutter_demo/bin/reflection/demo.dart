import 'package:reflectable/mirrors.dart';
import 'package:reflectable/reflectable.dart';

const reflector = const Reflector();

class Reflector extends Reflectable
{
  const Reflector() : super(
    invokingCapability,
    typingCapability,
    reflectedTypeCapability,
  );
}

@reflector
class Dictionary
{
  String english, myLang;
  int index;
}

main() { 
   test(); 
}

test()
{
  ClassMirror classMirror = reflector.reflectType(Dictionary);
  Dictionary dic = classMirror.newInstance("", []);
  classMirror.declarations.values.forEach((field)
  {
    VariableMirror variableMirror = field;
    /*??????????????????????????????????????????
    Now How To Get Field types i.e. String & int
    How to instantiate class object
    How to set fields values
    ???????????????????????????????????????????*/
  });
  InstanceMirror instanceMirror = reflector.reflect(dic);
  instanceMirror.invokeSetter("index", 3);
  print(dic.index);
}