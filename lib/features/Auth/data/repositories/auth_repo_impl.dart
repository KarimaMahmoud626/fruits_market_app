import 'package:fruits_market/features/Auth/domain/repositiories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future compeleteInformation({
    String? name,
    String? phoneNumber,
    String? address,
  }) {
    throw UnimplementedError();
  }

  @override
  Future loginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future loginWithGoogle() {
    throw UnimplementedError();
  }
}
