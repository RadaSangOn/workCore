﻿/*==============================================================*/
/* Table: course_grade                                          */
/*==============================================================*/
create table course_grade (
   cgrade_code          char(1)				 not null,
   cgrade_desc          nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_course_grade primary key (cgrade_code)
)
go

/*==============================================================*/
/* Table: instructor                                            */
/*==============================================================*/
create table instructor (
   instructor_code      varchar(30)          not null,
   instructor_desc      nvarchar(100)        not null,
   confirm_date         datetime             null,
   ref_doc              varchar(30)          null,
   contactor            nvarchar(100)        null,
   contactor_detail     nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_instructor primary key (instructor_code)
)
go

/*==============================================================*/
/* Table: course_instructor                                     */
/*==============================================================*/
create table course_instructor (
   instructor_code      varchar(30)          not null,
   course_code          varchar(30)          not null,
   confirm_date         datetime             null,
   ref_doc              varchar(30)          null,
   instructor_cost      money                null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_course_instructor primary key (instructor_code, course_code)
)
go

/*==============================================================*/
/* Table: course_group                                          */
/*==============================================================*/
create table course_group (
   cgroup_code          char(3)              not null,
   cgroup_desc          nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_course_group primary key (cgroup_code)
)
go

/*==============================================================*/
/* Table: course_train_place                                    */
/*==============================================================*/
create table course_train_place (
   place_code           varchar(30)          not null,
   course_code          varchar(30)          not null,
   confirm_date         datetime             null,
   ref_doc              varchar(30)          null,
   place_cost           money                null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_course_train_place primary key (place_code, course_code)
)
go

/*==============================================================*/
/* Table: course_type                                        */
/*==============================================================*/
create table course_type (
   cgroup_code          char(3)              not null,
   ctype_code           char(3)              not null,
   ctype_desc           nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_course_type primary key (ctype_code, cgroup_code)
)
go

/*==============================================================*/
/* Table: ini_config                                            */
/*==============================================================*/
create table ini_config (
   client_code          varchar(30)          not null,
   system               nvarchar(50)         not null,
   module               nvarchar(50)         not null,
   cnfig_item           nvarchar(50)         not null,
   text_value           nvarchar(500)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_ini_config primary key (client_code, system, module, cnfig_item)
)
go

/*==============================================================*/
/* Table: ini_country                                           */
/*==============================================================*/
create table ini_country (
   country_code         int                  not null,
   country_desc         nvarchar(100)        not null,
   area_part            varchar(30)          null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_ini_country primary key (country_code)
)
go

/*==============================================================*/
/* Table: ini_district                                          */
/*==============================================================*/
create table ini_district (
   country_code         int                  not null,
   province_code        char(8)              not null,
   district_code        char(8)              not null,
   dist_desc            nvarchar(100)        not null,
   area_part            varchar(30)          null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_ini_district primary key (district_code, province_code, country_code)
)
go

/*==============================================================*/
/* Table: ini_list_zip                                          */
/*==============================================================*/
create table ini_list_zip (
   province_code        char(8)              not null,
   country_code         int                  not null,
   district_code        char(8)              not null,
   subdistrict_code      char(8)              not null,
   zip_code             char(5)              not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_ini_list_zip primary key (province_code, country_code, district_code, subdistrict_code, zip_code)
)
go

/*==============================================================*/
/* Table: ini_province                                          */
/*==============================================================*/
create table ini_province (
   country_code         int                  not null,
   province_code        char(8)              not null,
   pro_desc             nvarchar(100)        not null,
   area_part            varchar(30)          null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_ini_province primary key (province_code, country_code)
)
go

/*==============================================================*/
/* Table: ini_subdistrict                                       */
/*==============================================================*/
create table ini_subdistrict (
   country_code         int                  not null,
   province_code        char(8)              not null,
   district_code        char(8)              not null,
   subdistrict_code      char(8)              not null,
   dist_desc            nvarchar(100)        not null,
   area_part            varchar(30)          null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_ini_subdistrict primary key (province_code, country_code, district_code, subdistrict_code)
)
go

/*==============================================================*/
/* Table: mem_education                                         */
/*==============================================================*/
create table mem_education (
   member_code          varchar(30)          not null,
   rec_no               int                  not null,
   degree               nvarchar(100)        not null,
   colledge_name        nvarchar(500)        null,
   faculty              nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_education primary key (rec_no, member_code)
)
go

/*==============================================================*/
/* Table: mem_group                                             */
/*==============================================================*/
create table mem_group (
   mem_group_code       char(3)              not null,
   mem_group_desc       nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_group primary key (mem_group_code)
)
go

/*==============================================================*/
/* Table: mem_health                                            */
/*==============================================================*/
create table mem_health (
   member_code          varchar(30)          not null,
   medical_history      nvarchar(500)        null,
   blood_group          char(1)              null,
   hobby                nvarchar(500)        null,
   restrict_food        nvarchar(500)        null,
   special_skill        nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_health primary key (member_code)
)
go

/*==============================================================*/
/* Table: mem_level                                             */
/*==============================================================*/
create table mem_level (
   mlevel_code          char(3)              not null,
   mlevel_desc          nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_level primary key (mlevel_code)
)
go

/*==============================================================*/
/* Table: mem_reward                                            */
/*==============================================================*/
create table mem_reward (
   member_code          varchar(30)          not null,
   rec_no               int                  not null,
   reward_desc          nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_reward primary key (rec_no, member_code)
)
go

/*==============================================================*/
/* Table: mem_site_visit                                        */
/*==============================================================*/
create table mem_site_visit (
   member_code          varchar(30)          not null,
   rec_no               int                  not null,
   site_visit_desc      nvarchar(500)        not null,
   country_code         int                  null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_site_visit primary key (rec_no, member_code)
)
go

/*==============================================================*/
/* Table: mem_social                                            */
/*==============================================================*/
create table mem_social (
   member_code          varchar(30)          not null,
   rec_no               int                  not null,
   social_desc          nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_social primary key (rec_no, member_code)
)
go

/*==============================================================*/
/* Table: mem_status                                            */
/*==============================================================*/
create table mem_status (
   mstatus_code         char(3)              not null,
   mstatus_desc         nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_status primary key (mstatus_code)
)
go

/*==============================================================*/
/* Table: mem_train_record                                      */
/*==============================================================*/
create table mem_train_record (
   course_code          varchar(30)          not null,
   member_code          varchar(30)          not null,
   course_grade         char(1)              null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_mem_train_record primary key (course_code, member_code)
)
go

/*==============================================================*/
/* Table: mem_type                                              */
/*==============================================================*/
create table mem_type (
   mem_group_code       char(3)              not null,
   mem_type_code        char(3)              not null,
   mem_type_desc        nvarchar(100)        not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_type primary key (mem_type_code, mem_group_code)
)
go

/*==============================================================*/
/* Table: mem_worklist                                          */
/*==============================================================*/
create table mem_worklist (
   rec_no               int                  not null,
   member_code          varchar(30)          null,
   company_name_th      nvarchar(100)        null,
   company_name_eng     nvarchar(100)        null,
   position_name_th     nvarchar(100)        null,
   position_name_eng    nvarchar(100)        null,
   work_year            char(4)              null,
   office_address       nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_mem_worklist primary key (rec_no)
)
go

/*==============================================================*/
/* Table: member                                                */
/*==============================================================*/
create table member (
   member_code          varchar(30)          not null,
   fname                nvarchar(100)        null,
   lname                nvarchar(100)        null,
   sex                  char(1)              null,
   nationality          nvarchar(30)              null,
   mem_photo            varchar(30)          null,
   cid_type             char(1)              null,
   cid_card             varchar(30)          null,
   cid_card_pic         varchar(30)          null,
   birthdate            datetime             null,
   current_age          smallint             null,
   religion             nvarchar(30)             null,
   place_name           nvarchar(50)          null,
   marry_status         char(1)              null,
   h_no                 nvarchar(20)          null,
   lot_no               nvarchar(20)          null,
   village              nvarchar(50)         null,
   building             nvarchar(50)         null,
   floor                nvarchar(20)          null,
   room                 nvarchar(20)          null,
   lane                 nvarchar(50)         null,
   street               nvarchar(50)         null,
   subdistrict_code      char(8)              null,
   district_code        char(8)              null,
   province_code        char(8)              null,
   country_code         int                  null,
   zip_code             char(5)              null,
   mstatus_code         char(3)              null,
   mem_type_code        char(3)              null,
   mem_group_code       char(3)              null,
   mlevel_code          char(3)              null,
   zone                 nvarchar(30)          null,
   latitude             decimal(9,6)         null,
   longitude            dec(9,6)             null,
   texta_address        nvarchar(200)         null,
   textb_address        nvarchar(200)         null,
   textc_address        nvarchar(200)         null,
   tel                  nvarchar(50)         null,
   mobile               nvarchar(50)         null,
   fax                  nvarchar(50)         null,
   social_app_data      nvarchar(500)        null,
   email                nvarchar(100)        null,
   parent_code          varchar(30)          null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   rowversion           timestamp            null,
   constraint pk_member primary key (member_code)
)
go

/*==============================================================*/
/* Table: pic_image                                             */
/*==============================================================*/
create table pic_image (
   image_code           varchar(30)          not null,
   image_name           nvarchar(50)         null,
   ref_doc_type         varchar(30)          null,
   ref_doc_code         varchar(30)          null,
   image_file           text                 null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   constraint pk_pic_image primary key (image_code)
)
go

/*==============================================================*/
/* Table: project                                               */
/*==============================================================*/
create table project (
   project_code         varchar(30)          not null,
   project_desc         nvarchar(100)        not null,
   project_date         datetime             null,
   project_approve_date datetime             null,
   ref_doc              varchar(30)          null,
   budget               money                null,
   project_manager      nvarchar(100)        null,
   target_member_join   int                  null,
   active_member_join   int                  null,
   passed_member        int                  null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_project primary key (project_code)
)
go

/*==============================================================*/
/* Table: project_course                                        */
/*==============================================================*/
create table project_course (
   course_code          varchar(30)          not null,
   project_code         varchar(30)          null,
   ctype_code           char(3)              null,
   cgroup_code          char(3)              null,
   course_desc          nvarchar(100)        not null,
   course_date          datetime             null,
   course_approve_date  datetime             null,
   course_begin         datetime             null,
   course_end           datetime             null,
   ref_doc              varchar(30)          null,
   budget               money                null,
   charge_head          char(10)             null,
   support_head         char(10)             null,
   project_manager      nvarchar(100)        null,
   target_member_join   int                  null,
   active_member_join   int                  null,
   passed_member        int                  null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_project_course primary key (course_code)
)
go

/*==============================================================*/
/* Table: project_course_register                               */
/*==============================================================*/
create table project_course_register (
   course_code          varchar(30)          not null,
   member_code          varchar(30)          not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_project_course_register primary key (course_code, member_code)
)
go

/*==============================================================*/
/* Table: project_daily_checklist                               */
/*==============================================================*/
create table project_daily_checklist (
   course_code          varchar(30)          not null,
   member_code          varchar(30)          not null,
   course_date          datetime             not null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_project_daily_checklist primary key (course_date, course_code, member_code)
)
go

/*==============================================================*/
/* Table: project_sponsor                                       */
/*==============================================================*/
create table project_sponsor (
   spon_code            varchar(30)          not null,
   spon_desc            nvarchar(100)        not null,
   confirm_date         datetime             null,
   ref_doc              varchar(30)          null,
   contactor            nvarchar(100)        null,
   contactor_detail     nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_project_sponsor primary key (spon_code)
)
go

/*==============================================================*/
/* Table: project_supporter                                     */
/*==============================================================*/
create table project_supporter (
   project_code         varchar(30)          not null,
   spon_code            varchar(30)          not null,
   ref_doc              varchar(30)          null,
   support_budget       money                null,
   contactor            nvarchar(100)        null,
   contactor_detail     nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_project_supporter primary key (spon_code, project_code)
)
go

/*==============================================================*/
/* Table: train_place                                           */
/*==============================================================*/
create table train_place (
   place_code           varchar(30)          not null,
   instructor_desc      nvarchar(100)        not null,
   confirm_date         datetime             null,
   ref_doc              varchar(30)          null,
   contactor            nvarchar(100)        null,
   contactor_detail     nvarchar(500)        null,
   x_status             char(1)              null,
   x_note               nvarchar(50)         null,
   x_log                nvarchar(500)        null,
   id uniqueidentifier NOT NULL DEFAULT (newid()),
   constraint pk_train_place primary key (place_code)
)
go
