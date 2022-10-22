import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:praktikum/models/users_models.dart';
import 'package:praktikum/providers/service_data.dart';

class MockServiceData extends Mock implements ServiceData {}

void main() {
  MockServiceData mockServiceDataProv = MockServiceData();

  group('testing post, get, update, delete service data ', () {
    test('data yang di ambil adalah list', () async {
      when(mockServiceDataProv.getData()).thenAnswer((_) => [
            UserModel(
              fristName: 'Michael',
              lastName: 'Lawson',
              email: 'michael.lawson@reqres.in',
              avatar: 'https://reqres.in/img/faces/7-image.jpg',
            )
          ]);
      expect(await mockServiceDataProv.getData(), isList);
      expect(await mockServiceDataProv.getData(), isNotEmpty);
    });

    test('data yang di ambil adalah list', () async {
      when(mockServiceDataProv.postData(name: 'Amril', job: 'ngelamun'))
          .thenAnswer(
        (_) => {
          'name': 'Amril',
          'job': 'ngelamun',
        },
      );
      expect(await mockServiceDataProv.postData(name: 'Amril', job: 'ngelamun'),
          isMap);
    });
  });
}
