import 'package:hive/hive.dart';

part 'token_model.g.dart';

@HiveType(typeId: 1)
class TokenModel {
  TokenModel({required this.refreshToken});

  @HiveField(1)
  String refreshToken;
}
