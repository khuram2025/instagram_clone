import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


class AuthMethods {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore1 = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String bio,
    required String username,
    // required Uint8List file,

}) async {
    String res = "Some Error occurred";
    try {
      if(email.isNotEmpty ||
          password.isNotEmpty ||
          bio.isNotEmpty ||
          username.isNotEmpty ){
        //register user
       UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
       print(cred.user!.uid);
       // add user to database
      await  _firestore1.collection('users').doc(cred.user!.uid).set({
         'username': username,
         'uid': cred.user!.uid,
         'email': email,
         'bio': bio,
         'followers': [],
         'fowling': [],
       });
        res = "Success";
      }
    } catch(err) {
      res = err.toString();
    }
    return res;
  }

}