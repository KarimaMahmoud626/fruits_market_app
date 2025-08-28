import 'package:fruits_market/features/Auth/domain/repositiories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future CompeleteInformation({
    String? name,
    String? phoneNumber,
    String? address,
  }) {
    throw UnimplementedError();
  }

  @override
  Future LoginWithFacebook() {
    throw UnimplementedError();
  }

  @override
  Future LoginWithGoogle() {
    throw UnimplementedError();
  }
}
