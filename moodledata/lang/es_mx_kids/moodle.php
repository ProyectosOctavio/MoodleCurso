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
 * Strings for component 'moodle', language 'es_mx_kids', version '4.0'.
 *
 * @package     moodle
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['activities_help'] = 'Las actividades, como foros, exámenes y wikis, permiten que se añada contenido interactivo al espacio de aprendizaje';
$string['addedtogroupnotenrolled'] = 'No añadido al grupo "{$a}", porque no está inscrito en el espacio';
$string['addnewcourse'] = 'Añadir un nuevo espacio de aprendizaje';
$string['areyousure'] = '¿Estás seguro?';
$string['availablecourses'] = 'Espacios de aprendizaje disponibles';
$string['backtocourselisting'] = 'Regresar a la lista de espacios';
$string['backupcoursefileshelp'] = 'Si se habilita, entonces los archivos de espacios serán incluidos dentro de los respaldos automatizados';
$string['backupfailed'] = '¡Algunos de tus espacios no fueron guardados!';
$string['backupincludemoduleshelp'] = 'Elegir si es que deseas incluir módulos de espacios, con o sin datos de usuarios, dentro de respaldos automatizados';
$string['backupsavetohelp'] = 'Ruta completa hacia el directorio en donde tú quieres guardar los archivos de respaldo<br />(déjalo vacío para guardar en tu directorio de espacio por defecto)';
$string['backupsitefileshelp'] = 'Si se habilita, entonces los archivos del sitio usados en los espacios de aprendizaje serán incuidos dentro de los respaldos automatizados';
$string['bycourseorder'] = 'Por el orden de espacio de aprendizaje';
$string['categories'] = 'Categorías de espacios';
$string['choosecourse'] = 'Elegir un espacio';
$string['commentsrequirelogin'] = 'Tú necesitas ingresar para ver los comentarios';
$string['continuetocourse'] = 'Haz click aquí para entrar a tu espacio de aprendizaje';
$string['course'] = 'Espacio';
$string['courseadministration'] = 'Administración del espacio';
$string['courseapprovedemail2'] = 'Tu espacio solicitado, {$a->name}, ha sido aprobado. Para acceder a tu nuevo espacio de aprendizaje, ve a {$a->url}';
$string['courseapprovedfailed'] = '¡No se pudo guardar el espacio como aprobado!';
$string['courseapprovedsubject'] = '¡Tu espacio ha sido aprobado!';
$string['courseavailable'] = 'Los alumnos pueden entrar a este espacio';
$string['courseavailablenot'] = 'Los alumnos no pueden entrar a este espacio';
$string['coursebackup'] = 'Respaldo del espacio';
$string['coursecategory'] = 'Categoría del espacio';
$string['coursecategory_help'] = 'Esta configuración determina la categoría en la cual aparecerá el espacio de aprendizaje dentro de la lista de espacios.';
$string['coursecategorydeleted'] = 'Categoría de curso eliminada {$a}';
$string['coursecompletion'] = 'Finalización del espacio de aprendizaje';
$string['coursecompletions'] = 'Finalizaciones de espacio de aprendizaje';
$string['coursecreators'] = 'Creador de espacio';
$string['coursecreatorsdescription'] = 'Los creadores de espacio pueden crear nuevos espacios de aprendizaje';
$string['coursedeleted'] = 'Espacio eliminado {$a}';
$string['coursedisplay'] = 'Diseño del espacio';
$string['coursedisplay_help'] = 'Esta configuración determina si es que el espacio de aprendizaje completo es mostrado en una página, o si es dividido en varias páginas. Esta configuración no tiene efecto sobre algunos formatos de espacio, como por ejemplo el formato SCORM.';
$string['coursefiles'] = 'Archivos de espacio heredados';
$string['coursefilesedit'] = 'Editar archivos de espacio heredados';
$string['coursefileswarning_help'] = 'Los archivos de espacio están deprecados desde Moodle 2.0; por favor, usa repositorios externos en su lugar tanto como te sea posible.';
$string['courseformatdata'] = 'Datos de formatos de espacio';
$string['courseformats'] = 'Formatos de espacio';
$string['coursehelpforce'] = 'Forzar el modo de grupo de espacio para cada actividad en el espacio de aprendizaje';
$string['coursehelpformat'] = 'La página principal del espacio de aprendizaje se mostrará en este formato.';
$string['coursehelphiddensections'] = 'Como son mostradas a los alumnos las secciones ocultas en el espacio.';
$string['coursehelpmaximumupload'] = 'Define el tamaño más grande de archivo que puede ser subido en este espacio, limitado por la configuración de todo-el-sitio.';
$string['coursehelpnewsitemsnumber'] = 'Número de ítems recientes que aparecen en la página inicial del espacio de aprendizaje, en una caja de novedades debajo del lado derecho (0 significa que no aparecerá la caja de novedades)';
$string['coursehelpnumberweeks'] = 'Número de semanas/tópicos mostrados en la página principal del espacio de aprendizaje';
$string['coursehidden'] = 'Los alumnos no pueden entrar a este espacio en este momento';
$string['courseinfo'] = 'Información del espacio de aprendizaje';
$string['courselegacyfiles'] = 'Archivos de espacio heredados';
$string['courselegacyfiles_help'] = 'El área de archivos del espacio proporciona cierta compatibilidad hacia atrás con las versiones de Moodle 1.9 y anteriores. Todos los archivos de este área son siempre accesible a todos los participantes en el espacio de aprendizaje (tanto si enlaza a ellos como si no) y no hay manera de saber dónde se pueden estar usando en Moodle cualquiera de estos archivos.

Si utiliza este área para almacenar archivos del espacio, puede exponerse a una serie de riesgos de privacidad y de seguridad, así como a la pérdida de archivos en los respaldos, en las importaciones de espacios o cada vez que el contenido del espacio sea compartido o reutilizado. Por ello se recomienda que no utilice esta área a menos que realmente sepa lo que está haciendo. El enlace inferior proporciona más información acerca de todo esto y le mostrará a Usted algunas mejores maneras de gestionar archivos en Moodle 2.';
$string['courses'] = 'Espacios';
$string['emailtoprivatefilesdenied'] = 'Tu administrador ha deshabilitado la opción para que tu subas tus propios archivos privados';
$string['errorwhenconfirming'] = 'Ha ocurrido un error, por lo que tú aún no has sido confirmado. Si llegaste aquí a través de un enlace en tu correo electrónico, asegúrate de que esa línea en tu correo no esté rota o cortada. De ser así, tendrás que utilizar copiar y pegar para reconstruir adecuadamente el enlace.';
$string['groupnotamember'] = 'Lo sentimos, tu no eres miembro de ese grupo';
$string['htmleditordisabled'] = 'Tú has desactivado el editor HTML en tu perfil de usuario.';
$string['loggedinas'] = 'Tú estás ingresado como {$a}';
$string['loggedinnot'] = 'Tú no has ingresado';
$string['loginalready'] = 'Tu ya has ingresado al sistema';
$string['loginsteps'] = 'Para tener acceso completo a este sitio, necesitas primeramente crear una cuenta.';
$string['logoutconfirm'] = '¿Realmente quieres desconectarte?';
$string['maxfilesreached'] = 'A tí se te permite anexar un máximo de {$a} archivo(s) a este ítem';
$string['moreprofileinfoneeded'] = 'Por favor dinos algo acerca de tí';
$string['notenrolledprofile'] = 'Tú no puedes ver el perfil porque este usuario no está inscrito en este espacio';
$string['notifyloginfailuresmessageend'] = 'Tú puedes ver estas bitácoras en {$a}';
$string['policyagree'] = 'Tú deberás estar de acuerdo con estas condiciones antes de seguir usando este sitio. ¿Estás de acuerdo?';
$string['resetrecordexpired'] = 'El enlace para reiniciar contraseña que usaste tiene más de {$a} minutos de antigüedad y ha caducado. Por favor, realiza un nuevo reinicio de contraseña.';
$string['scalestandard_help'] = 'Está disponible una escala estándar para todo el sitio, para todos los espacios de aprendizaje';
$string['showreports_help'] = 'Los reportes de actividad están disponibles para cada participante que muestre su actividad en el espacio de aprendizaje. Además de listados de sus contribuciones, tales como publicaciones en foros, o envíos de tareas, estos reportes también incluyen bitácoras de acceso. Esta configuración determina si es que un estudiante puede ver sus propios reportes de actividad mediante su página del perfil.';
$string['sitepartlist0'] = 'Para poder ver la lista de participantes, debes ser un profesor del sitio';
$string['sitepartlist1'] = 'Para poder ver la lista de participantes, debes ser un profesor';
$string['startdate_help'] = 'Esta configuración determina el inicio de la primera semana para un espacio de aprendizaje en formato semanal. También determina la fecha más temprana  para la que están disponibles bitácoras de actividades del espacio';
$string['statsnodata'] = 'No hay datos disponibles para la combinación de espacio de aprendizaje y período de tiempo';
$string['userdescription_help'] = 'Esta caja te permite escribir un texto sobre tí mismo. Luego se mostrará en la página de tu perfil para que otras personas puedan verlo. Por favor cuida tus datos personales y considera IMPORTANTE tener la precaución de no escribir "datos personales sensibles" (estado de salud, información genética, creencias religiosas, filosóficas y morales, afiliación sindical, opiniones políticas, orígen racial o étnico, preferencia sexual, ...) que pudieran causarte responsabilidades o riesgos innecesarios a tí y a la Institución. Por favor si estás en México te recomendamos que consultes la página del <a href="http://www.ifai.gob.mx">Instituto Federal de Acceso a la Información y Protección de Datos</a>';
$string['visible_help'] = 'Esta configuración determina si es que el espacio de aprendizaje aparece dentro de la lista de espacios. Con excepción de los profesores y administradores, a los usuarios no se les permite ingresar al espacio.';
$string['welcometocoursetext'] = 'Bienvenido a {$a->coursename} Lo primero que debes hacer es actualizar tu información personal: así podremos saber algo más sobre tí  {$a->profileurl}';
$string['yourself'] = 'tú';
