import 'package:flutter/material.dart';

void main() => runApp(const ZaraStyleApp());

class ZaraStyleApp extends StatelessWidget {
  const ZaraStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const PantalonesScreen(),
    );
  }
}

class PantalonesScreen extends StatelessWidget {
  const PantalonesScreen({super.key});

  final List<Map<String, String>> productos = const [
    {
      'imagen':
          'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?auto=format&fit=crop&w=800&q=80',
      'nombre': 'WIDE LEG TIRO ALTO',
      'precio': '\$49.95'
    },
    {
      'imagen':
          'https://images.unsplash.com/photo-1594633312681-425c7b97ccd1?auto=format&fit=crop&w=800&q=80',
      'nombre': 'JEANS RECTOS PREMIUM',
      'precio': '\$39.95'
    },
    {
      'imagen':
          'https://images.unsplash.com/photo-1582552938357-32b906df40cb?auto=format&fit=crop&w=800&q=80',
      'nombre': 'PANTALÓN PINZAS SATÉN',
      'precio': '\$29.95'
    },
    {
      'imagen':
          'https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=800&q=80',
      'nombre': 'PANTALÓN FLUIDO BLACK',
      'precio': '\$35.95'
    },
    {
      // IMAGEN 5 CORREGIDA
      'imagen':
          'https://images.unsplash.com/photo-1602293589930-45aad59ba3ab?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'nombre': 'CARGO MODERN',
      'precio': '\$45.95'
    },
    {
      // IMAGEN 6 CORREGIDA
      'imagen':
          'https://images.unsplash.com/photo-1503341504253-dff4815485f1?auto=format&fit=crop&w=800&q=80',
      'nombre': 'CULOTTE PRINT',
      'precio': '\$39.95'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 2;

            if (constraints.maxWidth > 900) {
              crossAxisCount = 4;
            } else if (constraints.maxWidth > 600) {
              crossAxisCount = 3;
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),

                  // 🎀 TÍTULO CON PERSONALIDAD
                  const Text(
                    "Pantalones",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.5,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Container(
                    height: 4,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.pink,
                          Colors.deepPurple,
                          Colors.blue
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // 🛍 GRID
                  Expanded(
                    child: GridView.builder(
                      itemCount: productos.length,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 18,
                        mainAxisSpacing: 18,
                        childAspectRatio: 0.70,
                      ),
                      itemBuilder: (context, index) {
                        final item = productos[index];

                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                blurRadius: 15,
                                spreadRadius: 3,
                                offset: const Offset(0, 8),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              // 🖼 IMAGEN
                              Expanded(
                                child: ClipRRect(
                                  borderRadius:
                                      const BorderRadius.vertical(
                                          top: Radius.circular(22)),
                                  child: Image.network(
                                    item['imagen']!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(14),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['precio']!,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      item['nombre']!,
                                      style: const TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    const SizedBox(height: 12),

                                    // 🎨 BOTÓN COLORIDO
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(14),
                                        gradient:
                                            const LinearGradient(
                                          colors: [
                                            Colors.pink,
                                            Colors.deepPurple
                                          ],
                                        ),
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton
                                            .styleFrom(
                                          backgroundColor:
                                              Colors.transparent,
                                          shadowColor:
                                              Colors.transparent,
                                          padding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 12),
                                          shape:
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius
                                                    .circular(14),
                                          ),
                                        ),
                                        child: const Text(
                                          "Añadir",
                                          style: TextStyle(
                                            fontWeight:
                                                FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}