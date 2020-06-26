import 'package:hasura_connect/hasura_connect.dart';

class CustomHasuraConnect {
  static HasuraConnect getConnect() {
    return HasuraConnect(
      'https://flutter-hasura-postgres.herokuapp.com/v1/graphql',
      localStorageDelegate: () => LocalStorageHive(),
      /*token: (_) async {
        var user = await
      }*/
    );
  }
}