class UnboardingContent{
  String image;
  String title;
  String desciption;
  UnboardingContent(
      {required this.desciption, required this.image, required this.title});
}

List<UnboardingContent> contents=[
  UnboardingContent(
      desciption: 'Alışkanlıklar edinerek \n   Geri dönüşüm yapalım',
      image: "images/page.png",
      title: 'Basit Görevlerle\n  Dünya Daha Güzel Olabilir'),
      UnboardingContent(
          desciption: 'Alışverişlerinizi Geri Dönüştürülmüş\n    Mağzamızdan Yapabilirsiniz',
          image: "images/screen2.png",
          title: 'Ödemelerinizi Kolay ve Güvenli\n     Bir Şekilde Gerçekliştirin'),
          UnboardingContent(
              desciption: 'Tek Tıkla Haritadan Geri Dönüşüm\n           Noktalarına Ulaşın',
              image: "images/map.png",
              title: 'Herkes İçin Erişim Kolaylığı')
];