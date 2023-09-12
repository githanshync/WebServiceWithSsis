# Servicio Web en SSIS
Ejemplo para consumir servicio web mediante SSIS. El servicio Web realiza conversiones de tipo de cambio en moneda extranjera, para más detalles consultar la url: https://www.banguat.gob.gt/variables/ws/TipoCambio.asmx
## Requerimientos mínimos:
Visual Studio 2022 (importar la solución WebServiceWithSsis).
SQL Server 2022 (como destino para guardar la información consumida).
## Para correr el paquete Ssis:
- Crear la tabla TipoCambio en SQL Server 2022, como destino de los datos consumidos del servicio web (usar archivo TipoCambio.sql de la carpeta “-SCRIPTS”).

![Table]( https://github.com/githanshync/WebServiceWithSsis/blob/master/-img/Table.JPG)
- Asegurarse que exista el archivo key.wsdl en la carpeta my_wsdl o descargar el archivo WSDL de https://www.banguat.gob.gt/variables/ws/TipoCambio.asmx?WSDL y guardarlo con el nombre key.wsdl 
## En el proyecto de Visual Studio:
En el administrador de conexiones:
- Actualizar nombre del servidor, usuario y contraseña de SQL Server [SERVER1]/[MSSQLSERVER]
- Actualizar el valor de la variable vRutaXml que contiene la ruta completa del archivo salida.xml
La tarea Servicio Web en el flujo de control, descargará en el archivo salida.xml los datos consumidos del servicio “TipoCambio” y el método “TipoCambioRango”.

![Tarea]( https://github.com/githanshync/WebServiceWithSsis/blob/master/-img/tarea.JPG)

El componente Data Flow Task se encarga de llevar los datos de salida.xml a la tabla SQL Server TipoCambio.

*Control flow:*

![Control Flow]( https://github.com/githanshync/WebServiceWithSsis/blob/master/-img/ControlFlow.JPG)

*Data flow:*

![Data Flow]( https://github.com/githanshync/WebServiceWithSsis/blob/master/-img/DataFlow.JPG)
