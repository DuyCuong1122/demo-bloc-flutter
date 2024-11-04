class PlusMinusState {
  final int value;

  PlusMinusState( {required this.value});
}

class PlusMinusInitial extends PlusMinusState {
  PlusMinusInitial() : super(value: -10);
}