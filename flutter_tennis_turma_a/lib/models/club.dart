//Esse arquivo NÃO possui widgets. Ele possui apenas uma classe de modelo (Club):

class Club { // Representa os dados de uma quadra/clube.

  //Campos:
  //Uso de "?" Significa que o valor pode ser null.

  String? name;
  String? location;
  String? state;
  String? cover;
  double? price;
  String? urlImage;

  Club({

    //required Obriga informar o valor ao criar o objeto.

    required this.name,
    required this.location,
    required this.state,
    required this.cover,
    required this.price,
    required this.urlImage,
  });
}
