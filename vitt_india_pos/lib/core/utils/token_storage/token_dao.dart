import 'package:hive/hive.dart';
import 'package:vitt_india_pos/core/constants/const.dart';
import 'package:vitt_india_pos/core/utils/token_storage/token_model.dart';
import 'package:vitt_india_pos/core/utils/utils.dart' as utils;

abstract class TokenHiveBox {
  Future<Box> getTokenHiveBox();
}

class TokenHiveBoxImpl extends TokenHiveBox {
  @override
  Future<Box> getTokenHiveBox() async {
    final encryptionKey =
        await utils.getEncryptionKey(tokenHiveBoxEncryptionKey);
    final box = await Hive.openBox(
      tokenHiveBoxName,
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
    return box;
  }
}

abstract class TokenDao {
  Future<void> storeToken(TokenModel tokenModel);

  Future<String> getRefreshToken();

  Future<void> deleteRefreshToken();
}

class TokenDaoImpl extends TokenDao {
  TokenDaoImpl(this.tokenHiveBox);

  final TokenHiveBox tokenHiveBox;

  @override
  Future<String> getRefreshToken() async {
    final box = await tokenHiveBox.getTokenHiveBox();
    final tokenModel = box.get(tokenHiveBoxName) as TokenModel;
    return tokenModel.refreshToken;
  }

  @override
  Future<void> storeToken(TokenModel tokenModel) async {
    final box = await tokenHiveBox.getTokenHiveBox();
    await box.put(tokenHiveBoxName, tokenModel);
  }

  @override
  Future<void> deleteRefreshToken() async {
    final box = await tokenHiveBox.getTokenHiveBox();
    await box.deleteFromDisk();
  }
}
