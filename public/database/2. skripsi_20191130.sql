/*
 Navicat Premium Data Transfer

 Source Server         : SQLSRVTRIAL
 Source Server Type    : SQL Server
 Source Server Version : 12002000
 Source Host           : 10.150.1.15\MSSQLTRIAL:1433
 Source Catalog        : SKRIPSI
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12002000
 File Encoding         : 65001

 Date: 30/11/2019 16:51:59
*/


-- ----------------------------
-- Table structure for BeOne_sessions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BeOne_sessions]') AND type IN ('U'))
	DROP TABLE [dbo].[BeOne_sessions]
GO

CREATE TABLE [dbo].[BeOne_sessions] (
  [id] nvarchar(128) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('0') NOT NULL,
  [ip_address] nvarchar(16) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('0') NOT NULL,
  [timestamp] int DEFAULT ((0)) NOT NULL,
  [data] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[BeOne_sessions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of BeOne_sessions
-- ----------------------------
INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'0to7hmak3v2a50vea4u4vddj1n0qt11h', N'10.100.1.81', N'1574491450', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'0vtun6pfnqnctlta2092v3jb508hpr61', N'10.100.1.81', N'1574490705', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'1jqtvpdugupj6p5s1s16513n5klcgojm', N'10.100.1.42', N'1574501314', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'1rhn8k6v69e1u0aalg0mni707874j268', N'10.100.1.81', N'1574491437', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'22rast4rourvd8h2t62p181lh1cnttkc', N'10.100.1.81', N'1574490879', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'30obbt407m7kd5ate9rgp23juilkjn31', N'10.100.1.81', N'1574491578', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'3q05n0rnt2gq1i4eoh3ui02h2ke1ivp1', N'10.100.1.81', N'1574491385', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'483b48df8qtiq52n9rodlaprdj1fn69h', N'10.100.1.81', N'1574491317', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'4ebjojaia999s8mco99ffoagdl3kbf9d', N'10.100.1.81', N'1574491570', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'5j6sqsnf9p312pcah4koeh2l277dur65', N'10.100.1.42', N'1574501345', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'64jgdp4mmrcopjs72497puqnb1mp74b7', N'10.100.1.42', N'1574501314', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'6he8evbs8l4639anrhjj63mbb40b7e8r', N'10.100.1.81', N'1574490998', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'7j319aj8v5414paoojlnj9eu18mjkrt6', N'10.100.1.81', N'1574491352', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'7n2nneas7i5ugmc9fo94uotq8v54b7ou', N'10.100.1.81', N'1574491488', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'81djpcrggem5vbke6napvrgv1rbqefod', N'10.100.1.42', N'1574501314', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'85pfdlrb76llsmh3u9aktsponti8ens7', N'10.100.1.29', N'1575088356', N'auth|a:32:{s:2:"id";s:1:"1";s:8:"username";s:13:"administrator";s:8:"password";s:40:"f865b53623b121fd34ee5426c792e5c33af8c227";s:12:"usergroup_id";s:1:"1";s:13:"department_id";s:1:"1";s:16:"directmanager_id";N;s:12:"userlevel_id";s:1:"3";s:8:"fullname";s:13:"ADMINISTRATOR";s:8:"jobtitle";s:10:"Super User";s:3:"nik";N;s:5:"email";N;s:8:"celluler";N;s:6:"status";i:1;s:8:"m_active";i:1;s:13:"usergroupname";s:13:"Administrator";s:14:"departmentcode";s:5:"00000";s:14:"departmentname";s:14:"Non Department";s:13:"userlevelname";s:7:"Manager";s:13:"peoplemanager";i:1;s:15:"branchoffice_id";s:1:"1";s:7:"lastlog";s:23:"2019-11-30 04:57:04.000";s:7:"chgpass";i:0;s:16:"branchofficename";s:5:"PUSAT";s:18:"directmanager_name";N;s:6:"email2";N;s:6:"period";s:10:"2018-06-01";s:10:"company_id";N;s:11:"companycode";N;s:11:"companyname";N;s:3:"web";N;s:7:"appcode";N;s:7:"expired";i:1575117156;}roles|a:62:{i:0;s:12:"Group::index";i:1;s:13:"Group::insert";i:2;s:13:"Group::update";i:3;s:13:"Group::delete";i:4;s:14:"Group::getData";i:5;s:11:"User::index";i:6;s:12:"User::insert";i:7;s:12:"User::update";i:8;s:13:"User::getData";i:9;s:18:"User::getUsergroup";i:10;s:12:"User::upload";i:11;s:19:"User::getDepartment";i:12;s:17:"User::getDataUser";i:13;s:22:"User::getDirectmanager";i:14;s:18:"User::getUserlevel";i:15;s:21:"User::getBranchoffice";i:16;s:15:"User::getBranch";i:17;s:16:"User::getCompany";i:18;s:16:"Userlevel::index";i:19;s:17:"Userlevel::insert";i:20;s:17:"Userlevel::update";i:21;s:17:"Userlevel::delete";i:22;s:18:"Userlevel::getData";i:23;s:15:"Web_Data::index";i:24;s:17:"Web_Data::getData";i:25;s:20:"New_complaint::index";i:26;s:23:"Complaint_status::index";i:27;s:24:"Complaint_status::insert";i:28;s:25:"Complaint_status::getData";i:29;s:24:"Complaint_status::update";i:30;s:24:"Complaint_status::delete";i:31;s:25:"Complaint_category::index";i:32;s:27:"Complaint_category::getData";i:33;s:26:"Complaint_category::insert";i:34;s:26:"Complaint_category::update";i:35;s:26:"Complaint_category::delete";i:36;s:24:"Cakupan_complaint::index";i:37;s:26:"Cakupan_complaint::getData";i:38;s:25:"Cakupan_complaint::insert";i:39;s:25:"Cakupan_complaint::update";i:40;s:25:"Cakupan_complaint::delete";i:41;s:26:"New_complaint::getCategory";i:42;s:25:"New_complaint::getCakupan";i:43;s:17:"Department::index";i:44;s:18:"Department::insert";i:45;s:18:"Department::update";i:46;s:18:"Department::delete";i:47;s:19:"Department::getData";i:48;s:19:"Branchoffice::index";i:49;s:20:"Branchoffice::insert";i:50;s:20:"Branchoffice::update";i:51;s:20:"Branchoffice::delete";i:52;s:21:"Branchoffice::getData";i:53;s:21:"New_complaint::insert";i:54;s:26:"New_complaint::uploadImage";i:55;s:22:"New_complaint::getData";i:56;s:12:"User::delete";i:57;s:14:"User::delphoto";i:58;s:21:"New_complaint::delete";i:59;s:23:"Complaint_detail::index";i:60;s:32:"Complaint_detail::getDataTeknisi";i:61;s:33:"Complaint_detail::assignToTeknisi";}')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'8c044frtpilng1ktj1nvj1i6ee45v190', N'10.100.1.81', N'1574491472', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'8rfpsspv60824inmd535gbe9vkbacmop', N'10.100.1.81', N'1574491581', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'908r6sdpvdn7gt5k42ht3rjkdlo43lqv', N'10.100.1.42', N'1574492092', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'9mrmv61b2ep2geckresd0478buloer29', N'10.100.1.81', N'1574490994', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'9r9hj8m2co4oueqeng4f3bse4jlnhl45', N'10.100.1.81', N'1574491194', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'9uk1pp3nonf4ouk2h86i6bacbrr3rqph', N'10.100.1.81', N'1575106366', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'a13qcelp24epk6kp1r4criugvh8k31pb', N'10.100.1.81', N'1574491146', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'a3rbn8bihg47bkrcodtl1ofaideb1kd1', N'10.100.1.42', N'1574492065', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'abqqj6bla4e758ct9h32qqvkh01r00pc', N'10.100.1.81', N'1574491542', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'ajdnvjanp9ef60b8g4ecfhg95rd06bb0', N'10.100.1.81', N'1574490762', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'b0n08nsd982dsbjvnkg32foof9ojbpna', N'10.100.1.81', N'1574490778', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'b5nrtman7orp0q20ht9bf43bdpnokh7k', N'10.100.1.81', N'1574491326', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'c5d4j8kvfe5cil7ka7rovjr48pv99vkd', N'10.100.1.42', N'1574501345', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'c8he362sk0q6b2blo2msnqnji2973744', N'10.100.1.81', N'1574490757', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'c9mh4i9bpgnjqaid1cao4ksj2l9qu6jk', N'10.100.1.81', N'1574491412', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'cfb6m3r70agrv8rqsuvcfntq76ucgrod', N'10.100.1.81', N'1574491486', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'd2sr969gq4nfnmguisnhfpas9qs0780c', N'10.100.1.81', N'1574491527', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'd4oqcfpngrav1r9maof227f5c1tttkpi', N'10.100.1.81', N'1574490886', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'dtfktj1uarnasqmsiampsvpmhu1bmsnk', N'10.100.1.42', N'1574501327', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'dvkn71vf4lvfmscmkbhd0gq9pq72fa27', N'10.100.1.42', N'1574492058', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'ebgjg6l7vurlquo5megnggkpoc5tadhs', N'10.100.1.81', N'1574490779', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'f5u9f1qm2e75veorgicftesaki6q3agh', N'10.100.1.81', N'1574492134', N'auth|a:32:{s:2:"id";s:1:"1";s:8:"username";s:13:"administrator";s:8:"password";s:40:"f865b53623b121fd34ee5426c792e5c33af8c227";s:12:"usergroup_id";s:1:"1";s:13:"department_id";s:1:"1";s:16:"directmanager_id";N;s:12:"userlevel_id";s:1:"3";s:8:"fullname";s:13:"ADMINISTRATOR";s:8:"jobtitle";s:10:"Super User";s:3:"nik";N;s:5:"email";N;s:8:"celluler";N;s:6:"status";i:1;s:8:"m_active";i:1;s:13:"usergroupname";s:13:"Administrator";s:14:"departmentcode";s:5:"00000";s:14:"departmentname";s:14:"Non Department";s:13:"userlevelname";s:7:"Manager";s:13:"peoplemanager";i:1;s:15:"branchoffice_id";s:1:"1";s:7:"lastlog";s:23:"2019-11-21 07:38:38.000";s:7:"chgpass";i:0;s:16:"branchofficename";s:5:"PUSAT";s:18:"directmanager_name";N;s:6:"email2";N;s:6:"period";s:10:"2018-06-01";s:10:"company_id";N;s:11:"companycode";N;s:11:"companyname";N;s:3:"web";N;s:7:"appcode";N;s:7:"expired";i:1574520934;}roles|a:61:{i:0;s:12:"Group::index";i:1;s:13:"Group::insert";i:2;s:13:"Group::update";i:3;s:13:"Group::delete";i:4;s:14:"Group::getData";i:5;s:11:"User::index";i:6;s:12:"User::insert";i:7;s:12:"User::update";i:8;s:13:"User::getData";i:9;s:18:"User::getUsergroup";i:10;s:12:"User::upload";i:11;s:19:"User::getDepartment";i:12;s:17:"User::getDataUser";i:13;s:22:"User::getDirectmanager";i:14;s:18:"User::getUserlevel";i:15;s:21:"User::getBranchoffice";i:16;s:15:"User::getBranch";i:17;s:16:"User::getCompany";i:18;s:16:"Userlevel::index";i:19;s:17:"Userlevel::insert";i:20;s:17:"Userlevel::update";i:21;s:17:"Userlevel::delete";i:22;s:18:"Userlevel::getData";i:23;s:15:"Web_Data::index";i:24;s:17:"Web_Data::getData";i:25;s:20:"New_complaint::index";i:26;s:23:"Complaint_status::index";i:27;s:24:"Complaint_status::insert";i:28;s:25:"Complaint_status::getData";i:29;s:24:"Complaint_status::update";i:30;s:24:"Complaint_status::delete";i:31;s:25:"Complaint_category::index";i:32;s:27:"Complaint_category::getData";i:33;s:26:"Complaint_category::insert";i:34;s:26:"Complaint_category::update";i:35;s:26:"Complaint_category::delete";i:36;s:24:"Cakupan_complaint::index";i:37;s:26:"Cakupan_complaint::getData";i:38;s:25:"Cakupan_complaint::insert";i:39;s:25:"Cakupan_complaint::update";i:40;s:25:"Cakupan_complaint::delete";i:41;s:26:"New_complaint::getCategory";i:42;s:25:"New_complaint::getCakupan";i:43;s:17:"Department::index";i:44;s:18:"Department::insert";i:45;s:18:"Department::update";i:46;s:18:"Department::delete";i:47;s:19:"Department::getData";i:48;s:19:"Branchoffice::index";i:49;s:20:"Branchoffice::insert";i:50;s:20:"Branchoffice::update";i:51;s:20:"Branchoffice::delete";i:52;s:21:"Branchoffice::getData";i:53;s:21:"New_complaint::insert";i:54;s:26:"New_complaint::uploadImage";i:55;s:22:"New_complaint::getData";i:56;s:12:"User::delete";i:57;s:14:"User::delphoto";i:58;s:21:"New_complaint::delete";i:59;s:23:"Complaint_detail::index";i:60;s:32:"Complaint_detail::getDataTeknisi";}')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'fa2halich18vier4osbinvud3ld93gn4', N'10.100.1.42', N'1574501345', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'fls90r5tnga6k07dfgoh4qlsgnkc9pfq', N'10.100.1.81', N'1575105225', N'auth|a:32:{s:2:"id";s:1:"1";s:8:"username";s:13:"administrator";s:8:"password";s:40:"f865b53623b121fd34ee5426c792e5c33af8c227";s:12:"usergroup_id";s:1:"1";s:13:"department_id";s:1:"1";s:16:"directmanager_id";N;s:12:"userlevel_id";s:1:"3";s:8:"fullname";s:13:"ADMINISTRATOR";s:8:"jobtitle";s:10:"Super User";s:3:"nik";N;s:5:"email";N;s:8:"celluler";N;s:6:"status";i:1;s:8:"m_active";i:1;s:13:"usergroupname";s:13:"Administrator";s:14:"departmentcode";s:5:"00000";s:14:"departmentname";s:14:"Non Department";s:13:"userlevelname";s:7:"Manager";s:13:"peoplemanager";i:1;s:15:"branchoffice_id";s:1:"1";s:7:"lastlog";s:23:"2019-11-30 09:36:54.000";s:7:"chgpass";i:0;s:16:"branchofficename";s:5:"PUSAT";s:18:"directmanager_name";N;s:6:"email2";N;s:6:"period";s:10:"2018-06-01";s:10:"company_id";N;s:11:"companycode";N;s:11:"companyname";N;s:3:"web";N;s:7:"appcode";N;s:7:"expired";i:1575134025;}roles|a:64:{i:0;s:12:"Group::index";i:1;s:13:"Group::insert";i:2;s:13:"Group::update";i:3;s:13:"Group::delete";i:4;s:14:"Group::getData";i:5;s:11:"User::index";i:6;s:12:"User::insert";i:7;s:12:"User::update";i:8;s:13:"User::getData";i:9;s:18:"User::getUsergroup";i:10;s:12:"User::upload";i:11;s:19:"User::getDepartment";i:12;s:17:"User::getDataUser";i:13;s:22:"User::getDirectmanager";i:14;s:18:"User::getUserlevel";i:15;s:21:"User::getBranchoffice";i:16;s:15:"User::getBranch";i:17;s:16:"User::getCompany";i:18;s:16:"Userlevel::index";i:19;s:17:"Userlevel::insert";i:20;s:17:"Userlevel::update";i:21;s:17:"Userlevel::delete";i:22;s:18:"Userlevel::getData";i:23;s:15:"Web_Data::index";i:24;s:17:"Web_Data::getData";i:25;s:20:"New_complaint::index";i:26;s:23:"Complaint_status::index";i:27;s:24:"Complaint_status::insert";i:28;s:25:"Complaint_status::getData";i:29;s:24:"Complaint_status::update";i:30;s:24:"Complaint_status::delete";i:31;s:25:"Complaint_category::index";i:32;s:27:"Complaint_category::getData";i:33;s:26:"Complaint_category::insert";i:34;s:26:"Complaint_category::update";i:35;s:26:"Complaint_category::delete";i:36;s:24:"Cakupan_complaint::index";i:37;s:26:"Cakupan_complaint::getData";i:38;s:25:"Cakupan_complaint::insert";i:39;s:25:"Cakupan_complaint::update";i:40;s:25:"Cakupan_complaint::delete";i:41;s:26:"New_complaint::getCategory";i:42;s:25:"New_complaint::getCakupan";i:43;s:17:"Department::index";i:44;s:18:"Department::insert";i:45;s:18:"Department::update";i:46;s:18:"Department::delete";i:47;s:19:"Department::getData";i:48;s:19:"Branchoffice::index";i:49;s:20:"Branchoffice::insert";i:50;s:20:"Branchoffice::update";i:51;s:20:"Branchoffice::delete";i:52;s:21:"Branchoffice::getData";i:53;s:21:"New_complaint::insert";i:54;s:26:"New_complaint::uploadImage";i:55;s:22:"New_complaint::getData";i:56;s:12:"User::delete";i:57;s:14:"User::delphoto";i:58;s:21:"New_complaint::delete";i:59;s:23:"Complaint_detail::index";i:60;s:32:"Complaint_detail::getDataTeknisi";i:61;s:33:"Complaint_detail::assignToTeknisi";i:62;s:30:"New_complaint::assignToTeknisi";i:63;s:31:"New_complaint::acceptAssignment";}')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'frpu10v5lkoncoti7d1jkrongiqn2onb', N'10.100.1.81', N'1574490762', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'geesetdjoh08viem9cstq2blp6qb9r3c', N'10.100.1.81', N'1574491546', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'iq85juf2j8cs68aqjff7ilssk70c18gv', N'10.100.1.81', N'1574490999', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'j8fjr0v68ucfjpvphacqr088pg4lgee0', N'10.100.1.81', N'1574491543', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'jbdskj7296vkqir145l9h23l60c97c38', N'10.100.1.81', N'1574491471', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'jiid95n3vefm64iv7pmrfq0mok6ist1f', N'10.100.1.81', N'1574490849', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'jmdn5rvb7a59pe6sj01d3b4t5g5fm8f6', N'10.100.1.81', N'1574491473', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'jqgvo3qalqn6hdn1tgbkdu4b6o9ksuj2', N'10.100.1.81', N'1574491468', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'kdsdfi1befuvkk2npkp7c4o8hsrk1n57', N'10.100.1.81', N'1574491369', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'kndll8v3teue58ogeo9g998u9ditshh4', N'10.100.1.81', N'1574490789', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'kp8t1dei5uck58q5kjjn0k300apms1o1', N'10.100.1.42', N'1574501296', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'lm6amdjhi3upmkomkpcprinukijcq9dt', N'10.100.1.42', N'1574492092', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'm5c2mv15bhrc3c2pt8k86er92nsgl46r', N'10.100.1.81', N'1574491527', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'mbabl96en2tg16a7qcgkm4qffhn4i3h4', N'10.100.1.42', N'1574501314', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'mlf8uiln4foh51hniq5nto8ao1hjbuvj', N'10.100.1.81', N'1574490778', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'ngqtjasgi7jb2mevk3ga2e52m39i87tu', N'10.100.1.81', N'1574491486', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'o1eh69bub1f5487l1hae6hm9r3tcs3kd', N'10.100.1.81', N'1574490998', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'o4prac5j0mnah554s3hai0d7kcqg0mlo', N'10.100.1.42', N'1574501345', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'otsapjnemsv66qeh2uukdmpqi5ksiiab', N'10.100.1.42', N'1574501345', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'pirhu2kpikuafcrn6vpehiof01le91ie', N'10.100.1.81', N'1574491462', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'pomsc60o6e90lotikpo28ej9j8j140g4', N'10.100.1.81', N'1574490863', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'ptt39lqf3gq27vjqn4mi08kib5ejfcoe', N'10.100.1.42', N'1574492065', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'temktlafu2m9lhli6ghr85pgbcj9t1ov', N'10.100.1.81', N'1574490871', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'tghoc2fvuqch7u2h5ltmr1s1pkbi857n', N'10.100.1.81', N'1574491543', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'tp538kt6s3qp4o98j6fm3gqvusiul79f', N'10.100.1.42', N'1574492091', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'u2u8sv59v1itdj2m3efo9krms7p712vp', N'10.100.1.42', N'1574501345', N'')
GO

INSERT INTO [dbo].[BeOne_sessions]  VALUES (N'ut0b4mofohm7nntukji70d8m7qflci1p', N'10.100.1.81', N'1574491472', N'')
GO


-- ----------------------------
-- Table structure for branchoffice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[branchoffice]') AND type IN ('U'))
	DROP TABLE [dbo].[branchoffice]
GO

CREATE TABLE [dbo].[branchoffice] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [branchofficecode] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [branchofficename] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [branchofficeaddress] varbinary(100)  NULL,
  [status] bit  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [shortname] varchar(3) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [updatedby] bigint  NULL,
  [address] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[branchoffice] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of branchoffice
-- ----------------------------
SET IDENTITY_INSERT [dbo].[branchoffice] ON
GO

INSERT INTO [dbo].[branchoffice] ([id], [branchofficecode], [branchofficename], [branchofficeaddress], [status], [created], [createdby], [shortname], [updatedby], [address]) VALUES (N'1', N'00', N'PUSAT', NULL, N'1', N'2019-11-10 11:45:51.000', N'1', N'PST', NULL, N'JALAN MEKAR')
GO

INSERT INTO [dbo].[branchoffice] ([id], [branchofficecode], [branchofficename], [branchofficeaddress], [status], [created], [createdby], [shortname], [updatedby], [address]) VALUES (N'2', N'01', N'JAKARTA', NULL, N'1', N'2019-11-10 11:51:18.000', N'1', N'JKT', NULL, N'JALAN MAWUNG')
GO

SET IDENTITY_INSERT [dbo].[branchoffice] OFF
GO


-- ----------------------------
-- Table structure for cakupan_complaint
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cakupan_complaint]') AND type IN ('U'))
	DROP TABLE [dbo].[cakupan_complaint]
GO

CREATE TABLE [dbo].[cakupan_complaint] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [cakupan_code] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [cakupan] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [updated] datetime  NULL,
  [updatedby] bigint  NULL,
  [bobot] smallint  NULL
)
GO

ALTER TABLE [dbo].[cakupan_complaint] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cakupan_complaint
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cakupan_complaint] ON
GO

INSERT INTO [dbo].[cakupan_complaint] ([id], [cakupan_code], [cakupan], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'2', N'D-001', N'PERORANGAN', N'1', N'2019-11-07 21:37:15.000', N'1', N'2019-11-10 10:27:58.000', N'1', N'1')
GO

INSERT INTO [dbo].[cakupan_complaint] ([id], [cakupan_code], [cakupan], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'3', N'D-002', N'SATU RUANGAN', N'1', N'2019-11-07 21:37:47.000', N'1', N'2019-11-10 10:28:07.000', N'1', N'2')
GO

INSERT INTO [dbo].[cakupan_complaint] ([id], [cakupan_code], [cakupan], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'4', N'D-003', N'SATU GEDUNG', N'1', N'2019-11-07 21:38:08.000', N'1', N'2019-11-10 10:28:21.000', N'1', N'3')
GO

INSERT INTO [dbo].[cakupan_complaint] ([id], [cakupan_code], [cakupan], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'5', N'D-004', N'NASIONAL', N'1', N'2019-11-07 21:39:00.000', N'1', N'2019-11-10 10:28:27.000', N'1', N'4')
GO

SET IDENTITY_INSERT [dbo].[cakupan_complaint] OFF
GO


-- ----------------------------
-- Table structure for company
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[company]') AND type IN ('U'))
	DROP TABLE [dbo].[company]
GO

CREATE TABLE [dbo].[company] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [companycode] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [companyname] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [companyaddress] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [companyshort] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [updated] datetime  NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[company] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for complaint
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[complaint]') AND type IN ('U'))
	DROP TABLE [dbo].[complaint]
GO

CREATE TABLE [dbo].[complaint] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [tanggal_pengaduan] date  NULL,
  [tanggal_selesai] date  NULL,
  [user_id] bigint  NULL,
  [userlevel_id] bigint  NULL,
  [department_id] bigint  NULL,
  [branchoffice_id] bigint  NULL,
  [complaint] varchar(1500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [complaint_status_id] bigint  NULL,
  [no_tiket] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [image_url] varchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [image_filename] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [category_id] bigint  NULL,
  [teknisi_id] bigint  NULL,
  [cakupan_id] bigint  NULL,
  [nilai_likert] bigint  NULL,
  [solusi] text COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [count] bigint  NULL,
  [created] datetime  NULL,
  [createdby] smallint  NULL,
  [updated] datetime  NULL,
  [updatedby] smallint  NULL
)
GO

ALTER TABLE [dbo].[complaint] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of complaint
-- ----------------------------
SET IDENTITY_INSERT [dbo].[complaint] ON
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'5', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 5', N'3', N'TRX-191123000005', N'http://10.150.1.15:8003/assets/images/foto_complaint/82jdSSOtLP-20191123071755.', N'82jdSSOtLP-20191123071755.', N'2', N'7', N'4', N'2', NULL, N'5', N'2019-11-23 13:17:56.000', N'3', N'2019-11-30 15:37:42.000', N'7')
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'6', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 6 ', N'4', N'TRX-191123000006', N'http://10.150.1.15:8003/assets/images/foto_complaint/SQufXojX3J-20191123071844.', N'SQufXojX3J-20191123071844.', N'4', N'5', N'4', N'7', N'Saline solution', N'6', N'2019-11-23 13:18:44.000', N'3', N'2019-11-30 16:31:06.000', N'5')
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'7', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 7', N'1', N'TRX-191123000007', N'http://10.150.1.15:8003/assets/images/foto_complaint/UkBXxbBETS-20191123071922.', N'UkBXxbBETS-20191123071922.', N'3', NULL, N'4', N'5', NULL, N'7', N'2019-11-23 13:19:22.000', N'3', NULL, NULL)
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'8', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 8', N'1', N'TRX-191123000008', N'http://10.150.1.15:8003/assets/images/foto_complaint/ZZ5rfBjjPM-20191123073047.jpg', N'ZZ5rfBjjPM-20191123073047.jpg', N'3', NULL, N'4', N'5', NULL, N'8', N'2019-11-23 13:30:47.000', N'3', NULL, NULL)
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'9', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 9', N'1', N'TRX-191123000009', N'http://10.150.1.15:8003/assets/images/foto_complaint/NfrQZilES4-20191123073258.jpg', N'NfrQZilES4-20191123073258.jpg', N'3', NULL, N'3', N'4', NULL, N'9', N'2019-11-23 13:32:59.000', N'3', NULL, NULL)
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'10', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 9', N'1', N'TRX-191123000010', N'http://10.150.1.15:8003/assets/images/foto_complaint/Z5lTNXBOgQ-20191123074543.jpg', N'Z5lTNXBOgQ-20191123074543.jpg', N'2', NULL, N'4', N'6', NULL, N'10', N'2019-11-23 13:45:43.000', N'3', NULL, NULL)
GO

INSERT INTO [dbo].[complaint] ([id], [tanggal_pengaduan], [tanggal_selesai], [user_id], [userlevel_id], [department_id], [branchoffice_id], [complaint], [complaint_status_id], [no_tiket], [image_url], [image_filename], [category_id], [teknisi_id], [cakupan_id], [nilai_likert], [solusi], [count], [created], [createdby], [updated], [updatedby]) VALUES (N'11', N'2019-11-23', NULL, N'3', N'1', N'3', N'1', N'Test 9', N'1', N'TRX-191123000011', N'http://10.150.1.15:8003/assets/images/foto_complaint/cxUFhm4Fgs-20191123075452.', N'cxUFhm4Fgs-20191123075452.', N'2', NULL, N'3', N'5', NULL, N'11', N'2019-11-23 13:54:52.000', N'3', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[complaint] OFF
GO


-- ----------------------------
-- Table structure for complaint_category
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[complaint_category]') AND type IN ('U'))
	DROP TABLE [dbo].[complaint_category]
GO

CREATE TABLE [dbo].[complaint_category] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [category_code] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [category] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [updated] datetime  NULL,
  [updatedby] bigint  NULL,
  [bobot] smallint  NULL
)
GO

ALTER TABLE [dbo].[complaint_category] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of complaint_category
-- ----------------------------
SET IDENTITY_INSERT [dbo].[complaint_category] ON
GO

INSERT INTO [dbo].[complaint_category] ([id], [category_code], [category], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'2', N'C-001', N'HARDWARE', N'1', N'2019-11-07 21:17:51.000', N'1', N'2019-11-10 10:35:38.000', N'1', N'2')
GO

INSERT INTO [dbo].[complaint_category] ([id], [category_code], [category], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'3', N'C-002', N'SOFTWARE', N'1', N'2019-11-07 21:18:16.000', N'1', N'2019-11-10 10:35:04.000', N'1', N'1')
GO

INSERT INTO [dbo].[complaint_category] ([id], [category_code], [category], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'4', N'C-003', N'MECHANICAL ELECTRICAL', N'1', N'2019-11-07 21:19:02.000', N'1', N'2019-11-10 10:35:09.000', N'1', N'3')
GO

SET IDENTITY_INSERT [dbo].[complaint_category] OFF
GO


-- ----------------------------
-- Table structure for complaint_status
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[complaint_status]') AND type IN ('U'))
	DROP TABLE [dbo].[complaint_status]
GO

CREATE TABLE [dbo].[complaint_status] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [status_code] varchar(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [complaint_status] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [updated] date  NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[complaint_status] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of complaint_status
-- ----------------------------
SET IDENTITY_INSERT [dbo].[complaint_status] ON
GO

INSERT INTO [dbo].[complaint_status] ([id], [status_code], [complaint_status], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'AA001', N'NEW', N'1', N'2019-11-30 11:29:48.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[complaint_status] ([id], [status_code], [complaint_status], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'2', N'AA002', N'ASSIGNED', N'1', N'2019-11-30 11:31:19.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[complaint_status] ([id], [status_code], [complaint_status], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'AA003', N'ON PROGRESS', N'1', N'2019-11-30 11:31:59.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[complaint_status] ([id], [status_code], [complaint_status], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'AA004', N'FINISHED', N'1', N'2019-11-30 11:32:26.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[complaint_status] ([id], [status_code], [complaint_status], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'5', N'AA005', N'CANCELLED', N'1', N'2019-11-30 11:32:36.000', N'1', NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[complaint_status] OFF
GO


-- ----------------------------
-- Table structure for department
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[department]') AND type IN ('U'))
	DROP TABLE [dbo].[department]
GO

CREATE TABLE [dbo].[department] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [departmentcode] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [departmentname] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [updated] datetime  NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[department] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of department
-- ----------------------------
SET IDENTITY_INSERT [dbo].[department] ON
GO

INSERT INTO [dbo].[department] ([id], [departmentcode], [departmentname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'00000', N'Non Department', N'1', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[department] ([id], [departmentcode], [departmentname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'4301', N'LOGISTIK', N'1', N'2019-11-10 11:23:17.000', N'1', NULL, NULL)
GO

INSERT INTO [dbo].[department] ([id], [departmentcode], [departmentname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'4101', N'FINNANCE & ACCOUNTING', N'1', N'2019-11-10 11:23:33.000', N'1', N'2019-11-10 11:24:07.000', N'1')
GO

INSERT INTO [dbo].[department] ([id], [departmentcode], [departmentname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'6', N'4302', N'OPERASIONAL', N'1', N'2019-11-10 11:23:47.000', N'1', N'2019-11-10 11:24:33.000', N'1')
GO

SET IDENTITY_INSERT [dbo].[department] OFF
GO


-- ----------------------------
-- Table structure for group_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[group_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[group_menu]
GO

CREATE TABLE [dbo].[group_menu] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [usergroup_id] bigint  NULL,
  [menu_id] bigint  NULL,
  [parent_id] bigint DEFAULT ((0)) NULL,
  [menuorder] int  NULL,
  [status] bit DEFAULT ((1)) NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL,
  [updated] datetime DEFAULT (getdate()) NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[group_menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of group_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[group_menu] ON
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'1', N'1', N'0', N'1', N'1', N'2018-07-09 11:41:13.000', N'1', N'2018-07-09 16:41:13.377', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'2', N'1', N'2', N'1', N'2', N'1', N'2018-07-09 11:41:33.000', N'1', N'2018-07-09 16:41:33.220', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'1', N'3', N'1', N'3', N'1', N'2018-07-09 11:41:40.000', N'1', N'2018-07-09 16:41:40.127', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'1', N'9', N'1', N'4', N'1', N'2018-07-09 11:43:18.000', N'1', N'2018-07-09 16:43:18.523', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'5', N'1', N'4', N'9', N'5', N'1', N'2018-07-09 11:43:29.000', N'1', N'2018-07-09 16:43:29.997', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'6', N'1', N'5', N'9', N'6', N'1', N'2018-07-09 11:43:40.000', N'1', N'2018-07-09 16:43:40.467', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'7', N'1', N'6', N'1', N'7', N'1', N'2018-07-09 11:43:55.000', N'1', N'2019-11-10 10:44:15.000', N'1')
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'8', N'1', N'7', N'6', N'8', N'1', N'2018-07-09 11:44:06.000', N'1', N'2018-07-09 16:44:06.403', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'9', N'1', N'8', N'6', N'9', N'1', N'2018-07-09 11:44:16.000', N'1', N'2018-07-09 16:44:16.177', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10', N'1', N'10', N'0', N'21', N'1', N'2018-07-09 11:46:15.000', N'1', N'2018-10-11 10:18:50.000', N'1')
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'11', N'1', N'11', N'0', N'15', N'1', N'2018-07-11 06:06:23.000', N'1', N'2018-07-11 06:20:50.000', N'1')
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'12', N'1', N'12', N'11', N'18', N'1', N'2018-07-11 06:06:37.000', N'1', N'2018-07-11 11:06:37.157', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10011', N'1', N'10011', N'0', N'19', N'1', N'2019-06-20 15:45:13.000', N'1', N'2019-06-20 20:45:13.397', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10012', N'1', N'10012', N'10011', N'20', N'1', N'2019-06-20 15:45:46.000', N'1', N'2019-06-20 20:45:46.870', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10013', N'1', N'10013', N'1', N'11', N'1', N'2019-06-21 20:21:56.000', N'1', N'2019-06-21 20:21:56.180', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10014', N'1', N'10014', N'10013', N'12', N'1', N'2019-06-21 20:22:57.000', N'1', N'2019-06-21 20:22:57.197', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10015', N'1', N'10015', N'10013', N'13', N'1', N'2019-06-21 20:23:31.000', N'1', N'2019-06-21 20:23:31.643', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10016', N'1', N'10016', N'10013', N'14', N'1', N'2019-06-21 20:23:59.000', N'1', N'2019-06-21 20:23:59.410', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10017', N'1', N'10017', N'6', N'10', N'1', N'2019-11-10 10:43:16.000', N'1', N'2019-11-10 10:43:16.973', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10018', N'1', N'10018', N'11', N'17', N'1', N'2019-11-10 11:15:02.000', N'1', N'2019-11-10 11:15:02.797', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10019', N'1', N'10019', N'11', N'16', N'1', N'2019-11-10 11:42:21.000', N'1', N'2019-11-10 11:42:21.320', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10020', N'2', N'10012', N'0', N'1', N'1', N'2019-11-14 22:07:11.000', N'1', N'2019-11-14 22:07:11.800', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10021', N'4', N'10012', N'0', N'1', N'1', N'2019-11-14 22:32:47.000', N'1', N'2019-11-14 22:32:47.900', NULL)
GO

INSERT INTO [dbo].[group_menu] ([id], [usergroup_id], [menu_id], [parent_id], [menuorder], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10022', N'3', N'10012', N'0', N'1', N'1', N'2019-11-30 14:10:06.000', N'1', N'2019-11-30 14:10:06.407', NULL)
GO

SET IDENTITY_INSERT [dbo].[group_menu] OFF
GO


-- ----------------------------
-- Table structure for group_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[group_role]') AND type IN ('U'))
	DROP TABLE [dbo].[group_role]
GO

CREATE TABLE [dbo].[group_role] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [usergroup_id] bigint  NULL,
  [controller] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [method] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [info] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit DEFAULT ((1)) NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL,
  [updated] datetime DEFAULT (getdate()) NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[group_role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of group_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[group_role] ON
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'1', N'Group', N'index', N'Akses Halaman', N'1', N'2018-07-09 11:50:36.000', N'1', N'2018-07-09 16:50:36.250', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'2', N'1', N'Group', N'insert', N'Simpan Data', N'1', N'2018-07-09 11:50:36.000', N'1', N'2018-07-09 16:50:36.250', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'1', N'Group', N'update', N'Update Data', N'1', N'2018-07-09 11:50:36.000', N'1', N'2018-07-09 16:50:36.250', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'1', N'Group', N'delete', N'Hapus Data', N'1', N'2018-07-09 11:50:36.000', N'1', N'2018-07-09 16:50:36.250', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'5', N'1', N'Group', N'getData', N'Ambil Data Table', N'1', N'2018-07-09 11:50:36.000', N'1', N'2018-07-09 16:50:36.250', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'6', N'1', N'User', N'index', N'Akses Halaman', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'7', N'1', N'User', N'insert', N'Simpan Data User', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'8', N'1', N'User', N'update', N'Update Data User', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'9', N'1', N'User', N'getData', N'Ambil Data Table User', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10', N'1', N'User', N'getUsergroup', N'Ambil Data User Group', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'11', N'1', N'User', N'upload', N'Upload Foto User', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'12', N'1', N'User', N'getDepartment', N'Ambil Data Departement (Public)', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'13', N'1', N'User', N'getDataUser', N'Ambil Data User (Public)', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'14', N'1', N'User', N'getDirectmanager', N'Ambil Data Direct Manager', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'15', N'1', N'User', N'getUserlevel', N'Ambil Data User Level (Public)', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'16', N'1', N'User', N'getBranchoffice', N'Ambil Data Branchoffice (Public)', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'17', N'1', N'User', N'getBranch', N'Ambil Data Branchoffice by Branch (Public)', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'18', N'1', N'User', N'getCompany', N'Ambil Data Company (Public)', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'19', N'1', N'Userlevel', N'index', N'Akses Halaman', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'20', N'1', N'Userlevel', N'insert', N'Simpan Data', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'21', N'1', N'Userlevel', N'update', N'Update Data', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'22', N'1', N'Userlevel', N'delete', N'Hapus Data', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'23', N'1', N'Userlevel', N'getData', N'Ambil Data Table', N'1', N'2018-07-09 11:52:18.000', N'1', N'2018-07-09 16:52:18.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'24', N'1', N'Web_Data', N'index', N'Akses Halaman Data Master', N'1', N'2018-07-11 06:02:23.000', N'1', N'2018-07-11 11:02:24.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'25', N'1', N'Web_Data', N'getData', N'Ambil Data Data Master', N'1', N'2018-07-11 06:02:23.000', N'1', N'2018-07-11 11:02:24.020', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10030', N'1', N'New_complaint', N'index', N'Access Page New Complaint', N'1', N'2019-11-07 19:44:32.000', N'1', N'2019-11-07 19:44:32.210', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10031', N'1', N'Complaint_status', N'index', N'Access Page Complaint Status', N'1', N'2019-11-07 20:32:37.000', N'1', N'2019-11-07 20:32:37.143', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10032', N'1', N'Complaint_status', N'insert', N'Insert Data Complaint Status', N'1', N'2019-11-07 20:32:37.000', N'1', N'2019-11-07 20:32:37.143', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10033', N'1', N'Complaint_status', N'getData', N'get Data Table Complaint Status', N'1', N'2019-11-07 20:32:37.000', N'1', N'2019-11-07 20:32:37.143', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10034', N'1', N'Complaint_status', N'update', N'Update Data Complaint Status', N'1', N'2019-11-07 20:32:37.000', N'1', N'2019-11-07 20:32:37.143', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10035', N'1', N'Complaint_status', N'delete', N'Delete Data Complaint Status', N'1', N'2019-11-07 20:32:37.000', N'1', N'2019-11-07 20:32:37.143', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10036', N'1', N'Complaint_category', N'index', N'Access Page Complaint Category', N'1', N'2019-11-07 20:38:30.000', N'1', N'2019-11-07 20:38:30.213', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10037', N'1', N'Complaint_category', N'getData', N'get Data Table Complaint Category', N'1', N'2019-11-07 21:13:24.000', N'1', N'2019-11-07 21:13:24.263', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10038', N'1', N'Complaint_category', N'insert', N'Insert Data Complaint Category', N'1', N'2019-11-07 21:13:24.000', N'1', N'2019-11-07 21:13:24.263', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10039', N'1', N'Complaint_category', N'update', N'Update Data Complaint Category', N'1', N'2019-11-07 21:13:24.000', N'1', N'2019-11-07 21:13:24.263', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10040', N'1', N'Complaint_category', N'delete', N'Delete Data Complaint Category', N'1', N'2019-11-07 21:13:24.000', N'1', N'2019-11-07 21:13:24.263', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10041', N'1', N'Cakupan_complaint', N'index', N'Access Page Cakupan Complaint', N'1', N'2019-11-07 21:30:30.000', N'1', N'2019-11-07 21:30:30.290', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10042', N'1', N'Cakupan_complaint', N'getData', N'get Data Table Cakupan Complaint', N'1', N'2019-11-07 21:30:30.000', N'1', N'2019-11-07 21:30:30.290', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10043', N'1', N'Cakupan_complaint', N'insert', N'Insert Data Cakupan Complaint', N'1', N'2019-11-07 21:30:30.000', N'1', N'2019-11-07 21:30:30.290', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10044', N'1', N'Cakupan_complaint', N'update', N'Update Data Cakupan Complaint', N'1', N'2019-11-07 21:30:30.000', N'1', N'2019-11-07 21:30:30.290', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10045', N'1', N'Cakupan_complaint', N'delete', N'Delete Data Cakupan Complaint', N'1', N'2019-11-07 21:30:30.000', N'1', N'2019-11-07 21:30:30.290', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10046', N'1', N'New_complaint', N'getCategory', N'Ambil Data Category', N'1', N'2019-11-07 22:02:05.000', N'1', N'2019-11-07 22:02:05.833', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10047', N'1', N'New_complaint', N'getCakupan', N'Ambil Data Cakupan', N'1', N'2019-11-07 22:20:20.000', N'1', N'2019-11-07 22:20:20.257', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10048', N'1', N'Department', N'index', N'Access Page Department', N'1', N'2019-11-10 11:15:39.000', N'1', N'2019-11-10 11:15:39.207', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10049', N'1', N'Department', N'insert', N'Insert Data Department', N'1', N'2019-11-10 11:15:39.000', N'1', N'2019-11-10 11:15:39.207', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10050', N'1', N'Department', N'update', N'Update Data Department', N'1', N'2019-11-10 11:15:39.000', N'1', N'2019-11-10 11:15:39.207', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10051', N'1', N'Department', N'delete', N'Delete Data Department', N'1', N'2019-11-10 11:15:39.000', N'1', N'2019-11-10 11:15:39.207', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10052', N'1', N'Department', N'getData', N'Get Data Table Department', N'1', N'2019-11-10 11:15:39.000', N'1', N'2019-11-10 11:15:39.207', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10053', N'1', N'Branchoffice', N'index', N'Access Page Branchoffice', N'1', N'2019-11-10 11:42:56.000', N'1', N'2019-11-10 11:42:56.570', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10054', N'1', N'Branchoffice', N'insert', N'Insert Data Branchoffice', N'1', N'2019-11-10 11:42:56.000', N'1', N'2019-11-10 11:42:56.570', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10055', N'1', N'Branchoffice', N'update', N'Update Data Branchoffice', N'1', N'2019-11-10 11:42:56.000', N'1', N'2019-11-10 11:42:56.570', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10056', N'1', N'Branchoffice', N'delete', N'Delete Data Branchoffice', N'1', N'2019-11-10 11:42:56.000', N'1', N'2019-11-10 11:42:56.570', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10057', N'1', N'Branchoffice', N'getData', N'get Data Table Branchoffice', N'1', N'2019-11-10 11:42:56.000', N'1', N'2019-11-10 11:42:56.570', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10058', N'1', N'New_complaint', N'insert', N'Insert New Complaint', N'1', N'2019-11-10 12:11:01.000', N'1', N'2019-11-10 12:11:01.893', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10059', N'1', N'New_complaint', N'uploadImage', N'Upload Image', N'1', N'2019-11-10 13:10:59.000', N'1', N'2019-11-10 13:10:59.743', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10060', N'1', N'New_complaint', N'getData', N'Ambil Data Table Complaint', N'1', N'2019-11-10 13:29:00.000', N'1', N'2019-11-10 13:29:00.787', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10062', N'1', N'User', N'delete', N'Hapus Data User', N'1', N'2019-11-14 21:51:29.000', N'1', N'2019-11-14 21:51:29.070', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10063', N'1', N'User', N'delphoto', N'Hapus Foto User', N'1', N'2019-11-14 21:51:29.000', N'1', N'2019-11-14 21:51:29.070', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10064', N'1', N'New_complaint', N'delete', N'Hapus Data', N'1', N'2019-11-14 22:01:25.000', N'1', N'2019-11-14 22:01:25.137', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10065', N'2', N'New_complaint', N'index', N'Access Page New Complaint', N'1', N'2019-11-14 22:02:06.000', N'1', N'2019-11-14 22:02:06.950', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10066', N'2', N'New_complaint', N'getCategory', N'Ambil Data Category', N'1', N'2019-11-14 22:02:06.000', N'1', N'2019-11-14 22:02:06.950', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10067', N'2', N'New_complaint', N'getCakupan', N'Ambil Data Cakupan', N'1', N'2019-11-14 22:02:06.000', N'1', N'2019-11-14 22:02:06.950', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10068', N'2', N'New_complaint', N'insert', N'Insert New Complaint', N'1', N'2019-11-14 22:02:06.000', N'1', N'2019-11-14 22:02:06.950', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10069', N'2', N'New_complaint', N'uploadImage', N'Upload Image', N'1', N'2019-11-14 22:02:06.000', N'1', N'2019-11-14 22:02:06.950', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10070', N'2', N'New_complaint', N'getData', N'Ambil Data Table Complaint', N'1', N'2019-11-14 22:02:06.000', N'1', N'2019-11-14 22:02:06.950', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10072', N'4', N'New_complaint', N'index', N'Access Page New Complaint', N'1', N'2019-11-14 22:33:39.000', N'1', N'2019-11-14 22:33:39.350', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10073', N'4', N'New_complaint', N'getData', N'Ambil Data Table Complaint', N'1', N'2019-11-14 22:33:39.000', N'1', N'2019-11-14 22:33:39.350', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10075', N'1', N'Complaint_detail', N'index', N'Access Page New Complaint', N'1', N'2019-11-14 23:04:08.000', N'1', N'2019-11-14 23:04:08.933', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10076', N'1', N'Complaint_detail', N'getDataTeknisi', N'Ambil Data Table Complaint', N'1', N'2019-11-14 23:04:08.000', N'1', N'2019-11-14 23:04:08.933', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10077', N'2', N'Complaint_detail', N'index', N'Access Page New Complaint', N'1', N'2019-11-14 23:04:28.000', N'1', N'2019-11-14 23:04:28.823', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10078', N'2', N'Complaint_detail', N'getDataTeknisi', N'Ambil Data Table Complaint', N'1', N'2019-11-14 23:04:28.000', N'1', N'2019-11-14 23:04:28.823', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10079', N'4', N'Complaint_detail', N'index', N'Access Page New Complaint', N'1', N'2019-11-14 23:04:44.000', N'1', N'2019-11-14 23:04:44.033', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10080', N'4', N'Complaint_detail', N'getDataTeknisi', N'Ambil Data Table Complaint', N'1', N'2019-11-14 23:04:44.000', N'1', N'2019-11-14 23:04:44.033', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10081', N'1', N'Complaint_detail', N'assignToTeknisi', N'Assign Complaint to Teknisi', N'1', N'2019-11-30 10:42:02.000', N'1', N'2019-11-30 10:42:02.573', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10082', N'4', N'Complaint_detail', N'assignToTeknisi', N'Assign Complaint to Teknisi', N'1', N'2019-11-30 10:42:24.000', N'1', N'2019-11-30 10:42:24.470', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10083', N'1', N'New_complaint', N'assignToTeknisi', N'Assign Complaint to Teknisi', N'1', N'2019-11-30 14:11:01.000', N'1', N'2019-11-30 14:11:01.807', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10084', N'4', N'New_complaint', N'assignToTeknisi', N'Assign Complaint to Teknisi', N'1', N'2019-11-30 14:11:15.000', N'1', N'2019-11-30 14:11:15.013', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10085', N'3', N'New_complaint', N'index', N'Access Page New Complaint', N'1', N'2019-11-30 15:11:15.000', N'1', N'2019-11-30 15:11:15.160', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10086', N'3', N'New_complaint', N'getData', N'Ambil Data Table Complaint', N'1', N'2019-11-30 15:11:15.000', N'1', N'2019-11-30 15:11:15.160', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10087', N'3', N'Complaint_detail', N'index', N'Access Page New Complaint', N'1', N'2019-11-30 15:14:41.000', N'1', N'2019-11-30 15:14:41.600', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10088', N'1', N'New_complaint', N'acceptAssignment', N'Teknisi accept assignment', N'1', N'2019-11-30 15:37:11.000', N'1', N'2019-11-30 15:37:11.410', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10089', N'3', N'New_complaint', N'acceptAssignment', N'Teknisi accept assignment', N'1', N'2019-11-30 15:37:21.000', N'1', N'2019-11-30 15:37:21.757', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10090', N'1', N'New_complaint', N'inputSolution', N'Teknisi input solution', N'1', N'2019-11-30 16:13:36.000', N'1', N'2019-11-30 16:13:36.450', NULL)
GO

INSERT INTO [dbo].[group_role] ([id], [usergroup_id], [controller], [method], [info], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10091', N'3', N'New_complaint', N'inputSolution', N'Teknisi input solution', N'1', N'2019-11-30 16:13:44.000', N'1', N'2019-11-30 16:13:44.793', NULL)
GO

SET IDENTITY_INSERT [dbo].[group_role] OFF
GO


-- ----------------------------
-- Table structure for listmethod
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[listmethod]') AND type IN ('U'))
	DROP TABLE [dbo].[listmethod]
GO

CREATE TABLE [dbo].[listmethod] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [controller] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [method] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [info] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [path] varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL
)
GO

ALTER TABLE [dbo].[listmethod] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of listmethod
-- ----------------------------
SET IDENTITY_INSERT [dbo].[listmethod] ON
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'1', N'Oams_private_api', N'key', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'2', N'Oams_private_api', N'key_token', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'3', N'Oams_private_api', N'api_token', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'4', N'Oams_private_api', N'verify_user', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'5', N'Oams_private_api', N'details', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'6', N'Oams_private_api', N'category', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'7', N'Oams_private_api', N'cakupan', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'8', N'Oams_private_api', N'new_complaint', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'9', N'Oams_private_api', N'complaints', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_private_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'10', N'Oams_public_api', N'key', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_public_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'11', N'Oams_public_api', N'key_token', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_public_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'12', N'Oams_public_api', N'api_token', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_public_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'13', N'Oams_public_api', N'verify_user', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_public_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'14', N'Oams_public_api', N'login', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_public_api.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'15', N'Oams_upload_image', N'key', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_upload_image.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'16', N'Oams_upload_image', N'key_token', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_upload_image.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'17', N'Oams_upload_image', N'api_token', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_upload_image.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'18', N'Oams_upload_image', N'verify_user', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_upload_image.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'19', N'Oams_upload_image', N'upload_image', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\controllers\v1\Oams_upload_image.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'20', N'AppModel', N'customer_stock_range_value', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\AppModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'21', N'AppModel', N'the_call', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\AppModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'22', N'AppModel', N'customer_call_detail_id', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\AppModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'23', N'Dashboard', N'calculate', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\Dashboard.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'24', N'DataModel', N'ymd', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'25', N'DataModel', N'his', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'26', N'DataModel', N'ymdhis', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'27', N'DataModel', N'random', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'28', N'DataModel', N'check_data', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'29', N'DataModel', N'get_table', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'30', N'DataModel', N'get_count', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'31', N'DataModel', N'get_table_total_data', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'32', N'DataModel', N'get_single_data', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'33', N'DataModel', N'update', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'34', N'DataModel', N'base64_to_img', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'35', N'DataModel', N'mUploadPath', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'36', N'DataModel', N'getResultNumArray', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'37', N'DataModel', N'num_rows', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\api_oams\models\DataModel.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'38', N'Branchoffice', N'index', N'Access Page Branchoffice', N'D:\xampp\htdocs\skripsi\BeOne-modules\branchoffice\controllers\Branchoffice.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'39', N'Branchoffice', N'insert', N'Insert Data Branchoffice', N'D:\xampp\htdocs\skripsi\BeOne-modules\branchoffice\controllers\Branchoffice.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'40', N'Branchoffice', N'update', N'Update Data Branchoffice', N'D:\xampp\htdocs\skripsi\BeOne-modules\branchoffice\controllers\Branchoffice.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'41', N'Branchoffice', N'delete', N'Delete Data Branchoffice', N'D:\xampp\htdocs\skripsi\BeOne-modules\branchoffice\controllers\Branchoffice.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'42', N'Branchoffice', N'getData', N'get Data Table Branchoffice', N'D:\xampp\htdocs\skripsi\BeOne-modules\branchoffice\controllers\Branchoffice.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'43', N'Company', N'index', N'Access Page Company', N'D:\xampp\htdocs\skripsi\BeOne-modules\company\controllers\Company.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'44', N'Company', N'insert', N'Insert Data Company', N'D:\xampp\htdocs\skripsi\BeOne-modules\company\controllers\Company.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'45', N'Company', N'update', N'Update Data Company', N'D:\xampp\htdocs\skripsi\BeOne-modules\company\controllers\Company.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'46', N'Company', N'delete', N'Delete Data Company', N'D:\xampp\htdocs\skripsi\BeOne-modules\company\controllers\Company.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'47', N'Company', N'getData', N'Get Data Table Company', N'D:\xampp\htdocs\skripsi\BeOne-modules\company\controllers\Company.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'48', N'Web_Data', N'index', N'Akses Halaman Data Master', N'D:\xampp\htdocs\skripsi\BeOne-modules\data\controllers\Web_Data.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'49', N'Web_Data', N'getData', N'Ambil Data Data Master', N'D:\xampp\htdocs\skripsi\BeOne-modules\data\controllers\Web_Data.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'50', N'Web_Data', N'uploadexcel', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\data\controllers\Web_Data.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'51', N'Web_Data', N'checkfileimport', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\data\controllers\Web_Data.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'52', N'Web_Data', N'delexcel', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\data\controllers\Web_Data.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'53', N'Web_Data', N'importexcel', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\data\controllers\Web_Data.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'54', N'Department', N'index', N'Access Page Department', N'D:\xampp\htdocs\skripsi\BeOne-modules\department\controllers\Department.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'55', N'Department', N'insert', N'Insert Data Department', N'D:\xampp\htdocs\skripsi\BeOne-modules\department\controllers\Department.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'56', N'Department', N'update', N'Update Data Department', N'D:\xampp\htdocs\skripsi\BeOne-modules\department\controllers\Department.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'57', N'Department', N'delete', N'Delete Data Department', N'D:\xampp\htdocs\skripsi\BeOne-modules\department\controllers\Department.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'58', N'Department', N'getData', N'Get Data Table Department', N'D:\xampp\htdocs\skripsi\BeOne-modules\department\controllers\Department.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'59', N'Complaint_detail', N'index', N'Access Page New Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\Complaint_detail.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'60', N'Complaint_detail', N'getDataTeknisi', N'Ambil Data Table Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\Complaint_detail.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'61', N'New_complaint', N'index', N'Access Page New Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'62', N'New_complaint', N'getCategory', N'Ambil Data Category', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'63', N'New_complaint', N'getCakupan', N'Ambil Data Cakupan', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'64', N'New_complaint', N'insert', N'Insert New Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'65', N'New_complaint', N'uploadImage', N'Upload Image', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'66', N'New_complaint', N'getData', N'Ambil Data Table Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'67', N'New_complaint', N'delete', N'Hapus Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'68', N'New_complaint', N'assignToTeknisi', N'Assign Complaint to Teknisi', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'69', N'New_complaint', N'acceptAssignment', N'Teknisi accept assignment', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'70', N'New_complaint', N'inputSolution', N'Teknisi input solution', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it\controllers\New_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'71', N'Cakupan_complaint', N'index', N'Access Page Cakupan Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Cakupan_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'72', N'Cakupan_complaint', N'getData', N'get Data Table Cakupan Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Cakupan_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'73', N'Cakupan_complaint', N'insert', N'Insert Data Cakupan Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Cakupan_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'74', N'Cakupan_complaint', N'update', N'Update Data Cakupan Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Cakupan_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'75', N'Cakupan_complaint', N'delete', N'Delete Data Cakupan Complaint', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Cakupan_complaint.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'76', N'Complaint_category', N'index', N'Access Page Complaint Category', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_category.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'77', N'Complaint_category', N'getData', N'get Data Table Complaint Category', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_category.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'78', N'Complaint_category', N'insert', N'Insert Data Complaint Category', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_category.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'79', N'Complaint_category', N'update', N'Update Data Complaint Category', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_category.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'80', N'Complaint_category', N'delete', N'Delete Data Complaint Category', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_category.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'81', N'Complaint_status', N'index', N'Access Page Complaint Status', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_status.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'82', N'Complaint_status', N'insert', N'Insert Data Complaint Status', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_status.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'83', N'Complaint_status', N'getData', N'get Data Table Complaint Status', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_status.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'84', N'Complaint_status', N'update', N'Update Data Complaint Status', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_status.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'85', N'Complaint_status', N'delete', N'Delete Data Complaint Status', N'D:\xampp\htdocs\skripsi\BeOne-modules\helpdesk_it_setting\controllers\Complaint_status.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'86', N'home', N'index', N'Access Page Home (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\home\controllers\home.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'87', N'home', N'getUser', N'Access Data User Home (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\home\controllers\home.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'88', N'Group_menu', N'index', N'Acces Page Group Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Group_menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'89', N'Group_menu', N'insert', N'Insert Data Group Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Group_menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'90', N'Group_menu', N'update', N'Update Data Group Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Group_menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'91', N'Group_menu', N'delete', N'Delete Data Group Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Group_menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'92', N'Group_menu', N'getDataMenu', N'Get Data Table Group Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Group_menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'93', N'Group_menu', N'getMenu', N'Get Data Menu (Select2)', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Group_menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'94', N'Menu', N'index', N'Access Page Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'95', N'Menu', N'insert', N'Insert Data Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'96', N'Menu', N'update', N'Update Data Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'97', N'Menu', N'delete', N'Delete Data Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'98', N'Menu', N'getData', N'Get Data Table Menu', N'D:\xampp\htdocs\skripsi\BeOne-modules\menu\controllers\Menu.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'99', N'Photo', N'index', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\photo\controllers\Photo.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'100', N'Photo', N'user', N'Show User Foto', N'D:\xampp\htdocs\skripsi\BeOne-modules\photo\controllers\Photo.php', N'2019-11-30 16:13:24.907', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'101', N'Photo', N'inventory', N'Show Invetory Foto', N'D:\xampp\htdocs\skripsi\BeOne-modules\photo\controllers\Photo.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'102', N'Photo', N'BeOnePhotos', N'Show BeOne Foto', N'D:\xampp\htdocs\skripsi\BeOne-modules\photo\controllers\Photo.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'103', N'Structure', N'index', N'Akses Halaman', N'D:\xampp\htdocs\skripsi\BeOne-modules\structure\controllers\Structure.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'104', N'Structure', N'insert', N'Simpan Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\structure\controllers\Structure.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'105', N'Structure', N'update', N'Update Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\structure\controllers\Structure.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'106', N'Structure', N'delete', N'Hapus Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\structure\controllers\Structure.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'107', N'Structure', N'getData', N'Ambil Data Table', N'D:\xampp\htdocs\skripsi\BeOne-modules\structure\controllers\Structure.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'108', N'Structure', N'makeStructure', N'', N'D:\xampp\htdocs\skripsi\BeOne-modules\structure\controllers\Structure.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'109', N'Change_pass', N'index', N'Akses Halaman', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Change_pass.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'110', N'Change_pass', N'update', N'Update Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Change_pass.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'111', N'Group', N'index', N'Akses Halaman', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Group.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'112', N'Group', N'insert', N'Simpan Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Group.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'113', N'Group', N'update', N'Update Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Group.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'114', N'Group', N'delete', N'Hapus Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Group.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'115', N'Group', N'getData', N'Ambil Data Table', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Group.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'116', N'Profile', N'index', N'Akses Halaman', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Profile.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'117', N'Profile', N'update', N'Update Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Profile.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'118', N'Profile', N'getData', N'Ambil Data User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Profile.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'119', N'Profile', N'upload', N'Upload Foto User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Profile.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'120', N'Profile', N'delphoto', N'Hapus Foto User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\Profile.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'121', N'User', N'index', N'Akses Halaman', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'122', N'User', N'insert', N'Simpan Data User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'123', N'User', N'update', N'Update Data User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'124', N'User', N'delete', N'Hapus Data User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'125', N'User', N'getData', N'Ambil Data Table User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'126', N'User', N'getUsergroup', N'Ambil Data User Group', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'127', N'User', N'upload', N'Upload Foto User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'128', N'User', N'delphoto', N'Hapus Foto User', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'129', N'User', N'getDepartment', N'Ambil Data Departement (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'130', N'User', N'getDataUser', N'Ambil Data User (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'131', N'User', N'getDirectmanager', N'Ambil Data Direct Manager', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'132', N'User', N'getUserlevel', N'Ambil Data User Level (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'133', N'User', N'getBranchoffice', N'Ambil Data Branchoffice (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'134', N'User', N'getBranch', N'Ambil Data Branchoffice by Branch (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'135', N'User', N'getCompany', N'Ambil Data Company (Public)', N'D:\xampp\htdocs\skripsi\BeOne-modules\user\controllers\User.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'136', N'Userlevel', N'index', N'Akses Halaman', N'D:\xampp\htdocs\skripsi\BeOne-modules\userlevel\controllers\Userlevel.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'137', N'Userlevel', N'insert', N'Simpan Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\userlevel\controllers\Userlevel.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'138', N'Userlevel', N'update', N'Update Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\userlevel\controllers\Userlevel.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'139', N'Userlevel', N'delete', N'Hapus Data', N'D:\xampp\htdocs\skripsi\BeOne-modules\userlevel\controllers\Userlevel.php', N'2019-11-30 16:13:24.920', N'1')
GO

INSERT INTO [dbo].[listmethod] ([id], [controller], [method], [info], [path], [created], [createdby]) VALUES (N'140', N'Userlevel', N'getData', N'Ambil Data Table', N'D:\xampp\htdocs\skripsi\BeOne-modules\userlevel\controllers\Userlevel.php', N'2019-11-30 16:13:24.920', N'1')
GO

SET IDENTITY_INSERT [dbo].[listmethod] OFF
GO


-- ----------------------------
-- Table structure for login_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[login_log]') AND type IN ('U'))
	DROP TABLE [dbo].[login_log]
GO

CREATE TABLE [dbo].[login_log] (
  [ip] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [user_id] bigint  NULL,
  [action] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [created] datetime DEFAULT (getdate()) NULL
)
GO

ALTER TABLE [dbo].[login_log] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-06-20 16:33:22.263')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-06-20 16:34:03.617')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-06-20 16:34:54.357')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-06-20 16:57:52.400')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-06-21 17:21:17.620')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 15:28:28.697')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 16:45:15.390')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 16:46:45.800')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 16:52:34.100')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 17:43:29.853')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-09 18:21:11.303')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 10:10:06.723')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:08:05.160')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:16:25.090')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-11 11:18:28.270')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:18:54.527')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:37:40.977')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-12 10:53:52.223')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-12 13:43:12.033')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-12 14:42:49.563')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-08-15 22:15:59.543')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-08-15 22:16:30.597')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-10-11 15:18:17.933')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-10-11 15:19:15.770')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-20 20:14:21.643')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-20 21:45:25.010')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-20 21:57:51.410')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-21 19:34:36.890')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-07-04 22:21:48.753')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 19:36:03.560')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 21:13:36.000')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 21:30:42.850')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 22:02:15.250')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 22:20:32.027')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 09:22:00.413')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 10:00:13.870')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 11:15:50.343')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 11:43:07.240')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 12:11:11.843')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:16:11.310')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.170.1.148', N'6', N'login', N'2019-11-16 13:37:29.753')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 16:50:47.450')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:16:11.330')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-09 16:30:13.887')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-09 18:20:33.910')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:20:58.177')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:22:09.757')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-11 11:25:50.317')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:26:10.753')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:32:12.720')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:45:07.477')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-11 11:54:17.007')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:54:49.243')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-11 13:50:36.563')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 14:41:00.167')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'2', N'login', N'2018-07-11 14:41:13.657')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 19:42:55.143')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 19:44:44.270')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 20:32:50.937')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-07 20:38:48.963')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.170.1.148', N'1', N'login', N'2019-11-16 13:41:57.850')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-06-20 16:43:10.733')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-21 19:43:02.580')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-21 20:36:48.090')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-21 21:11:12.410')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:06:02.400')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:06:35.563')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:16:11.307')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2018-07-11 11:06:46.333')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-21 21:44:50.130')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-06-21 21:54:52.853')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 13:11:31.367')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-10 13:29:13.397')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 20:28:14.337')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 20:30:04.960')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 20:30:43.937')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 21:51:41.750')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:07:27.263')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'4', N'login', N'2019-11-14 22:09:07.713')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:10:16.410')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:10:50.360')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:13:20.920')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:16:03.410')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:16:11.307')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:17:01.407')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'4', N'login', N'2019-11-14 22:18:21.083')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:20:30.440')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:27:11.210')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:32:10.247')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:32:22.800')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'6', N'login', N'2019-11-14 22:33:01.183')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 22:33:12.960')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'6', N'login', N'2019-11-14 22:33:51.207')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'3', N'login', N'2019-11-14 22:40:24.790')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'4', N'login', N'2019-11-14 22:41:32.530')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'6', N'login', N'2019-11-14 22:52:22.103')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 23:00:18.327')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'6', N'login', N'2019-11-14 23:04:56.267')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'::1', N'1', N'login', N'2019-11-14 20:03:59.333')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-21 13:38:38.680')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-21 13:38:38.833')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-23 11:17:19.327')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 09:29:53.780')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'6', N'login', N'2019-11-30 10:46:12.900')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 15:14:10.930')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'7', N'login', N'2019-11-30 15:14:49.710')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 15:33:14.063')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'6', N'login', N'2019-11-30 15:33:27.560')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 15:36:54.170')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'7', N'login', N'2019-11-30 15:37:30.920')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'5', N'login', N'2019-11-30 15:38:12.707')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'5', N'login', N'2019-11-30 15:38:35.113')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.29', N'1', N'login', N'2019-11-30 10:57:04.310')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.29', N'1', N'login', N'2019-11-30 11:08:16.913')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'7', N'login', N'2019-11-30 14:09:13.550')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 14:09:36.933')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'7', N'login', N'2019-11-30 14:11:29.370')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 15:10:51.250')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'7', N'login', N'2019-11-30 15:11:24.593')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'1', N'login', N'2019-11-30 16:10:15.377')
GO

INSERT INTO [dbo].[login_log]  VALUES (N'10.100.1.81', N'5', N'login', N'2019-11-30 16:13:53.113')
GO


-- ----------------------------
-- Table structure for menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[menu]') AND type IN ('U'))
	DROP TABLE [dbo].[menu]
GO

CREATE TABLE [dbo].[menu] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [menu] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [icon] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [link] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit DEFAULT ((1)) NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL,
  [updated] datetime DEFAULT (getdate()) NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[menu] ON
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'Administrator', N'fa fa-user', N'#', N'1', N'2018-07-09 11:17:16.000', N'1', N'2018-07-09 16:17:16.683', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'2', N'Method List', N'fa fa-tags', N'admin/listmethod', N'1', N'2018-07-09 11:18:29.000', N'1', N'2018-07-09 16:18:29.887', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'Role Setting', N'fa fa-lock', N'admin/role', N'1', N'2018-07-09 11:22:03.000', N'1', N'2018-07-09 16:22:03.023', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'9', N'Menu Setting', N'fa fa-window-restore', N'#', N'1', N'2018-07-09 11:42:57.000', N'1', N'2018-07-09 16:42:57.273', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10', N'Change Password', N'fa fa-lock ', N'user/change_pass', N'1', N'2018-07-09 11:45:49.000', N'1', N'2018-07-09 16:45:49.150', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'11', N'Master Data', N'fa fa-files-o', N'#', N'1', N'2018-07-11 06:05:27.000', N'1', N'2018-07-11 06:15:18.000', N'1')
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'12', N'Upload Data', N'fa fa-upload', N'data/web_data', N'1', N'2018-07-11 06:06:04.000', N'1', N'2018-07-11 06:55:57.000', N'1')
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10011', N'Helpdesk IT', N'fa fa-laptop', N'#', N'1', N'2019-06-20 15:37:15.000', N'1', N'2019-06-20 20:37:15.763', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10012', N'New Complaint', N'fa fa-exclamation-triangle', N'helpdesk_it/New_complaint', N'1', N'2019-06-20 15:44:01.000', N'1', N'2019-11-07 19:41:52.000', N'1')
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10013', N'Helpdesk IT Setting', N'fa fa-cogs', N'#', N'1', N'2019-06-21 20:16:54.000', N'1', N'2019-06-21 20:16:54.153', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10014', N'Complaint Status', N'fa fa-cloud-download', N'helpdesk_it_setting/complaint_status', N'1', N'2019-06-21 20:18:49.000', N'1', N'2019-06-21 20:18:49.780', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10015', N'Complaint Category', N'fa fa-bolt', N'helpdesk_it_setting/Complaint_category', N'1', N'2019-06-21 20:20:14.000', N'1', N'2019-11-07 20:33:44.000', N'1')
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10017', N'User Level', N'fa fa-signal', N'userlevel/Userlevel', N'1', N'2019-11-10 10:42:27.000', N'1', N'2019-11-10 10:44:42.000', N'1')
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10018', N'Department', N'fa fa-briefcase', N'department/Department', N'1', N'2019-11-10 11:14:36.000', N'1', N'2019-11-10 11:14:36.557', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10019', N'Branchoffice', N'fa fa-camera-retro', N'branchoffice/Branchoffice', N'1', N'2019-11-10 11:41:52.000', N'1', N'2019-11-10 11:41:52.270', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'Menu', N'fa fa-navicon', N'menu', N'1', N'2018-07-09 11:22:47.000', N'1', N'2018-07-09 16:22:47.930', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'5', N'Group Menu', N'fa fa-window-restore', N'menu/group-menu', N'1', N'2018-07-09 11:30:00.000', N'1', N'2018-07-09 16:30:00.703', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'6', N'User Setting', N'fa fa-user-circle', N'#', N'1', N'2018-07-09 11:31:46.000', N'1', N'2018-07-09 16:31:46.360', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'7', N'User Account', N'fa fa-user', N'user', N'1', N'2018-07-09 11:32:13.000', N'1', N'2018-07-09 16:32:13.423', NULL)
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'8', N'User group', N'fa fa-users', N'user/group', N'1', N'2018-07-09 11:32:34.000', N'1', N'2018-07-09 11:32:51.000', N'1')
GO

INSERT INTO [dbo].[menu] ([id], [menu], [icon], [link], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'10016', N'Cakupan Complaint', N'fa fa-bullhorn', N'helpdesk_it_setting/cakupan_complaint', N'1', N'2019-06-21 20:21:06.000', N'1', N'2019-06-21 20:21:06.490', NULL)
GO

SET IDENTITY_INSERT [dbo].[menu] OFF
GO


-- ----------------------------
-- Table structure for structure
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[structure]') AND type IN ('U'))
	DROP TABLE [dbo].[structure]
GO

CREATE TABLE [dbo].[structure] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [period] date  NOT NULL,
  [status] bit DEFAULT ((0)) NULL,
  [last_calculation] datetime  NULL,
  [created] datetime  NULL,
  [createdby] bigint  NULL,
  [updated] datetime  NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[structure] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usergroup]') AND type IN ('U'))
	DROP TABLE [dbo].[usergroup]
GO

CREATE TABLE [dbo].[usergroup] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [usergroupname] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [status] bit DEFAULT ((1)) NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL,
  [updated] datetime DEFAULT (getdate()) NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[usergroup] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of usergroup
-- ----------------------------
SET IDENTITY_INSERT [dbo].[usergroup] ON
GO

INSERT INTO [dbo].[usergroup] ([id], [usergroupname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'Administrator', N'1', N'2017-10-19 11:44:04.113', N'1', N'2019-11-16 14:53:42.000', N'1')
GO

INSERT INTO [dbo].[usergroup] ([id], [usergroupname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'2', N'User', N'1', N'2018-07-09 12:44:44.000', N'1', N'2018-07-09 17:44:44.630', NULL)
GO

INSERT INTO [dbo].[usergroup] ([id], [usergroupname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'Teknisi', N'1', N'2019-11-14 21:49:57.000', N'1', N'2019-11-14 21:49:57.417', NULL)
GO

INSERT INTO [dbo].[usergroup] ([id], [usergroupname], [status], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'Agent', N'1', N'2019-11-14 22:20:52.000', N'1', N'2019-11-14 22:20:52.440', NULL)
GO

SET IDENTITY_INSERT [dbo].[usergroup] OFF
GO


-- ----------------------------
-- Table structure for userlevel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[userlevel]') AND type IN ('U'))
	DROP TABLE [dbo].[userlevel]
GO

CREATE TABLE [dbo].[userlevel] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [userlevelname] varchar(75) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [peoplemanager] bit  NULL,
  [status] bit DEFAULT ((1)) NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL,
  [updated] datetime DEFAULT (getdate()) NULL,
  [updatedby] bigint  NULL,
  [bobot] smallint  NULL
)
GO

ALTER TABLE [dbo].[userlevel] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of userlevel
-- ----------------------------
SET IDENTITY_INSERT [dbo].[userlevel] ON
GO

INSERT INTO [dbo].[userlevel] ([id], [userlevelname], [peoplemanager], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'1', N'Staff', N'0', N'1', N'2019-11-10 10:46:27.000', N'1', N'2019-11-10 10:53:11.000', N'1', N'1')
GO

INSERT INTO [dbo].[userlevel] ([id], [userlevelname], [peoplemanager], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'2', N'Supervisor', N'1', N'1', N'2019-11-10 10:53:32.000', N'1', N'2019-11-10 10:53:32.397', NULL, N'2')
GO

INSERT INTO [dbo].[userlevel] ([id], [userlevelname], [peoplemanager], [status], [created], [createdby], [updated], [updatedby], [bobot]) VALUES (N'3', N'Manager', N'1', N'1', N'2019-11-10 10:54:54.000', N'1', N'2019-11-10 10:54:54.847', NULL, N'3')
GO

SET IDENTITY_INSERT [dbo].[userlevel] OFF
GO


-- ----------------------------
-- Table structure for users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type IN ('U'))
	DROP TABLE [dbo].[users]
GO

CREATE TABLE [dbo].[users] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [username] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [password] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [usergroup_id] bigint  NULL,
  [department_id] bigint  NULL,
  [directmanager_id] bigint  NULL,
  [userlevel_id] bigint  NULL,
  [branchoffice_id] bigint  NULL,
  [company_id] bigint  NULL,
  [fullname] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [jobtitle] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [nik] varchar(9) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [appcode] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [email2] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [celluler] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [lastlog] datetime  NULL,
  [chgpass] bit DEFAULT ((0)) NULL,
  [period] date  NULL,
  [web] bit DEFAULT ((1)) NULL,
  [status] bit DEFAULT ((0)) NULL,
  [m_active] bit  NULL,
  [created] datetime DEFAULT (getdate()) NULL,
  [createdby] bigint  NULL,
  [updated] datetime DEFAULT (getdate()) NULL,
  [updatedby] bigint  NULL
)
GO

ALTER TABLE [dbo].[users] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[users] ON
GO

INSERT INTO [dbo].[users] ([id], [username], [password], [usergroup_id], [department_id], [directmanager_id], [userlevel_id], [branchoffice_id], [company_id], [fullname], [jobtitle], [nik], [appcode], [email], [email2], [celluler], [lastlog], [chgpass], [period], [web], [status], [m_active], [created], [createdby], [updated], [updatedby]) VALUES (N'1', N'administrator', N'f865b53623b121fd34ee5426c792e5c33af8c227', N'1', N'1', NULL, N'3', N'1', NULL, N'ADMINISTRATOR', N'Super User', NULL, NULL, NULL, NULL, NULL, N'2019-11-30 10:10:15.000', N'0', N'2018-06-01', NULL, N'1', N'1', N'2018-06-20 16:07:37.480', NULL, N'2019-11-16 14:55:51.000', N'1')
GO

INSERT INTO [dbo].[users] ([id], [username], [password], [usergroup_id], [department_id], [directmanager_id], [userlevel_id], [branchoffice_id], [company_id], [fullname], [jobtitle], [nik], [appcode], [email], [email2], [celluler], [lastlog], [chgpass], [period], [web], [status], [m_active], [created], [createdby], [updated], [updatedby]) VALUES (N'3', N'ricky', N'7c4a8d09ca3762af61e59520943dc26494f8941b', N'2', N'3', NULL, N'1', N'1', NULL, N'RICKY S', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-11-14 16:40:24.000', N'0', NULL, N'1', N'1', N'1', N'2019-11-14 21:56:16.000', N'1', N'2019-11-16 14:58:26.000', N'1')
GO

INSERT INTO [dbo].[users] ([id], [username], [password], [usergroup_id], [department_id], [directmanager_id], [userlevel_id], [branchoffice_id], [company_id], [fullname], [jobtitle], [nik], [appcode], [email], [email2], [celluler], [lastlog], [chgpass], [period], [web], [status], [m_active], [created], [createdby], [updated], [updatedby]) VALUES (N'4', N'darmono', N'7c4a8d09ca3762af61e59520943dc26494f8941b', N'2', N'3', NULL, N'2', N'1', NULL, N'DARMONO', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-11-14 16:41:32.000', N'0', NULL, N'1', N'1', N'1', N'2019-11-14 21:57:17.000', N'1', N'2019-11-16 16:51:27.000', N'1')
GO

INSERT INTO [dbo].[users] ([id], [username], [password], [usergroup_id], [department_id], [directmanager_id], [userlevel_id], [branchoffice_id], [company_id], [fullname], [jobtitle], [nik], [appcode], [email], [email2], [celluler], [lastlog], [chgpass], [period], [web], [status], [m_active], [created], [createdby], [updated], [updatedby]) VALUES (N'5', N'rois', N'7c4a8d09ca3762af61e59520943dc26494f8941b', N'3', N'1', NULL, N'1', N'1', NULL, N'ROIS S', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-11-30 10:13:53.000', N'0', NULL, N'1', N'1', N'0', N'2019-11-14 21:58:23.000', N'1', N'2019-11-30 15:38:29.000', N'1')
GO

INSERT INTO [dbo].[users] ([id], [username], [password], [usergroup_id], [department_id], [directmanager_id], [userlevel_id], [branchoffice_id], [company_id], [fullname], [jobtitle], [nik], [appcode], [email], [email2], [celluler], [lastlog], [chgpass], [period], [web], [status], [m_active], [created], [createdby], [updated], [updatedby]) VALUES (N'6', N'anto', N'7c4a8d09ca3762af61e59520943dc26494f8941b', N'4', N'1', NULL, N'1', N'1', NULL, N'ANTO HOED', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-11-30 09:33:27.000', N'0', NULL, N'1', N'1', N'0', N'2019-11-14 22:22:28.000', N'1', N'2019-11-16 16:56:48.000', N'1')
GO

INSERT INTO [dbo].[users] ([id], [username], [password], [usergroup_id], [department_id], [directmanager_id], [userlevel_id], [branchoffice_id], [company_id], [fullname], [jobtitle], [nik], [appcode], [email], [email2], [celluler], [lastlog], [chgpass], [period], [web], [status], [m_active], [created], [createdby], [updated], [updatedby]) VALUES (N'7', N'ferguso', N'7c4a8d09ca3762af61e59520943dc26494f8941b', N'3', N'1', NULL, N'1', N'1', NULL, N'FERGUSO DUFREY', NULL, NULL, NULL, NULL, NULL, NULL, N'2019-11-30 09:37:30.000', N'0', NULL, N'1', N'1', N'0', N'2019-11-14 22:23:09.000', N'1', N'2019-11-14 22:23:09.207', NULL)
GO

SET IDENTITY_INSERT [dbo].[users] OFF
GO


-- ----------------------------
-- View structure for v_complaint
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_complaint]') AND type IN ('V'))
	DROP VIEW [dbo].[v_complaint]
GO

CREATE VIEW [dbo].[v_complaint] AS SELECT
	a.*,
	b.cakupan, c.category,
	d.fullname, d.branchofficename, d.departmentname, d.userlevelname,
	d.jobtitle, e.complaint_status, f.fullname AS teknisi_name
 
FROM complaint AS a
LEFT JOIN cakupan_complaint AS b ON a.cakupan_id = b.id
LEFT JOIN complaint_category AS c ON a.category_id = c.id
LEFT JOIN v_users AS d ON a.user_id = d.id
LEFT JOIN complaint_status AS e ON a.complaint_status_id = e.id
LEFT JOIN v_users AS f ON a.teknisi_id = f.id
GO


-- ----------------------------
-- View structure for v_create_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_create_menu]') AND type IN ('V'))
	DROP VIEW [dbo].[v_create_menu]
GO

CREATE VIEW [dbo].[v_create_menu] AS SELECT        dbo.v_group_menu.id, dbo.v_group_menu.usergroup_id, dbo.v_group_menu.menu_id, dbo.v_group_menu.parent_id, dbo.v_group_menu.menuorder, dbo.v_group_menu.status, dbo.v_group_menu.h_child, 
                         dbo.menu.menu, menu_1.menu AS parent, dbo.usergroup.usergroupname, dbo.menu.icon, dbo.menu.link
FROM            dbo.v_group_menu LEFT OUTER JOIN
                         dbo.usergroup ON dbo.v_group_menu.usergroup_id = dbo.usergroup.id LEFT OUTER JOIN
                         dbo.menu ON dbo.v_group_menu.menu_id = dbo.menu.id LEFT OUTER JOIN
                         dbo.menu AS menu_1 ON dbo.v_group_menu.parent_id = menu_1.id
GO


-- ----------------------------
-- View structure for v_group_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_group_menu]') AND type IN ('V'))
	DROP VIEW [dbo].[v_group_menu]
GO

CREATE VIEW [dbo].[v_group_menu] AS SELECT        t1.id, t1.usergroup_id, t1.menu_id, t1.parent_id, t1.menuorder, t1.status, IIF
                             ((SELECT        COUNT(parent_id)
                                 FROM            group_menu t2
                                 WHERE        t2.parent_id = t1.menu_id AND t2.usergroup_id = t1.usergroup_id) > 0, 1, 0) AS h_child
FROM            group_menu t1
GO


-- ----------------------------
-- View structure for v_group_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_group_role]') AND type IN ('V'))
	DROP VIEW [dbo].[v_group_role]
GO

CREATE VIEW [dbo].[v_group_role] AS SELECT        dbo.group_role.id, dbo.group_role.usergroup_id, dbo.group_role.controller, dbo.group_role.method, dbo.group_role.info, dbo.group_role.status, 
                         dbo.group_role.created, dbo.group_role.createdby, dbo.group_role.updated, dbo.group_role.updatedby, { fn CONCAT({ fn CONCAT(dbo.group_role.controller, '::') }, 
                         dbo.group_role.method) } AS classmethod, dbo.usergroup.usergroupname
FROM            dbo.group_role LEFT OUTER JOIN
                         dbo.usergroup ON dbo.group_role.usergroup_id = dbo.usergroup.id
GO


-- ----------------------------
-- View structure for v_listmethod
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_listmethod]') AND type IN ('V'))
	DROP VIEW [dbo].[v_listmethod]
GO

CREATE VIEW [dbo].[v_listmethod] AS SELECT        dbo.listmethod.id, dbo.listmethod.controller, dbo.listmethod.method, dbo.listmethod.info, dbo.listmethod.path, dbo.listmethod.created, dbo.listmethod.createdby, 
                         dbo.listmethod.controller + '::' + dbo.listmethod.method AS classmethod, dbo.users.username
FROM            dbo.listmethod LEFT OUTER JOIN
                         dbo.users ON dbo.listmethod.id = dbo.users.id
GO


-- ----------------------------
-- View structure for v_users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[v_users]') AND type IN ('V'))
	DROP VIEW [dbo].[v_users]
GO

CREATE VIEW [dbo].[v_users] AS SELECT
	dbo.users.id,
	dbo.users.username,
	dbo.users.password,
	dbo.users.usergroup_id,
	dbo.users.department_id,
	dbo.users.directmanager_id,
	dbo.users.userlevel_id,
	dbo.users.fullname,
	dbo.users.jobtitle,
	dbo.users.nik,
	dbo.users.email,
	dbo.users.celluler,
	dbo.users.status,
	dbo.users.m_active,
	dbo.usergroup.usergroupname,
	dbo.department.departmentcode,
	dbo.department.departmentname,
	dbo.userlevel.userlevelname,
	dbo.userlevel.peoplemanager,
	dbo.users.branchoffice_id,
	dbo.users.lastlog,
	dbo.users.chgpass,
	dbo.branchoffice.branchofficename,
	t_directmanager.fullname AS directmanager_name,
	dbo.users.email2,
	dbo.users.period,
	dbo.users.company_id,
	dbo.company.companycode,
	dbo.company.companyname,
	dbo.users.web,
	dbo.users.appcode 
FROM
	dbo.users
	LEFT OUTER JOIN dbo.company ON dbo.users.company_id = dbo.company.id
	LEFT OUTER JOIN dbo.users AS t_directmanager ON dbo.users.directmanager_id = t_directmanager.id
	LEFT OUTER JOIN dbo.department ON dbo.users.department_id = dbo.department.id
	LEFT OUTER JOIN dbo.usergroup ON dbo.users.usergroup_id = dbo.usergroup.id
	LEFT OUTER JOIN dbo.userlevel ON dbo.users.userlevel_id = dbo.userlevel.id
	LEFT OUTER JOIN dbo.branchoffice ON dbo.users.branchoffice_id = dbo.branchoffice.id
GO


-- ----------------------------
-- Function structure for fnFormatDate
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fnFormatDate]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fnFormatDate]
GO

CREATE FUNCTION [dbo].[fnFormatDate] (@Datetime DATETIME, @FormatMask VARCHAR(32))
RETURNS VARCHAR(32)
AS
BEGIN
    DECLARE @StringDate VARCHAR(32)
    SET @StringDate = @FormatMask
    IF (CHARINDEX ('YYYY',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'YYYY',
                         DATENAME(YY, @Datetime))
    IF (CHARINDEX ('YY',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'YY',
                         RIGHT(DATENAME(YY, @Datetime),2))
    IF (CHARINDEX ('Month',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'Month',
                         DATENAME(MM, @Datetime))
    IF (CHARINDEX ('MON',@StringDate COLLATE SQL_Latin1_General_CP1_CS_AS)>0)
       SET @StringDate = REPLACE(@StringDate, 'MON',
                         LEFT(UPPER(DATENAME(MM, @Datetime)),3))
    IF (CHARINDEX ('Mon',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'Mon',
                                     LEFT(DATENAME(MM, @Datetime),3))
    IF (CHARINDEX ('MM',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'MM',
                  RIGHT('0'+CONVERT(VARCHAR,DATEPART(MM, @Datetime)),2))
    IF (CHARINDEX ('M',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'M',
                         CONVERT(VARCHAR,DATEPART(MM, @Datetime)))
    IF (CHARINDEX ('DD',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'DD',
                         RIGHT('0'+DATENAME(DD, @Datetime),2))
    IF (CHARINDEX ('D',@StringDate) > 0)
       SET @StringDate = REPLACE(@StringDate, 'D',
                                     DATENAME(DD, @Datetime))   
RETURN @StringDate
END
GO


-- ----------------------------
-- Procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- Procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- Procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- Procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- Function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table BeOne_sessions
-- ----------------------------
ALTER TABLE [dbo].[BeOne_sessions] ADD CONSTRAINT [PK_bma_session] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table branchoffice
-- ----------------------------
ALTER TABLE [dbo].[branchoffice] ADD CONSTRAINT [PK_branchoffice] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table cakupan_complaint
-- ----------------------------
ALTER TABLE [dbo].[cakupan_complaint] ADD CONSTRAINT [PK__cakupan___3213E83F29822757] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table company
-- ----------------------------
ALTER TABLE [dbo].[company] ADD CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table complaint
-- ----------------------------
ALTER TABLE [dbo].[complaint] ADD CONSTRAINT [PK__complain__3213E83F20893E59] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table complaint_category
-- ----------------------------
ALTER TABLE [dbo].[complaint_category] ADD CONSTRAINT [PK__complain__3213E83F8ED1261D] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table complaint_status
-- ----------------------------
ALTER TABLE [dbo].[complaint_status] ADD CONSTRAINT [PK__complain__3213E83F1FD2C9A6] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table department
-- ----------------------------
ALTER TABLE [dbo].[department] ADD CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table group_menu
-- ----------------------------
ALTER TABLE [dbo].[group_menu] ADD CONSTRAINT [PK_group_menu] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table group_role
-- ----------------------------
ALTER TABLE [dbo].[group_role] ADD CONSTRAINT [PK_group_roled] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table listmethod
-- ----------------------------
ALTER TABLE [dbo].[listmethod] ADD CONSTRAINT [IX_listmethodname] UNIQUE NONCLUSTERED ([controller] ASC, [method] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table listmethod
-- ----------------------------
ALTER TABLE [dbo].[listmethod] ADD CONSTRAINT [PK_listmethod] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table menu
-- ----------------------------
ALTER TABLE [dbo].[menu] ADD CONSTRAINT [IX_menuname] UNIQUE NONCLUSTERED ([menu] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table structure
-- ----------------------------
ALTER TABLE [dbo].[structure] ADD CONSTRAINT [IX_structure] UNIQUE NONCLUSTERED ([period] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table structure
-- ----------------------------
ALTER TABLE [dbo].[structure] ADD CONSTRAINT [PK_v_structure] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table usergroup
-- ----------------------------
ALTER TABLE [dbo].[usergroup] ADD CONSTRAINT [IX_usergroup] UNIQUE NONCLUSTERED ([usergroupname] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table usergroup
-- ----------------------------
ALTER TABLE [dbo].[usergroup] ADD CONSTRAINT [PK_usergroup] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table userlevel
-- ----------------------------
ALTER TABLE [dbo].[userlevel] ADD CONSTRAINT [IX_userlevelname] UNIQUE NONCLUSTERED ([userlevelname] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table userlevel
-- ----------------------------
ALTER TABLE [dbo].[userlevel] ADD CONSTRAINT [PK_userlevel] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE [dbo].[users] ADD CONSTRAINT [FK_users_userlevel] FOREIGN KEY ([userlevel_id]) REFERENCES [dbo].[userlevel] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[users] ADD CONSTRAINT [FK_users_usergroup] FOREIGN KEY ([usergroup_id]) REFERENCES [dbo].[usergroup] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[users] ADD CONSTRAINT [FK_users_department] FOREIGN KEY ([department_id]) REFERENCES [dbo].[department] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[users] ADD CONSTRAINT [FK_users_branchoffice] FOREIGN KEY ([branchoffice_id]) REFERENCES [dbo].[branchoffice] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[users] ADD CONSTRAINT [FK_users_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

