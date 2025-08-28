import 'package:flutter/material.dart';

abstract class AuthRepo {
  Future LoginWithGoogle();
  Future LoginWithFacebook();
  Future CompeleteInformation({
    @required String name,
    @required String phoneNumber,
    @required String address,
  });
}
