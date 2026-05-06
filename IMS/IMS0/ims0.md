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

1. IMS Transaction Manager and IMS Database Manager are the two components of IMS?
Yes

2. How did IMS survive and grow?
Architecture and Adaptability

3. Since its introduction as part of the Apollo project, IMS is said to “run the world” because it is installed in a variety of enterprises.  Which of the following reflect these?
All listed here and more!

4. Can IMS be configured for just the IMS TM (transaction manager) component or just the IMS DB (database manager) component?
Yes

5. Does the IMS architecture allow database and communication components to be exchange without affecting the application program?
Yes

6. What was integral to the IMS design from the very beginning which is what allows communication components to be exchanged without impacting the application and which is where IMS and the application receive/send messages ?
IMS Message QUEUE

7. What is the environment called when CICS environments only configure or use the IMS DB component without IMS TM?
DBCTL (DB Control)

8. The IMS architecture reflects a “separation of powers” concept.  What are the separate areas?
Communications management; applications; database management

9. What is the environment called when the IMS Transaction Manager component only provides a configuration with Db2 and not IMS database?
DCCTL (DC Control)

10. What does the IMS acronym mean?
Information Management System

11. Can an IMS application written many decades ago continue working even if it is accessed by a device type (e.g., browser) that was not in existence when the program was written?
Yes -  It can continue running

12. How many transactions per second can a single IMS process?
130000/second

13. What is the IMS nickname?  Choose the most current.
IMS TM/DB


