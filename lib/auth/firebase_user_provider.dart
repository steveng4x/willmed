import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WillMedFirebaseUser {
  WillMedFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

WillMedFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WillMedFirebaseUser> willMedFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<WillMedFirebaseUser>(
        (user) => currentUser = WillMedFirebaseUser(user));
