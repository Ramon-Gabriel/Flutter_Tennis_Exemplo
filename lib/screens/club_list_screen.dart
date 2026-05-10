import 'package:flutter/material.dart';
import 'package:flutter_beachup/models/club.dart';

// <!--( StatefulWidget )--> Cria widgets que podem mudar dinamicamente. 
//Ideal para listas, formulários, pesquisas, animações e telas com atualização
class ClubListScreen extends StatefulWidget { 
  const ClubListScreen({super.key});

  @override
  State<ClubListScreen> createState() => _ClubListScreenState();
}

class _ClubListScreenState extends State<ClubListScreen> {
  String urlLogo = "https://www.cvtc.com.br/image/beachtennis.jpg";
  List<Club> clubList = [
    Club(
      name: "Quadra Sumaré",
      location: "Maringá",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
    Club(
      name: "Quadra JD Oasis",
      location: "Maringá",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
    Club(
      name: "Quadra Sumaré",
      location: "Maringá",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {

    // <!--( Scaffold )--> é a estrutura base de telas Material. 
    //Ele fornece body, appBar, drawer, bottomNavigationBar e floatingActionButton 
    //Muitas funcionalidades do Material Design dependem do Scaffold.
    return Scaffold( 

      // <!--( const )--> const cria objetos imutáveis em tempo de compilação.
      //Widgets const podem ser reutilizados pelo Flutter sem recriar tudo.
      backgroundColor: const Color.fromARGB(255, 204, 200, 200),

      // <!--( Column )--> Organiza widgets na vertical. Pode haver alinhamento vertical e horizontal. 
      //Se o conteúdo ultrapassar a tela pode ocorrer overflow.
      //Por isso normalmente usamos "SingleChildScrollView" ou "ListView".
      body: Column(

        // <!--( children )--> Recebe uma lista de widgets filhos.
        //Usado em widgets como column, Row, Stack e ListView
        children: [

          // <!--( Expanded )--> faz o widget ocupar espaço proporcional disponível.
          //Só funciona dentro de Row, Column e Flex
          Expanded(

            // <!--( flex )--> Controla o espaço proporcional dentro de um Expanded.
            //Só funciona dentro de Row, Column e Flex 
            flex: 3,

            // <!--( Container )--> Widget extremamente versátil. 
            //Pode definir tamanho, cor, margem, padding, bordas, decoração e alinhamento
            //Container é pesado comparado a widgets específicos.
            //Se você só quer espaçamento: prefira Padding
            //Se só quer cor: prefira ColoredBox
            child: Container(
            // <!--( child )--> Recebe UM único widget filho.

              // <!--( clipBehavior )--> Controla como o conteúdo será cortado.
              clipBehavior: Clip.antiAlias,

              // <!--( BoxDecoration )--> Define aparência visual do Container. 
              //Recursos: bordas, gradientes, sombras, imagens e radius
              decoration: BoxDecoration(
                // <!--( decoration )--> Define aparência visual.
                //Quando usa decoration, o Container perde a propriedade color: direta. A cor deve ir dentro do BoxDecoration.

                //BorderRadius arredonda bordas.
                borderRadius: BorderRadius.only(

                  // <!--( bottomLeft )--> Arredonda apenas o canto inferior esquerdo.
                  bottomLeft: Radius.circular(70),

                  // <!--( bottomRight )--> Arredonda apenas o canto inferior direito.
                  bottomRight: Radius.circular(70),
                ),
              ),

              // <!--( width: double.infinity )--> Ocupa toda largura possível.
              //Pode gerar erro se usado em widgets sem restrição de tamanho.
              width: double.infinity,

              // <!--( Image.asset )--> Mostra imagens locais do projeto.
              //A imagem deve estar declarada no pubspec.yaml.
              child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
              // <!--( BoxFit.cover )--> Faz a imagem preencher completamente o espaço. Pode cortar partes da imagem.

            ),
          ),
          Expanded(
            flex: 1,

            // <!--( Padding )--> Adiciona espaçamento INTERNO.
            child: Padding(
              padding: const EdgeInsets.all(15.0),

              // <!--( Row )--> Organiza widgets horizontalmente.
              //Assim como Column, pode gerar overflow.
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [

                          // <!--( Icon )--> Exibe ícones Material.
                          Expanded(flex: 1, child: Icon(Icons.search)),
                          Expanded(
                            flex: 9,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),

                              // <!--( TextField )--> Campo de entrada de texto.
                              //Precisa de TextEditingController para capturar texto
                              child: TextField(

                                // <!--( InputDecoration )--> Customiza aparência do TextField.
                                //Recursos: hintText, labelText, prefixIcon, suffixIcon e border
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,

                    // <!--( FloatingActionButton )--> Botão flutuante principal.
                    //O onPressed não pode ser null se quiser o botão ativo.
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      backgroundColor: const Color.fromARGB(255, 30, 62, 31),
                      foregroundColor: Colors.yellow,
                      child: Icon(Icons.tune),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,

            // <!--( SingleChildScrollView )--> Permite rolagem.
            //Ideal para conteúdos pequenos. Para listas grandes prefira ListView.builder pois é mais performático.
            child: SingleChildScrollView(
              child: Column(

                // <!--( spacing )--> Adiciona espaçamento automático entre os widgets.
                spacing: 10,
                children: clubList
                  
                    // <!--( .map() )--> Transforma cada item da lista em outro valor.
                    .map(
                      (club) => Container(
                        clipBehavior: Clip.antiAlias,
                        height: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 2,
                                  children: [
                                    Row(
                                      children: [

                                        // <!--( Text )--> Exibe textos. Textos muito grandes podem quebrar layout
                                        // Você pode usar overflow: TextOverflow.ellipsis
                                        Text(
                                          "${club.name}",

                                          // <!--( TextStyle )--> Define estilo do texto.
                                          //Recursos: tamanho, peso, cor, espaçamento e altura
                                          style: TextStyle(

                                            // <!--( fontSize )--> Define o tamanho da fonte.
                                            fontSize: 20,

                                            // <!--( fontWeight )--> Define a espessura da fonte.
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_outlined),
                                        Text(
                                          "${club.location}, ${club.state}",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.wb_sunny_outlined),
                                        Text(
                                          "${club.cover}",
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          color: const Color.fromARGB(
                                            255,
                                            10,
                                            79,
                                            13,
                                          ),
                                        ),
                                        Text(
                                          "${club.price?.toStringAsFixed(2)}/h",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                              255,
                                              10,
                                              79,
                                              13,
                                            ),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // <!--( Placeholder )--> Widget temporário de desenvolvimento. 
                            //Mostra uma caixa marcada indicando espaço reservado.
                            Expanded(flex: 4, child: Placeholder()),
                            // <!--( Image.network )--> Carrega imagem da internet.
                            //Pode falhar por internet, URL inválida e timeout.
                            // Por isso muitas vezes usamos errorBuilder
                          ],
                        ),
                      ),
                    )

                    // <!--( .toList() )--> Converte o resultado do map() para lista.
                    //Necessário porque children: espera: List<Widget>
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
