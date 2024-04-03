import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Widget svg = SvgPicture.asset(
    'isar.svg',
    semanticsLabel: 'ISAR Logo',
    width: 200,
    height: 200,
  );

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Positioned(
                width: size.width * 0.4,
                height: size.height * 0.6,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset("Imagen3.png",),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Trabajo Extraclase\nSBD II",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      svg
                    ],
                  ),
                  SizedBox(height: size.height * 0.25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Integrantes:",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("•	Alexis Garcia Iribar",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 10,),
                          Text("•	Fidel A. Legra Ramirez",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 10,),
                          Text("•	Daniel Zerquera González",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 10,),
                          Text("•	Guillermo Cabodevilla Báez",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.25,),
                ],
              ),
              // Positioned(
              //   left: 0,
              //   bottom: 0, 
              //   width: size.width * 0.3,
              //   height: size.height * 0.3,
              //   child: Image.asset("Imagen10.png",),
              // ),
            ],
          ),
      
          SizedBox(height: size.height * 0.05,),
      
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Text("Que es Isar?",
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    const SizedBox(height: 25,),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: size.width * 0.5
                      ),
                      child: Text("Isar es una base de datos NoSQL super rápida y multiplataforma diseñada específicamente para Flutter.\nEs completamente de código abierto y ofrece una integración sencilla con Flutter, lo que la hace una opción popular para desarrolladores que buscan eficiencia y facilidad de uso en la gestión de datos.",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],),
                  Image.asset("Imagen4.png", width: 300, height: 300,),
                ],),
              ),
            ),
          ),
          const SizedBox(height: 50,),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
            Image.asset("Imagen1.png", width: 500, height: 500,),
            const SizedBox(width: 100,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("Hecho para Flutter",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 25,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: size.width * 0.5
                ),
                child: Text("Mínima inicialización, fácil de usar, sin configuración, sin repetición. Solo agrega algunas líneas de código para comenzar.",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 40,),
              Text("Altamente escalable",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 25,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: size.width * 0.5
                ),
                child: Text("Almacena cientos de miles de registros en una sola base de datos NoSQL y consúltalos de forma eficiente y asíncrona.",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],),
            
          ],),
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text("Múltiples características",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 25,),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.5
                    ),
                    child: Text("Isar posee una gran cantidad de características para ayudarte a administrar tus datos. Índices compuestos y multi-entrada, modificadores de consultas, soporte para JSON, y mucho más.",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Text("Búsqueda de texto completo",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 25,),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.5
                    ),
                    child: Text("Isar tiene incorporado un buscador de texto completo. Crea un índice multi-entrada y busca texto de forma fácil.",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],),
                Image.asset("Imagen8.png", width: 500, height: 500,),
              ],),
            ),
          ),
          const SizedBox(height: 80,),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
            Image.asset("Imagen13.png", width: 500, height: 500,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("Tipeado estático",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 25,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: size.width * 0.5
                ),
                child: Text("Las consultas de Isar son tipeadas estáticamente y verificadas en tiempo de compilación. No hay necesidad de preocuparse por errores en tiempo de ejecución.",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 40,),
              Text("Multiplataforma",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 25,),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: size.width * 0.5
                ),
                child: Text("Soporte completo para iOS, Android, Desktop, WEB!",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],),
            
          ],),
          const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Text("Asíncrona",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 25,),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.5
                    ),
                    child: Text("Isar incluye operaciones de consulta en paralelo y soporte multi-isolate.",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const SizedBox(height: 40,),
                  Text("Código abierto",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 25,),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.5
                    ),
                    child: Text("Completamente de código abierto y libre para siempre!",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],),
                Image.asset("Imagen11.png", width: 500, height: 500,),
              ],),
            ),
          ),
      
          Container(
            color: const Color(0xFF918ef7),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TODOS LOS DERECHOS RESERVADOS ${DateTime.now().year}", textAlign: TextAlign.center, style: Theme.of(context).textTheme.titleLarge,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}