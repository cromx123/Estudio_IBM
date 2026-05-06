### Que es IMS?
Information management System se compone de 2 productos

- IMS DB: a Database Manager
  - hierarchical data structures

- IMS TM: a Transaction Manager
  - usado para llamadas IMS DC (data communications)
  - pero puede cambiar hacia TM porque más que solo comunicación

## Algo de historia

IMS fue creado por la NASA para el projecto Apollo

En 1967, the first released was completed and shipped
  -> Installed at NASA

En 1968, IBM comercializa el lanzamiento del sistema

A día de hoy... IMS corre en todo el mundo y en una variedad de empresas

Como IMS sobrevive?

- Arquitectura
- Compatibilidad
- Adapatabilidad
- Programación de interfases

Esto es posible con la separación de poderes en la arquitectura


- Multiple region online system

- Database management (IMS DB component)

- Transaction management (IMS TM component)

En palabras Simples

IMS message queue <-> IMS Aplication <-> IMS DB Manager

Entonces el porque IMS continua siendo actual

- Aplicaciones que escribieron para IMS 5,10,15,20,40 años atras, continuan funcionando a dia de hoy.
  - Aveces invocadas desde una pagina web, cloud o mobile... o Continuan llamando desde emuladores o dispositivos 3270

- La aquitectura de componentes de comunicacion de IMS y algunos componentes de base de datos pueden cambiar o ser remplazados, sin afectar aplicaciones IMS


Y el porque de esta aquitectura.

- IMS Transaction Manager (TM)
  - Probee componentes de comunicacion para terminales y impresoras
  - Probee ambientes de ejecución para aplicaciones
  - permite aplicaciones con acceso a IMS y DB2
  - Además probee servicios DBCTL 

- IMS DBCTL (DB Control)
  - Soporta acceso a IMS database sin IMS TM
    - CICS, DB2, WebSphere aplicaction server, z/OS Connect y interfaces distribuidas para IMS database

- IMS DCCTL (DC Control)
  - Soporta IMS TM services sin IMS database
    - IMS TM-SB2 subsistemas 
    - Intended for IMS TM aplicaciones usando solo DB2

Test:

