class TransferModel {
  final int account;
  final double value;

  TransferModel({
    required this.account,
    required this.value,
  });

  @override
  String toString() {
    return 'TransferĂȘncia ---> conta = $account; valor = $value';
  }
}
