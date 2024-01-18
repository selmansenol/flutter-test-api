import 'package:flutter/material.dart';
import 'package:flutter_api/models/service_model.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final ServiceModel serviceData;

  const HomePage({required this.serviceData, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servis Detayları'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            const Text('Kullanıcı Bilgileri',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            infoTile(
              'İsim',
              serviceData.data.customer.pppUsername,
            ),
            infoTile(
              'Soyisim',
              serviceData.data.customer.surname,
            ),
            infoTile(
                'Tc Kimlik Numarası', serviceData.data.customer.identityNumber),
            infoTile(
              'Telefon Numarası',
              serviceData.data.customer.phoneNumber,
            ),
            infoTile(
              'E-Posta Adresi',
              serviceData.data.customer.emailAddress,
            ),
            infoTile(
              'Abone No',
              serviceData.data.customer.subscriberNumber,
            ),
            infoTile(
              'Kullanıcı Adı',
              serviceData.data.customer.pppUsername,
            ),
            infoTile(
              'PPP Kullanıcı Adı',
              serviceData.data.customer.pppUsername,
            ),
            infoTile(
              'PPP Şifre',
              serviceData.data.customer.pppPassword,
            ),
            infoTile(
              'Adres',
              serviceData.data.customer.address
                  .replaceAll('Ã–', 'Ö')
                  .replaceAll('Ä°', 'İ')
                  .replaceAll('Ü', 'Ü')
                  .replaceAll('Ğ', 'Ğ')
                  .replaceAll('Ş', 'Ş')
                  .replaceAll('Ç', 'Ç')
                  .replaceAll(RegExp.escape('GÖLCÃœK'), 'GÖLCÜK'),
            ),
            // Add more user info tiles as needed
            const SizedBox(height: 20),

            const Text('Tarife Bilgileri',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            infoTile(
                'Tarife Id', serviceData.data.customer.tariffId.toString()),
            infoTile(
                'Tarife Tipi', serviceData.data.customer.tariffType.toString()),
            infoTile('Tarife Adı',
                serviceData.data.customer.tariffName.replaceAll('Ã–', 'Ö')),
            infoTile(
                'Tarife Bitiş Tarihi',
                DateFormat('yyyy-MM-dd')
                    .format(serviceData.data.customer.membershipDate)),
            daysLeftTile(serviceData.data.customer.tariffExpiryDate),
            infoTile('Tarife Ücreti', serviceData.data.customer.tariffPrice),
            infoTile('Fatura Borç Bilgisi',
                serviceData.data.customer.unpaidInvoiceAmount),

            const SizedBox(
              height: 20,
            ),
            const Text('Ip Bilgileri',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            infoTile(
                'Son Alınan Ip Adresi', serviceData.data.customer.ipAddress),
            infoTile('Sabit Ip Durumu',
                serviceData.data.customer.staticIpStatus.toString()),
          ],
        ),
      ),
    );
  }

  Widget infoTile(String title, String value) {
    return Container(
      margin: const EdgeInsets.all(6),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: RichText(
          text: TextSpan(
        text: title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        children: <TextSpan>[
          TextSpan(
            text: ' : $value',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      )),
    );
  }

  Widget daysLeftTile(DateTime expiryDate) {
    int daysLeft = expiryDate.difference(DateTime.now()).inDays;
    Color color;
    String text;

    if (daysLeft <= 0) {
      color = Colors.red;
      text = 'Tariff expired';
    } else if (daysLeft < 30) {
      color = Colors.orange;
      text = '$daysLeft days remaining';
    } else {
      color = Colors.green;
      text = '$daysLeft days remaining';
    }

    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        title: const Text('Kalan Gün',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        subtitle: Text(text),
        trailing: Icon(Icons.event_note, color: color),
      ),
    );
  }
}
