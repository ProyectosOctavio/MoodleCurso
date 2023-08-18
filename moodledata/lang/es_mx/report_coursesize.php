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
 * Strings for component 'report_coursesize', language 'es_mx', version '4.0'.
 *
 * @package     report_coursesize
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['allcourses'] = 'Todos los cursos';
$string['backupsize'] = 'Tamaño del respaldo';
$string['cachedef_topuserdata'] = 'Información cacheada acerca de los usuarios con la mayor cantidad total de datos';
$string['calcmethod'] = 'Actualizar reporte principal';
$string['calcmethodcron'] = 'Trabajo agendado';
$string['calcmethodhelp'] = 'Si es calculado por trabajo agendado, el reporte se  actualizará  la hora agendada y caceará los resultados para su vista posterior. Esto es recomendado sobre los cálculos instantáneos porque puede seer una consulta muy intensiva/lenta de ejecutar.';
$string['calcmethodlive'] = 'En carga de página';
$string['catsystembackupuse'] = 'El uso para respaldo de sistema y categoría es {$a}.';
$string['catsystemuse'] = 'El uso para respaldo de sistema y categoría, fuera de usuarios y cursos, es de {$a}.';
$string['coursebackupbytes'] = '{$a->backupbytes} bytes usados para respaldar el curso {$a->shortname}';
$string['coursebytes'] = '{$a->bytes} bytes usados por el curso {$a->shortname}';
$string['coursereport'] = 'Resumen de tipos de plugin - TENGA EN CUENTA QUE esto podría ser diferente a lo enlistado en curso  principal y probablemente sea más exacto.';
$string['coursesize'] = 'Tamaño de cursos';
$string['coursesize:view'] = 'Ver reporte de tamaño de curso';
$string['coursesize_desc'] = '<p>Este reporte solamente proporciona valores aproximados; si un archivo es usado varias veces dentro de un curso o en varios cursos, el reporte cuenta cada instancia, aunque Moodle solamente almacena una versión física en disco.</p>';
$string['coursesummary'] = '(ver estadísticas)';
$string['diskusage'] = 'Total';
$string['emptycourseshidden'] = 'Los cursos que no usan espacio de almacenamiento de archivo han sido excluidos de este reporte.';
$string['exportcsv'] = 'Exportar CSV';
$string['filearea'] = 'Área de archivos';
$string['lastupdate'] = '(Última actualización {$a})';
$string['lastupdatenever'] = 'Esperando a que el trabajo agendado genere las estadísticas';
$string['nouserfiles'] = 'No se enlistaron archivos de usuario.';
$string['pluginname'] = 'Tamaño de curso';
$string['privacy:metadata'] = 'El plugin Tamaño del curso no almacena ningún dato personal.';
$string['sharedusage'] = 'Uso compartido';
$string['sharedusagecourse'] = 'Aprox {$a} es compartido con otros cursos.';
$string['sitefilesusage'] = 'Reporte de uso de curso';
$string['sizepermitted'] = '(Uso permitido {$a}MB)';
$string['totalsitedata'] = 'Uso total para datos del sitio: {$a}';
$string['userstopnum'] = 'Usuarios (los {$a} superiores)';
