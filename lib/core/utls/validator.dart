import 'package:flutter/material.dart';

abstract class Validators {
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is Required';
    }
    if (!value.contains('@')) {
      return 'Invalid email';
    } else {
      return null;
    }
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is Required';
    }
    if (value.length < 6) {
      return 'Password too short';
    } else {
      return null;
    }
  }

  static String? userName(String? value) {
    if (value == null || value.isEmpty) {
      return 'UserName is Required';
    } else {
      return null;
    }
  }

  static String? date(String? value) {
    if (value == null || value.isEmpty) {
      return 'Select Your birthday';
    } else {
      return null;
    }
  }

  static String? location(String? value) {
    if (value == null || value.isEmpty) {
      return 'Select Your location';
    } else {
      return null;
    }
  }

  static String? city(String? value) {
    if (value == null || value.isEmpty) {
      return 'Select Your city';
    } else {
      return null;
    }
  }
}
