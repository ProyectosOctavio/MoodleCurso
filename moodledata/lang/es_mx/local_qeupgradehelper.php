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
 * Strings for component 'local_qeupgradehelper', language 'es_mx', version '4.0'.
 *
 * @package     local_qeupgradehelper
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['action'] = 'Acción';
$string['alreadydone'] = 'Todo ya ha sido convertido';
$string['areyousure'] = '¿Está seguro?';
$string['areyousuremessage'] = '¿Desea continuar con la actualización de todos los {$a-> numtoconvert} intentos del examen \'{$a->name}\' en el curso {$a->shortname}?';
$string['areyousureresetmessage'] = 'El examen \'{$a->name}\' en el curso {$a->shortname} tiene {$a->totalattempts} intentos, de los que {$a->convertedattempts} fueron actualizados a partir del sistema anterior. De todos ellos, {$a->resettableattempts} pueden ser reiniciados, para posteriormente reconvertirlos. ¿Esta seguro que quiere continuar con ello?';
$string['attemptstoconvert'] = 'Intentos que necesitan conversión';
$string['backtoindex'] = 'Regresar a página principal';
$string['conversioncomplete'] = 'Conversión completa';
$string['convertattempts'] = 'Intentos de conversión';
$string['convertedattempts'] = 'Intentos convertidos';
$string['convertquiz'] = 'Convertir intentos...';
$string['cronenabled'] = 'Cron activado';
$string['croninstructions'] = 'Puede activar cron para completar automáticamente la actualización tras una actualización parcial. Cron se ejecutará entre las horas establecidas en el día (de acuerdo con la hora del servidor local). Cada evento del cron, puede procesar una serie de intentos hasta consumir el tiempo límite establecido, entonces se detendrá y esperará hasta la próxima ejecución. Aunque usted haya configurado el cron, este no hará nada más a menos que detecte que la actualización principal de 2,1 se ha completado.';
$string['cronprocesingtime'] = 'Tiempo de procesamiento para cada corrida del cron';
$string['cronsetup'] = 'Configurar cron';
$string['cronsetup_desc'] = 'Puede configurar el cron para completar la actualización de los datos de los intentos en exámenes de forma automática.';
$string['cronstarthour'] = 'Hora de inicio';
$string['cronstophour'] = 'Hora de parada';
$string['extracttestcase'] = 'Extraer casos de prueba';
$string['extracttestcase_desc'] = 'Utilizar los datos de ejemplo de la base de datos para ayudar a crear las pruebas unitarias que se pueden utilizar para probar la actualización.';
$string['gotoindex'] = 'Volver a la lista de exámenes que pueden ser actualizados';
$string['gotoquizreport'] = 'Ir a los informes de este examen, para comprobar la actualización';
$string['gotoresetlink'] = 'Ir a la lista de exámenes que pueden ser reiniciados';
$string['includedintheupgrade'] = '¿Incluída en la actualización?';
$string['invalidquizid'] = 'ID del examen no válido. O bien la prueba no existe o no hay intentos para convertir.';
$string['listpreupgrade'] = 'Listado de exámenes e intentos';
$string['listpreupgrade_desc'] = 'Mostrará un informe de todos los exámenes en el sistema y el número de intentos que tienen. Le dará una idea del alcance de la actualización que tiene que hacer.';
$string['listpreupgradeintro'] = 'Este es el número de intentos de examen que tendrán que ser procesados al actualizar su sitio. Si hay unas pocas decenas de miles, no se preocupe. Si hay muchas más piense en el tiempo que tardará la actualización en realizarse.';
$string['listtodo'] = 'Listado de exámenes aún por actualizar';
$string['listtodo_desc'] = 'Mostrará un informe de todos los exámenes en el sistema (si los hay) que tienen intentos que todavía necesitan ser actualizados al nuevo motor de preguntas.';
$string['listtodointro'] = 'Estos son todos los exámenes con los datos de los intentos que todavía hay que convertir. Puede convertir los intentos pulsando sobre el enlace.';
$string['listupgraded'] = 'Enlista los exámenes que ya están actualizados y pueden ser reiniciados';
$string['listupgraded_desc'] = 'Mostrará un informe de todos los exámenes del sistema cuyos intentos han sido actualizados y en los que todavia hay información antigua, por lo que la actualización pueda ser reiniciada y hecha de nuevo.';
$string['listupgradedintro'] = 'Estos son todos los exámenes que tienen intentos que se han actualizado, y donde están los datos de los intentos antiguos, por lo que se pueden restablecer, y volver a realizar la actualización.';
$string['noquizattempts'] = 'Su sitio no tiene ningun intento de exámenes';
$string['nothingupgradedyet'] = 'No hay intentos actualizados que puedan ser reiniciados';
$string['notupgradedsiterequired'] = 'Este script solamente puede funcionar antes de que el sitio sea actualizado.';
$string['numberofattempts'] = 'Número de intentos de exámenes';
$string['oldsitedetected'] = 'Este parece ser un sitio que aún no ha sido actualizado para incluir el nuevo motor de preguntas.';
$string['outof'] = '{$a->some} de {$a->total}';
$string['pluginname'] = 'Ayudante de actualización del motor de preguntas';
$string['pretendupgrade'] = 'Hacer un simulacro de intento de actualización';
$string['pretendupgrade_desc'] = 'La actualización hace tres cosas: Cargar los datos existentes de la BasedeDatos, tranformarlos; y entonces escribir los datos transformados a la BasedeDatos. Este script probará las primeras dos partes del proceso.';
$string['questionsessions'] = 'Sesiones de preguntas';
$string['quizid'] = 'ID del examen';
$string['quizupgrade'] = 'Estado de la actualización de examen';
$string['quizzesthatcanbereset'] = 'Los siguientes exámenes tienen intentos convertidos que Usted puede reiniciar.';
$string['quizzestobeupgraded'] = 'Todos los exámenes con intentos';
$string['quizzeswithunconverted'] = 'Los siguientes exámenes tienen intentos que necesitan ser convertidos';
$string['resetcomplete'] = 'Reinicio complatado';
$string['resetquiz'] = 'Reiniciar intentos...';
$string['resettingquizattempts'] = 'Reiniciando intentos de exámenes';
$string['resettingquizattemptsprogress'] = 'Reiniciando intento {$a->done} / {$a->outof}';
$string['upgradedsitedetected'] = 'Este parece ser un sitio que ya ha sido actualizado para incluir el nuevo motor de preguntas.';
$string['upgradedsiterequired'] = 'Este script solamente puede trabajar despues de que el sitio sea actualizado.';
$string['upgradingquizattempts'] = 'Actualizando los intentos para el examen \'{$a->name}\' en el curso {$a->shortname}';
$string['veryoldattemtps'] = 'Su sitio tiene {$a} intentos de examen que no se han actualizado por completo durante la actualización de Moodle. Estos intentos se manejarán antes de hacer la actualización de Moodle 1.4 a Moodle 1.5. leto durante la actualización de Moodle. Estos intentos se tratarán antes de la actualización principal. Usted debe tener en cuenta el tiempo adicional necesario para ello.';
