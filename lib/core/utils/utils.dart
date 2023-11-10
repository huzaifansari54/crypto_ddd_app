import 'dart:async';
import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../confidential/confidential.dart';

typedef ResultOrFailure<Failure, Result> = Future<Either<Failure, Result>>;
typedef DataMap = Map<String, dynamic>;

String endpoint(String point) => Uri.parse(baseUrl + point).toString();
Map<String, String> headerBearerOption(String token) => {
      'Accepts': 'application/json',
      'X-CMC_PRO_API_KEY': token,
    };









/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.



// {
//   "id": "651eb16aa9a23d76953de22e",
//   "account_type_id": "1",
//   "role_id": "1",
//   "verified": true,
//   "permissions": [],
//   "iat": 1696510325,
//   "exp": 3398204650
// }
