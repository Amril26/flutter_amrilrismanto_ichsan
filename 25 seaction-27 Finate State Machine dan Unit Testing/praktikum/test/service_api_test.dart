import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:praktikum/models/users_models.dart';
import 'package:praktikum/providers/service_data.dart';

class MockServiceData extends Mock implements ServiceData {}

void main() {
  MockServiceData mockServiceDataProv = MockServiceData();

  test('demo get data provider', () async {
    ServiceData _data = ServiceData();
    await _data.getData();
    expect(_data.listDataUser, isList);
    expect(_data.listDataUser.isNotEmpty, true);
    // when(await mockServiceDataProv.getData())
    //     .thenReturn(() async => <UserModel>[
    //           UserModel(
    //             fristName: 'Michael',
    //             lastName: 'Lawson',
    //             email: 'michael.lawson@reqres.in',
    //             avatar: 'https://reqres.in/img/faces/7-image.jpg',
    //           )
    //         ]);
    // expect(mockServiceDataProv.listDataUser, isList);
  });
}
