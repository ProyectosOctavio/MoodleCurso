-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: moodle
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `obd_external_services_functions`
--

DROP TABLE IF EXISTS `obd_external_services_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_external_services_functions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `externalserviceid` bigint NOT NULL,
  `functionname` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `obd_exteservfunc_ext_ix` (`externalserviceid`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='lists functions available in each service group';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_external_services_functions`
--

LOCK TABLES `obd_external_services_functions` WRITE;
/*!40000 ALTER TABLE `obd_external_services_functions` DISABLE KEYS */;
INSERT INTO `obd_external_services_functions` VALUES (1,1,'core_badges_get_user_badges'),(2,1,'core_blog_get_entries'),(3,1,'core_blog_view_entries'),(4,1,'core_calendar_get_calendar_monthly_view'),(5,1,'core_calendar_get_calendar_day_view'),(6,1,'core_calendar_get_calendar_upcoming_view'),(7,1,'core_calendar_update_event_start_day'),(8,1,'core_calendar_create_calendar_events'),(9,1,'core_calendar_delete_calendar_events'),(10,1,'core_calendar_get_calendar_events'),(11,1,'core_calendar_get_action_events_by_timesort'),(12,1,'core_calendar_get_action_events_by_course'),(13,1,'core_calendar_get_action_events_by_courses'),(14,1,'core_calendar_get_calendar_event_by_id'),(15,1,'core_calendar_submit_create_update_form'),(16,1,'core_calendar_get_calendar_access_information'),(17,1,'core_calendar_get_allowed_event_types'),(18,1,'core_calendar_get_calendar_export_token'),(19,1,'core_comment_get_comments'),(20,1,'core_comment_add_comments'),(21,1,'core_comment_delete_comments'),(22,1,'core_completion_get_activities_completion_status'),(23,1,'core_completion_get_course_completion_status'),(24,1,'core_completion_mark_course_self_completed'),(25,1,'core_completion_update_activity_completion_status_manually'),(26,1,'core_course_get_categories'),(27,1,'core_course_get_contents'),(28,1,'core_course_get_course_module'),(29,1,'core_course_get_course_module_by_instance'),(30,1,'core_course_get_courses'),(31,1,'core_course_search_courses'),(32,1,'core_course_view_course'),(33,1,'core_course_get_user_navigation_options'),(34,1,'core_course_get_user_administration_options'),(35,1,'core_course_get_courses_by_field'),(36,1,'core_course_check_updates'),(37,1,'core_course_get_updates_since'),(38,1,'core_course_get_enrolled_courses_by_timeline_classification'),(39,1,'core_course_get_enrolled_courses_with_action_events_by_timeline_classification'),(40,1,'core_course_get_recent_courses'),(41,1,'core_course_set_favourite_courses'),(42,1,'core_enrol_get_course_enrolment_methods'),(43,1,'core_enrol_get_enrolled_users'),(44,1,'core_enrol_search_users'),(45,1,'core_enrol_get_users_courses'),(46,1,'core_files_get_files'),(47,1,'core_files_delete_draft_files'),(48,1,'core_files_get_unused_draft_itemid'),(49,1,'core_get_component_strings'),(50,1,'core_grades_grader_gradingpanel_point_fetch'),(51,1,'core_grades_grader_gradingpanel_point_store'),(52,1,'core_grades_grader_gradingpanel_scale_fetch'),(53,1,'core_grades_grader_gradingpanel_scale_store'),(54,1,'core_group_get_activity_allowed_groups'),(55,1,'core_group_get_activity_groupmode'),(56,1,'core_group_get_course_groupings'),(57,1,'core_group_get_course_groups'),(58,1,'core_group_get_course_user_groups'),(59,1,'core_message_mute_conversations'),(60,1,'core_message_unmute_conversations'),(61,1,'core_message_block_user'),(62,1,'core_message_get_contact_requests'),(63,1,'core_message_create_contact_request'),(64,1,'core_message_confirm_contact_request'),(65,1,'core_message_decline_contact_request'),(66,1,'core_message_get_received_contact_requests_count'),(67,1,'core_message_delete_contacts'),(68,1,'core_message_delete_conversations_by_id'),(69,1,'core_message_delete_message'),(70,1,'core_message_get_blocked_users'),(71,1,'core_message_data_for_messagearea_search_messages'),(72,1,'core_message_message_search_users'),(73,1,'core_message_get_user_contacts'),(74,1,'core_message_get_conversations'),(75,1,'core_message_get_conversation'),(76,1,'core_message_get_conversation_between_users'),(77,1,'core_message_get_self_conversation'),(78,1,'core_message_get_messages'),(79,1,'core_message_get_conversation_counts'),(80,1,'core_message_get_unread_conversation_counts'),(81,1,'core_message_get_conversation_members'),(82,1,'core_message_get_member_info'),(83,1,'core_message_get_unread_conversations_count'),(84,1,'core_message_mark_all_notifications_as_read'),(85,1,'core_message_mark_all_conversation_messages_as_read'),(86,1,'core_message_mark_message_read'),(87,1,'core_message_mark_notification_read'),(88,1,'core_message_message_processor_config_form'),(89,1,'core_message_search_contacts'),(90,1,'core_message_send_instant_messages'),(91,1,'core_message_send_messages_to_conversation'),(92,1,'core_message_get_conversation_messages'),(93,1,'core_message_unblock_user'),(94,1,'core_message_get_user_notification_preferences'),(95,1,'core_message_get_user_message_preferences'),(96,1,'core_message_set_favourite_conversations'),(97,1,'core_message_unset_favourite_conversations'),(98,1,'core_message_delete_message_for_all_users'),(99,1,'core_message_get_unread_notification_count'),(100,1,'core_notes_create_notes'),(101,1,'core_notes_delete_notes'),(102,1,'core_notes_get_course_notes'),(103,1,'core_notes_view_notes'),(104,1,'core_question_update_flag'),(105,1,'core_rating_get_item_ratings'),(106,1,'core_rating_add_rating'),(107,1,'core_tag_get_tagindex'),(108,1,'core_tag_get_tagindex_per_area'),(109,1,'core_tag_get_tag_areas'),(110,1,'core_tag_get_tag_collections'),(111,1,'core_tag_get_tag_cloud'),(112,1,'core_user_add_user_device'),(113,1,'core_user_add_user_private_files'),(114,1,'core_user_get_course_user_profiles'),(115,1,'core_user_get_users_by_field'),(116,1,'core_user_remove_user_device'),(117,1,'core_user_update_user_preferences'),(118,1,'core_user_view_user_list'),(119,1,'core_user_view_user_profile'),(120,1,'core_user_get_user_preferences'),(121,1,'core_user_update_picture'),(122,1,'core_user_set_user_preferences'),(123,1,'core_user_agree_site_policy'),(124,1,'core_user_get_private_files_info'),(125,1,'core_competency_competency_viewed'),(126,1,'core_competency_list_course_competencies'),(127,1,'core_competency_get_scale_values'),(128,1,'core_competency_user_competency_viewed'),(129,1,'core_competency_user_competency_viewed_in_plan'),(130,1,'core_competency_user_competency_viewed_in_course'),(131,1,'core_competency_user_competency_plan_viewed'),(132,1,'core_competency_grade_competency_in_course'),(133,1,'core_competency_delete_evidence'),(134,1,'core_webservice_get_site_info'),(135,1,'core_block_get_course_blocks'),(136,1,'core_block_get_dashboard_blocks'),(137,1,'core_block_fetch_addable_blocks'),(138,1,'core_filters_get_available_in_context'),(139,1,'core_h5p_get_trusted_h5p_file'),(140,1,'core_table_get_dynamic_table_content'),(141,1,'core_xapi_statement_post'),(142,1,'mod_assign_get_grades'),(143,1,'mod_assign_get_assignments'),(144,1,'mod_assign_get_submissions'),(145,1,'mod_assign_get_user_flags'),(146,1,'mod_assign_set_user_flags'),(147,1,'mod_assign_get_user_mappings'),(148,1,'mod_assign_revert_submissions_to_draft'),(149,1,'mod_assign_lock_submissions'),(150,1,'mod_assign_unlock_submissions'),(151,1,'mod_assign_save_submission'),(152,1,'mod_assign_submit_for_grading'),(153,1,'mod_assign_save_grade'),(154,1,'mod_assign_save_grades'),(155,1,'mod_assign_save_user_extensions'),(156,1,'mod_assign_reveal_identities'),(157,1,'mod_assign_view_grading_table'),(158,1,'mod_assign_view_submission_status'),(159,1,'mod_assign_get_submission_status'),(160,1,'mod_assign_list_participants'),(161,1,'mod_assign_submit_grading_form'),(162,1,'mod_assign_get_participant'),(163,1,'mod_assign_view_assign'),(164,1,'mod_assign_start_submission'),(165,1,'mod_bigbluebuttonbn_can_join'),(166,1,'mod_bigbluebuttonbn_get_recordings'),(167,1,'mod_bigbluebuttonbn_get_recordings_to_import'),(168,1,'mod_bigbluebuttonbn_update_recording'),(169,1,'mod_bigbluebuttonbn_end_meeting'),(170,1,'mod_bigbluebuttonbn_completion_validate'),(171,1,'mod_bigbluebuttonbn_meeting_info'),(172,1,'mod_bigbluebuttonbn_get_bigbluebuttonbns_by_courses'),(173,1,'mod_bigbluebuttonbn_view_bigbluebuttonbn'),(174,1,'mod_bigbluebuttonbn_get_join_url'),(175,1,'mod_book_view_book'),(176,1,'mod_book_get_books_by_courses'),(177,1,'mod_chat_login_user'),(178,1,'mod_chat_get_chat_users'),(179,1,'mod_chat_send_chat_message'),(180,1,'mod_chat_get_chat_latest_messages'),(181,1,'mod_chat_view_chat'),(182,1,'mod_chat_get_chats_by_courses'),(183,1,'mod_chat_get_sessions'),(184,1,'mod_chat_get_session_messages'),(185,1,'mod_choice_get_choice_results'),(186,1,'mod_choice_get_choice_options'),(187,1,'mod_choice_submit_choice_response'),(188,1,'mod_choice_view_choice'),(189,1,'mod_choice_get_choices_by_courses'),(190,1,'mod_choice_delete_choice_responses'),(191,1,'mod_data_get_databases_by_courses'),(192,1,'mod_data_view_database'),(193,1,'mod_data_get_data_access_information'),(194,1,'mod_data_get_entries'),(195,1,'mod_data_get_entry'),(196,1,'mod_data_get_fields'),(197,1,'mod_data_search_entries'),(198,1,'mod_data_approve_entry'),(199,1,'mod_data_delete_entry'),(200,1,'mod_data_add_entry'),(201,1,'mod_data_update_entry'),(202,1,'mod_feedback_get_feedbacks_by_courses'),(203,1,'mod_feedback_get_feedback_access_information'),(204,1,'mod_feedback_view_feedback'),(205,1,'mod_feedback_get_current_completed_tmp'),(206,1,'mod_feedback_get_items'),(207,1,'mod_feedback_launch_feedback'),(208,1,'mod_feedback_get_page_items'),(209,1,'mod_feedback_process_page'),(210,1,'mod_feedback_get_analysis'),(211,1,'mod_feedback_get_unfinished_responses'),(212,1,'mod_feedback_get_finished_responses'),(213,1,'mod_feedback_get_non_respondents'),(214,1,'mod_feedback_get_responses_analysis'),(215,1,'mod_feedback_get_last_completed'),(216,1,'mod_folder_view_folder'),(217,1,'mod_folder_get_folders_by_courses'),(218,1,'mod_forum_get_forums_by_courses'),(219,1,'mod_forum_get_discussion_posts'),(220,1,'mod_forum_get_forum_discussions_paginated'),(221,1,'mod_forum_get_forum_discussions'),(222,1,'mod_forum_view_forum'),(223,1,'mod_forum_view_forum_discussion'),(224,1,'mod_forum_add_discussion_post'),(225,1,'mod_forum_add_discussion'),(226,1,'mod_forum_can_add_discussion'),(227,1,'mod_forum_get_forum_access_information'),(228,1,'mod_forum_set_subscription_state'),(229,1,'mod_forum_set_lock_state'),(230,1,'mod_forum_toggle_favourite_state'),(231,1,'mod_forum_set_pin_state'),(232,1,'mod_forum_delete_post'),(233,1,'mod_forum_get_discussion_post'),(234,1,'mod_forum_prepare_draft_area_for_post'),(235,1,'mod_forum_update_discussion_post'),(236,1,'mod_glossary_get_glossaries_by_courses'),(237,1,'mod_glossary_view_glossary'),(238,1,'mod_glossary_view_entry'),(239,1,'mod_glossary_get_entries_by_letter'),(240,1,'mod_glossary_get_entries_by_date'),(241,1,'mod_glossary_get_categories'),(242,1,'mod_glossary_get_entries_by_category'),(243,1,'mod_glossary_get_authors'),(244,1,'mod_glossary_get_entries_by_author'),(245,1,'mod_glossary_get_entries_by_author_id'),(246,1,'mod_glossary_get_entries_by_search'),(247,1,'mod_glossary_get_entries_by_term'),(248,1,'mod_glossary_get_entries_to_approve'),(249,1,'mod_glossary_get_entry_by_id'),(250,1,'mod_glossary_add_entry'),(251,1,'mod_glossary_delete_entry'),(252,1,'mod_glossary_update_entry'),(253,1,'mod_glossary_prepare_entry_for_edition'),(254,1,'mod_h5pactivity_get_h5pactivity_access_information'),(255,1,'mod_h5pactivity_view_h5pactivity'),(256,1,'mod_h5pactivity_get_attempts'),(257,1,'mod_h5pactivity_get_results'),(258,1,'mod_h5pactivity_get_h5pactivities_by_courses'),(259,1,'mod_h5pactivity_log_report_viewed'),(260,1,'mod_h5pactivity_get_user_attempts'),(261,1,'mod_imscp_view_imscp'),(262,1,'mod_imscp_get_imscps_by_courses'),(263,1,'mod_label_get_labels_by_courses'),(264,1,'mod_lesson_get_lessons_by_courses'),(265,1,'mod_lesson_get_lesson_access_information'),(266,1,'mod_lesson_view_lesson'),(267,1,'mod_lesson_get_questions_attempts'),(268,1,'mod_lesson_get_user_grade'),(269,1,'mod_lesson_get_user_attempt_grade'),(270,1,'mod_lesson_get_content_pages_viewed'),(271,1,'mod_lesson_get_user_timers'),(272,1,'mod_lesson_get_pages'),(273,1,'mod_lesson_launch_attempt'),(274,1,'mod_lesson_get_page_data'),(275,1,'mod_lesson_process_page'),(276,1,'mod_lesson_finish_attempt'),(277,1,'mod_lesson_get_attempts_overview'),(278,1,'mod_lesson_get_user_attempt'),(279,1,'mod_lesson_get_pages_possible_jumps'),(280,1,'mod_lesson_get_lesson'),(281,1,'mod_lti_get_tool_launch_data'),(282,1,'mod_lti_get_ltis_by_courses'),(283,1,'mod_lti_view_lti'),(284,1,'mod_page_view_page'),(285,1,'mod_page_get_pages_by_courses'),(286,1,'mod_quiz_get_quizzes_by_courses'),(287,1,'mod_quiz_view_quiz'),(288,1,'mod_quiz_get_user_attempts'),(289,1,'mod_quiz_get_user_best_grade'),(290,1,'mod_quiz_get_combined_review_options'),(291,1,'mod_quiz_start_attempt'),(292,1,'mod_quiz_get_attempt_data'),(293,1,'mod_quiz_get_attempt_summary'),(294,1,'mod_quiz_save_attempt'),(295,1,'mod_quiz_process_attempt'),(296,1,'mod_quiz_get_attempt_review'),(297,1,'mod_quiz_view_attempt'),(298,1,'mod_quiz_view_attempt_summary'),(299,1,'mod_quiz_view_attempt_review'),(300,1,'mod_quiz_get_quiz_feedback_for_grade'),(301,1,'mod_quiz_get_quiz_access_information'),(302,1,'mod_quiz_get_attempt_access_information'),(303,1,'mod_quiz_get_quiz_required_qtypes'),(304,1,'mod_resource_view_resource'),(305,1,'mod_resource_get_resources_by_courses'),(306,1,'mod_scorm_view_scorm'),(307,1,'mod_scorm_get_scorm_attempt_count'),(308,1,'mod_scorm_get_scorm_scoes'),(309,1,'mod_scorm_get_scorm_user_data'),(310,1,'mod_scorm_insert_scorm_tracks'),(311,1,'mod_scorm_get_scorm_sco_tracks'),(312,1,'mod_scorm_get_scorms_by_courses'),(313,1,'mod_scorm_launch_sco'),(314,1,'mod_scorm_get_scorm_access_information'),(315,1,'mod_survey_get_surveys_by_courses'),(316,1,'mod_survey_view_survey'),(317,1,'mod_survey_get_questions'),(318,1,'mod_survey_submit_answers'),(319,1,'mod_url_view_url'),(320,1,'mod_url_get_urls_by_courses'),(321,1,'mod_wiki_get_wikis_by_courses'),(322,1,'mod_wiki_view_wiki'),(323,1,'mod_wiki_view_page'),(324,1,'mod_wiki_get_subwikis'),(325,1,'mod_wiki_get_subwiki_pages'),(326,1,'mod_wiki_get_subwiki_files'),(327,1,'mod_wiki_get_page_contents'),(328,1,'mod_wiki_get_page_for_editing'),(329,1,'mod_wiki_new_page'),(330,1,'mod_wiki_edit_page'),(331,1,'mod_workshop_get_workshops_by_courses'),(332,1,'mod_workshop_get_workshop_access_information'),(333,1,'mod_workshop_get_user_plan'),(334,1,'mod_workshop_view_workshop'),(335,1,'mod_workshop_add_submission'),(336,1,'mod_workshop_update_submission'),(337,1,'mod_workshop_delete_submission'),(338,1,'mod_workshop_get_submissions'),(339,1,'mod_workshop_get_submission'),(340,1,'mod_workshop_get_submission_assessments'),(341,1,'mod_workshop_get_assessment'),(342,1,'mod_workshop_get_assessment_form_definition'),(343,1,'mod_workshop_get_reviewer_assessments'),(344,1,'mod_workshop_update_assessment'),(345,1,'mod_workshop_get_grades'),(346,1,'mod_workshop_evaluate_assessment'),(347,1,'mod_workshop_get_grades_report'),(348,1,'mod_workshop_view_submission'),(349,1,'mod_workshop_evaluate_submission'),(350,1,'enrol_guest_get_instance_info'),(351,1,'enrol_self_get_instance_info'),(352,1,'enrol_self_enrol_user'),(353,1,'message_airnotifier_is_system_configured'),(354,1,'message_airnotifier_are_notification_preferences_configured'),(355,1,'message_airnotifier_get_user_devices'),(356,1,'message_airnotifier_enable_device'),(357,1,'message_popup_get_popup_notifications'),(358,1,'message_popup_get_unread_popup_notification_count'),(359,1,'block_recentlyaccesseditems_get_recent_items'),(360,1,'block_starredcourses_get_starred_courses'),(361,1,'report_insights_set_notuseful_prediction'),(362,1,'report_insights_set_fixed_prediction'),(363,1,'report_insights_action_executed'),(364,1,'gradereport_overview_get_course_grades'),(365,1,'gradereport_overview_view_grade_report'),(366,1,'gradereport_user_get_grades_table'),(367,1,'gradereport_user_view_grade_report'),(368,1,'gradereport_user_get_grade_items'),(369,1,'tool_analytics_potential_contexts'),(370,1,'tool_lp_data_for_course_competencies_page'),(371,1,'tool_lp_data_for_plans_page'),(372,1,'tool_lp_data_for_plan_page'),(373,1,'tool_lp_data_for_user_evidence_list_page'),(374,1,'tool_lp_data_for_user_evidence_page'),(375,1,'tool_lp_data_for_user_competency_summary'),(376,1,'tool_lp_data_for_user_competency_summary_in_plan'),(377,1,'tool_lp_data_for_user_competency_summary_in_course'),(378,1,'tool_mobile_get_plugins_supporting_mobile'),(379,1,'tool_mobile_get_public_config'),(380,1,'tool_mobile_get_config'),(381,1,'tool_mobile_get_autologin_key'),(382,1,'tool_mobile_get_content'),(383,1,'tool_mobile_call_external_functions'),(384,1,'tool_mobile_validate_subscription_key'),(385,1,'tool_mobile_get_tokens_for_qr_login'),(386,1,'tool_moodlenet_verify_webfinger'),(387,1,'tool_moodlenet_search_courses');
/*!40000 ALTER TABLE `obd_external_services_functions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:37:58