<?php
// This file is part of Moodle - https://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <https://www.gnu.org/licenses/>.

/**
 * Strings for component 'portfolio', language 'es_mx', version '4.0'.
 *
 * @package     portfolio
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['activeexport'] = 'Resolver exportación activa';
$string['activeportfolios'] = 'Portafolios disponibles';
$string['addalltoportfolio'] = 'Exportar todo al portafolios';
$string['addnewportfolio'] = 'Agregar un nuevo portafolio';
$string['addtoportfolio'] = 'Exportar al portafolios';
$string['alreadyalt'] = 'Ya exportando: por favor, haga clic aquí para resolver esta transferencia';
$string['alreadyexporting'] = 'Usted ya tiene una exportación de portafolio activa en esta sesión. Antes de continuar, Usted debe de completar esta exportación o cancelarla.¿Le gustaría continuar? (No la cancelará)';
$string['availableformats'] = 'Formatos de exportación disponibles';
$string['callbackclassinvalid'] = 'La clase callback especificada es inválida o no era parte de la jerarquía portfolio_caller';
$string['callercouldnotpackage'] = 'Error en el empaquetado de los datos para exportar: el error original fue {$a}';
$string['cannotsetvisible'] = 'No se puede establecer este a visible - el plugin ha sido completamente deshabilitado debido a una mala configuración.';
$string['commonportfoliosettings'] = 'Configuración común del portafolios';
$string['commonsettingsdesc'] = '<p>El que se considere que una transferencia emplee una cantidad de tiempo  \'Moderada\' o \'Alta\' determina si el usuario podrá esperar o no para que se complete la transferencia .</p><p>Los tamaños de hasta el umbral  \'Moderado\' simplemente se procesan inmediatamente sin preguntarle al usuario, y las transferencia de  \'Moderado\' y \'Alto\' determinan que se ofrezca la opción pero se advierta que tomarán un timpo.</p><p>Adicionalmente, algunos plugins de portafolios puedenignorar esta opción por completo y forzar a que todas las transferencias se pongan en lista de espera.</p>';
$string['configexport'] = 'Configurar datos exportados';
$string['configplugin'] = 'Configurar plugin de portafolios';
$string['configure'] = 'Configurar';
$string['confirmcancel'] = '¿Está seguro de que desea candelar esta exportación?';
$string['confirmexport'] = 'Por favor, confirme esta exportación';
$string['confirmsummary'] = 'Resumen de su exportación';
$string['continuetoportfolio'] = 'Continuar con el portafolios';
$string['deleteportfolio'] = 'Eliminar instancia de portafolios';
$string['destination'] = 'Destino';
$string['disabled'] = 'Lo sentimos, pero las exportaciones de portafolios están deshabilitadas en este sitio';
$string['disabledinstance'] = 'Deshabilitado';
$string['displayarea'] = 'Área de exportación';
$string['displayexpiry'] = 'Tiempo de caducidad de la transferencia';
$string['displayinfo'] = 'Información sobre la exportación';
$string['dontwait'] = 'No esperar';
$string['enabled'] = 'Habilitar portafolios';
$string['enableddesc'] = 'Si se habilita, los usuarios pueden exportar contenido, tales como publicaciones de foros y envíos de tareas, hacia portafolios externos o páginas HTML.';
$string['err_uniquename'] = 'El nombre del portafolios debe ser único (por plugin)';
$string['exportalreadyfinished'] = 'Se ha completado la exportación del portafolios';
$string['exportalreadyfinisheddesc'] = 'Se ha completado la exportación del portafolios';
$string['exportcomplete'] = 'Se ha completado la exportación del portafolios';
$string['exportedpreviously'] = 'Exportaciones previas';
$string['exportexceptionnoexporter'] = 'Ocurrió una excepción_exportación_portafolio con una sesión activa pero sin objeto esportador';
$string['exportexpired'] = 'La exportación del portafolios ha expirado';
$string['exportexpireddesc'] = 'Trató de repetir la exportación de alguna información, o empezar una exportación vacía. Para hacer esto correctamente, debe regresar a la ubicación original y empezar de nuevo. Esto a veces sucede cuando usa el botón de regresar después de completar una exportación o al poner un marcador (bookmark)  en una URL inválida.';
$string['exporting'] = 'Exportando al portafolios';
$string['exportingcontentfrom'] = 'Exportando contenido de {$a}';
$string['exportingcontentto'] = 'Exportando contenido a {$a}';
$string['exportqueued'] = 'La exportación del portafolios ha sido colocada en cola con éxito para su transferencia';
$string['exportqueuedforced'] = 'La exportación del portafolios ha sido colocada en cola con éxito para su transferencia (el sistema remoto ha forzado las transferencias en cola)';
$string['failedtopackage'] = 'No se han encontrado archivos que empaquetar';
$string['failedtosendpackage'] = 'Error al enviar los datos al sistema de portafolios seleccionado: el error original fue {$a}';
$string['filedenied'] = 'Acceso denegado a este archivo';
$string['filenotfound'] = 'Archivo no encontrado';
$string['fileoutputnotsupported'] = 'Reescribir la salida del archivo no se admite para este formato';
$string['format_document'] = 'Documento';
$string['format_file'] = 'Archivo';
$string['format_image'] = 'Imagen';
$string['format_leap2a'] = 'Formato de portafolios Leap2A';
$string['format_mbkp'] = 'Formato de respaldo de Moodle';
$string['format_pdf'] = 'PDF';
$string['format_plainhtml'] = 'HTML';
$string['format_presentation'] = 'Presentación';
$string['format_richhtml'] = 'HTML con adjuntos';
$string['format_spreadsheet'] = 'Hoja de cálculo';
$string['format_text'] = 'Texto plano';
$string['format_video'] = 'Video';
$string['highdbsizethreshold'] = 'Dbsize de transferencia alta';
$string['highdbsizethresholddesc'] = 'Número de registros en la base de datos por encima del cual se consiederará que la transferencia ocupa demasiado tiempo';
$string['highfilesizethreshold'] = 'Tamaño de archivo de transferencia alto';
$string['highfilesizethresholddesc'] = 'Tamaños de archivos mayores que este umbral se consideran que toman mucho tiempo para transferirse';
$string['insanebody'] = '¡Hola! Estás recibiendo este mensaje como administrador del sitio {$a->sitename}. Algunas instancias del plugin de portafolios han sido deshabilitadas automáticamente por estar mal configuradas. Esto significa que los usuarios actualmente no pueden exportar contenidos a estos portafolios. La lista de portafolios que han sido deshabilitados es: {$a->textlist} Esto debe corregirse lo más pronto posible, visitando {$a->fixurl}.';
$string['insanebodyhtml'] = '¡Hola! Estás recibiendo este mensaje como administrador del sitio {$a->sitename}. Algunas instancias del plugin de portafolios han sido deshabilitadas automáticamente por estar mal configuradas. Esto significa que los usuarios actualmente no pueden exportar contenidos a estos portafolios. La lista de portafolios que han sido deshabilitados es: {$a->textlist} Esto debe corregirse lo más pronto posible, visitando <a href="{$a->fixurl}">tlas páginas de configuración de portafolios</a></p>';
$string['insanebodysmall'] = '¡Hola! Estás recibiendo este mensaje como administrador del sitio {$a->sitename}. Algunas instancias del plugin de portafolios han sido deshabilitadas automáticamente por estar mal configuradas. Esto significa que los usuarios actualmente no pueden exportar contenidos a estos portafolios. Esto debe corregirse lo más pronto posible visitando {$a->fixurl}.';
$string['insanesubject'] = 'Algunas instancias de portafolios fueron deshabilitadas automáticamente';
$string['instancedeleted'] = 'Portafolios eliminado con éxito';
$string['instanceismisconfigured'] = 'La instancia de portafolios está mal configurado y se ha pasado por alto. El error fue: {$a}';
$string['instancenotdelete'] = 'No se pudo eliminar el portafolios';
$string['instancenotsaved'] = 'No se pudo guardar el portafolios';
$string['instancesaved'] = 'Postafolios guardado con éxito';
$string['intro'] = 'El contenido que Usted ha creado, como los envíos de tareas, publicaciones en foro y entradas en blog, puede exportarse hacia un portafolios o descargarse.<br> Cualquier portafolios que Usted no quiera usar puede ocultarse, para que no sea enlistado como una opción a la cual exportar contenidos.';
$string['invalidaddformat'] = 'Formato de agregación no válido pasado a portfolio_add_button. ({$a}) Debe ser uno de PORTFOLIO_ADD_XXX';
$string['invalidbuttonproperty'] = 'No se ha podido encontrar esa propiedad ({$a}) del portfolio_button';
$string['invalidconfigproperty'] = 'No se ha podido encontrar esa propiedad de la configuración ({$a->property} de {$a->class})';
$string['invalidexportproperty'] = 'No se ha podido encontrar esa propiedad de exportación en la configuración ({$a->property} de {$a->class})';
$string['invalidfileareaargs'] = 'Argumentos de área de archivo no válidos pasados a set_file_and_format_data - deben contener contextid, component, filearea y itemid';
$string['invalidformat'] = 'Algo está exportando un formato no válido, {$a}';
$string['invalidinstance'] = 'No se ha podido encontrar esta instancia de portafolios';
$string['invalidpreparepackagefile'] = 'LLamada inválida a prepare_package_file - debe elegirse sencilla o multiarchivo';
$string['invalidproperty'] = 'No se pudo encontrar esta propiedad
({$a->property} de {$a->class})';
$string['invalidsha1file'] = 'LLamada inválida a get_sha1_file - debe elegirse sencilla o multiarchivo';
$string['invalidtempid'] = 'ID de exportación no válida: tal vez haya expirado';
$string['invaliduserproperty'] = 'No se pudo encontrar correctamente configurado al usuario ({$a->property} de {$a->class})';
$string['leap2a_emptyselection'] = 'Valor necesario no seleccionado';
$string['leap2a_entryalreadyexists'] = 'Usted trató de añadir una entrada Leap2A con una id ({$a}) que ya existía previamente en este feed';
$string['leap2a_feedtitle'] = 'Exportación Leap2A desde Moodle para {$a}';
$string['leap2a_filecontent'] = 'Trató de poner el contenido de una entrada Leap2A hacia un archivo, en lugar de usar la subclase archivo';
$string['leap2a_invalidentryfield'] = 'Trató de configurar un campo de entrada que no existía ({$a}) o no lo puede configurar directamente';
$string['leap2a_invalidentryid'] = 'Usted ha intentado acceder a una entrada con un ID que no existe ({$a})';
$string['leap2a_missingfield'] = 'Falta Leap2A campo de entrada {$a}';
$string['leap2a_nonexistantlink'] = 'Una entrada Leap2A  ({$a->from}) trató de enlazarse a una entrada no existente  ({$a->to}) con rel {$a->rel}';
$string['leap2a_overwritingselection'] = 'Sobrescribiendo el tipo original de una entrada ({$a}) a la selección en make_selection';
$string['leap2a_selflink'] = 'Una entrada Leap2A ({$a->id}) trató de enlazarse a si misma con rel {$a->rel}';
$string['logs'] = 'Transferir bitácoras';
$string['logsummary'] = 'Transferencias anteriores exitosas';
$string['manageportfolios'] = 'Gestionar portafolios';
$string['manageyourportfolios'] = 'Gestionar sus portafolios';
$string['mimecheckfail'] = 'El plugin de portafolios {$a->plugin} no soporta ese mimetype {$a->mimetype}';
$string['missingcallbackarg'] = 'Falta el argumento callback {$a->arg} para la clase {$a->class}';
$string['moderatedbsizethreshold'] = 'dbsize de transferencia moderada';
$string['moderatedbsizethresholddesc'] = 'Número de registros db sobre los cuales serán considerados que toman un tiempo moderado para transferirse';
$string['moderatefilesizethreshold'] = 'Tamaño de archivo de transferencia moderado';
$string['moderatefilesizethresholddesc'] = 'Los tamaños de archivo mayores a este umbral serán considerados que toman un tiempo moderado para transferirse';
$string['multipleinstancesdisallowed'] = 'Tratando de crear otra instancia de un plugin que ha deshabilitado instancias múltiples ({$a})';
$string['mustsetcallbackoptions'] = 'Usted debe configurar las opciones de callback (llamada de retorno) en el constructor portfolio_add_button o emplear el método de set_callback_options';
$string['noavailableplugins'] = 'Disculpe, pero no hay portafolios disponibles para ser exportados';
$string['nocallbackclass'] = 'No se pudo encontrar la clase callback para usar ({$a})';
$string['nocallbackcomponent'] = 'No se pudo encontrar el componente especificado {$a}.';
$string['nocallbackfile'] = 'Algo está roto dentro del módulo que está tratando de exportar - no pudo encontrarse el archivo de portafolio necesario';
$string['noclassbeforeformats'] = 'Debe configurar la clase callback antes de llamar a  set_formats en portfolio_button';
$string['nocommonformats'] = 'No existen formatos comunes entre los plugins disponibles y el sitio que llama {$a->location} (soportados por el llamador  {$a->formats})';
$string['noinstanceyet'] = 'No se ha seleccionado';
$string['nologs'] = '¡No hay bitácoras para mostrar!';
$string['nomultipleexports'] = 'Lo siento, pero el destino del portafolio ({$a->plugin}) no soporta exportaciones múltiples al mismo tiempo . Por favor <a href="{$a->link}">termine primero el actual</a> e inténtelo de nuevo';
$string['nonprimative'] = 'Se pasó un valor no primitivo como argumento callback a portfolio_add_button. No se puede continuar. La clave era {$a->key} y el valor era {$a->value}';
$string['nopermissions'] = 'Lo sentimos, pero no tiene los permisos necesarios para exportar archivos de esta zona';
$string['notexportable'] = 'Lo sentimos, pero el tipo de contenido que está tratando de exportar no es exportable';
$string['notimplemented'] = 'Lo sentimos, pero está tratando de exportar contenido en un formato que aún no está implementado ({$a})';
$string['notyetselected'] = 'Aún no seleccionado';
$string['notyours'] = 'Usted está tratando de reanudar una exportación de un portafolios que no le pertenece.';
$string['nouploaddirectory'] = 'No pudo crearse un directorio temporal para empaquetar sus datos allí';
$string['off'] = 'Habilitado, pero oculto';
$string['on'] = 'Activado y visible';
$string['plugin'] = 'Plugin Portafolio';
$string['plugincouldnotpackage'] = 'No se pudo empaquetar sus datos para exportar: el error original era {$a}';
$string['pluginismisconfigured'] = 'El plugin de portafolios está mal configurado , omitiendo. El error fue: {$a}';
$string['portfolio'] = 'Portafolio';
$string['portfolios'] = 'Portafolios';
$string['privacy:metadata'] = 'El subsistema de portafolio actúa como un canal, pasando solicitudes de plugins a los diferentes plugins de portafolio.';
$string['privacy:metadata:instance'] = 'Identificador del portafolios';
$string['privacy:metadata:instancesummary'] = 'Almacena datos acerca de instancias y preferencias del portafolio.';
$string['privacy:metadata:name'] = 'Nombre de preferencia';
$string['privacy:metadata:portfolio_log'] = 'Bitácora de transferencias de portafolios (usada para después revisar si hay duplicados)';
$string['privacy:metadata:portfolio_log:caller_class'] = 'Nombre de la clase usada para crear la transferencia';
$string['privacy:metadata:portfolio_log:caller_component'] = 'Nombre del componente responsable para exportación';
$string['privacy:metadata:portfolio_log:time'] = 'Hora de transferencia (en caso de una transferencia en cola, este es el momento en que de hecho corrió la transferencia, no cuando la inició el usuario)';
$string['privacy:metadata:portfolio_log:userid'] = 'ID del usuario que exportó contenido';
$string['privacy:metadata:portfolio_tempdata'] = 'Almacena datos temporales para exportaciones de portafolios.';
$string['privacy:metadata:portfolio_tempdata:data'] = 'Exportar datos';
$string['privacy:metadata:portfolio_tempdata:expirytime'] = 'Hora a la que expirará este registro';
$string['privacy:metadata:portfolio_tempdata:instance'] = 'Instancia de plugin de Portafolios siendo utilizada';
$string['privacy:metadata:portfolio_tempdata:userid'] = 'Usuario efectuando la exportación';
$string['privacy:metadata:userid'] = 'ID del usuario';
$string['privacy:metadata:value'] = 'Valor para la preferencia';
$string['privacy:path'] = 'Instancias de portafolios';
$string['queuesummary'] = 'Transferencias actualmente en cola';
$string['returntowhereyouwere'] = 'Retornar a lugar anterior';
$string['save'] = 'Guardar';
$string['selectedformat'] = 'Elegir el formato de exportación';
$string['selectedwait'] = '¿Elegir esperar?';
$string['selectplugin'] = 'Seleccione el destino';
$string['showhide'] = 'Mostrar / ocultar';
$string['singleinstancenomultiallowed'] = 'Solo está disponible una instancia del plugin de portafolio.';
$string['somepluginsdisabled'] = 'Algunos plugins de exportación han sido deshabilitados porque están mal configurados o dependen de otra cosa que está mal configurada que es:';
$string['sure'] = '¿Confirma que desea eliminar "{$a} \'? Esta acción no se podrá deshacer.';
$string['thirdpartyexception'] = 'Una excepción de tercero se produjo durante la exportación de portafolios ({$a}). Se atrapó y volvió a hacer, pero esto realmente debería de arreglarse.';
$string['transfertime'] = 'Tiempo de transferencia';
$string['unknownplugin'] = 'Desconocido (probablemente haya sido eliminado por el administrador)';
$string['wait'] = 'Espere';
$string['wanttowait_high'] = 'No se recomienda que espere que se complete esta transferencia, pero puede hacerlo si realmente está seguro y sabe lo que hace';
$string['wanttowait_moderate'] = '¿Quiere esperar esta transferencia? Puede tardar varios minutos';
