### Programming Models in CICS

La evolución de CICS (Customer Information Control System) durante más de 50 años refleja la transición de un mundo de procesamiento secuencial a uno altamente interactivo y modular.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## 1. De Batch a Interactivo

  -  Era Pre-CICS (Batch): Los datos se procesaban de forma secuencial mediante archivos completos o tarjetas perforadas. No existían pantallas; los resultados solo se obtenían al finalizar todo el proceso.

  -  Surgimiento de CICS (70s): Con la llegada de dispositivos de interacción directa (pantallas verdes 3270), IBM creó CICS como uno de los primeros procesadores de transacciones.

  -  Cambio de Paradigma: El usuario pasó a ser una persona, no una máquina. Esto introdujo el acceso aleatorio a los datos y la necesidad de respuestas rápidas (sub-segundo).

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## 2. Estilos de Programación Transaccional

El concepto clave es la "conversación" entre el sistema y el usuario:
A. No Conversacional

  -  Funcionamiento: Tiene un inicio y un fin que ocurren en una sola iteración.

  -  Ejemplo: Una llamada a una API o consultar el saldo de una cuenta. Se envía una solicitud, se recibe la respuesta y la transacción termina inmediatamente sin dejar rastro.

B. Conversacional

  -  Funcionamiento: El programa solicita varios inputs y decide el camino según las respuestas del usuario.

  -  Desventaja Crítica: Mientras el sistema espera la respuesta del usuario, el programa permanece suspendido pero con los recursos bloqueados. Si un usuario se distrae (ej. una llamada telefónica de una hora), los recursos quedan inutilizados para otros, limitando la capacidad del sistema.

C. Pseudo-Conversacional (El Estándar Moderno)

  -  Funcionamiento: Combina la lógica conversacional con la eficiencia de la no conversacional. El programa termina la tarea inmediatamente después de enviar un mensaje al usuario.

  -  Estado y COMMAREA: Para saber dónde se quedó al recibir la respuesta del usuario, el programa guarda información de estado en un área llamada COMMAREA (Communication Area). Esto elimina el tiempo de "pensamiento del usuario" de la carga del procesador.

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
## 3. Modularidad y Capas de Aplicación

Debido a las limitaciones de espacio de memoria en los 70s (16MB), CICS evolucionó hacia una estructura de Regiones Especializadas:

  -  TOR (Terminal Owning Region): Gestiona las terminales.

  -  AOR (Application Owning Region): Aloja la lógica de las aplicaciones.

  -  FOR/DOR (File/Data Owning Region): Gestiona los servicios de datos.

Las 3 Capas Modernas:

  - Capa de Presentación: Gestiona la comunicación con el usuario. Su separación permite cambiar dispositivos (terminales, móviles, tablets) sin alterar la lógica de negocio.

  -  Capa de Lógica de Negocio: Donde reside el trabajo real sobre los datos. Aunque se han sumado lenguajes como Java o Node.js, el núcleo sigue siendo COBOL por su rendimiento y confiabilidad inigualables.

  -  Capa de Servicios de Datos: Separa el acceso a la información (ej. archivos VSAM o bases de datos) de la lógica. Esto permite cambiar el método de almacenamiento o consultar servicios web externos sin afectar al resto de la aplicación.