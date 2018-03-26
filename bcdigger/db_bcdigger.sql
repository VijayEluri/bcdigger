drop table if exists bcd_admin;

/*==============================================================*/
/* Table: bcd_admin                                             */
/*==============================================================*/
create table bcd_admin
(
   id             int comment '����id',
   name                 varchar(64) comment '����',
   nickname             varchar(64) comment '�ǳ�',
   password             varchar(64) comment '����',
   sex                  varchar(32) comment '�Ա�',
   age                  int comment '����',
   duty                 varchar(32) comment 'ְ��',
   mobile               varchar(32) comment '�ƶ��绰',
   telephone            varchar(32) comment '�̶��绰',
   email                varchar(64) comment '�����ʼ�',
   address              varchar(256) comment '��ַ',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   open_id              varchar(64) comment '΢��openid',
   entry_date           datetime comment '��ְʱ��',
   user_level           int comment '�û��ȼ�',
   department_id        int comment '����',
   state                int comment '״̬',
   pwd_error_count      int comment '�����������Ĵ���',
   pwd_error_time       datetime comment '���һ����������ʱ��',
   primary key (id)
);

ALTER TABLE `bcd_admin` ADD UNIQUE INDEX `name` (`name`) ;
alter table bcd_admin comment '����Ա��';

drop table if exists bcd_sys_menu;

/*==============================================================*/
/* Table: bcd_sys_menu                                          */
/*==============================================================*/
create table bcd_sys_menu
(
   id              int comment '����id',
   menu_name            varchar(64) comment '�˵�����',
   menu_url             varchar(255) comment '�˵�url',
   menu_logo_url        varchar(255) comment '�˵�ͼ��url',
   menu_desc            varchar(255) comment '�˵�����',
   parent_id            int comment '���ڵ�id',
   is_leaf              int comment '�Ƿ����ӽڵ㣨0���ڵ㣬1�ӽڵ㣩',
   level                int comment '�㼶��һ���˵��������˵�',
   state                int comment '״̬��0,ʧЧ��1������',
   display_order        int comment '��ʾ˳��',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_sys_menu comment 'ϵͳ�˵������ں�̨Ȩ�޿��ƣ�';

drop table if exists bcd_admin_role;

/*==============================================================*/
/* Table: bcd_admin_role                                        */
/*==============================================================*/
create table bcd_admin_role
(
   id              int comment '����id',
   role_name            varchar(64) comment '��ɫ����',
   role_desc            varchar(255) comment '��ɫ����',
   state                int comment '״̬��0ʧЧ��1��Ч��',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_admin_role comment '����Ա��ɫ��';


drop table if exists bcd_admin_role_ref;

/*==============================================================*/
/* Table: bcd_admin_role_ref                                    */
/*==============================================================*/
create table bcd_admin_role_ref
(
   id        int comment '����id',
   admin_id             int comment '����Աid',
   role_ids             varchar(255) comment '��ɫids����,�ָ���',
   state                int comment '״̬��0ʧЧ��1��Ч��',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

ALTER TABLE `bcd_admin_role_ref` ADD INDEX `adminId` (`admin_id`) ;
alter table bcd_admin_role_ref comment '����ԱȨ�޹�����';

drop table if exists bcd_role_menu_ref;

/*==============================================================*/
/* Table: bcd_role_menu_ref                                     */
/*==============================================================*/
create table bcd_role_menu_ref
(
   id         int comment '����id',
   role_id              int comment '��ɫid',
   menu_ids             varchar(255) comment '�˵�ids(��,�ָ�)',
   state                int comment '״̬',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

ALTER TABLE `bcd_role_menu_ref`ADD INDEX `roleId` (`role_id`) ;
alter table bcd_role_menu_ref comment '��ɫϵͳ�˵�������';

drop table if exists bcd_admin_operate_log;

/*==============================================================*/
/* Table: bcd_admin_operate_log                                 */
/*==============================================================*/
create table bcd_admin_operate_log
(
   id               int comment '��־����',
   admin_id             int comment '����Աid',
   admin_name           varchar(64) comment '����Ա����',
   operator_type        int comment '�������ͣ�1���ӣ�2�޸ģ�3ɾ����4��ѯ��',
   state                int comment '����״̬��0ʧ�ܣ�1�ɹ���',
   ip                   varchar(64) comment 'ip��ַ',
   content              varchar(255) comment '��������',
   add_time             datetime comment '���ʱ��',
   primary key (id)
);

ALTER TABLE `bcd_admin_operate_log` ADD INDEX `adminId` (`admin_id`) ;
alter table bcd_admin_operate_log comment '����Ա������־��';




drop table if exists bcd_post_category;

/*==============================================================*/
/* Table: bcd_post_category                                     */
/*==============================================================*/
create table bcd_post_category
(
   id                   int not null comment '����id',
   name                 varchar(255) comment '��������',
   all_name             varchar(255) comment '����ȫ��',
   display_order        int comment '��ʾ˳��',
   parent_id            int comment '��id',
   right_id             int comment '�ҽڵ�id',
   left_id              int comment '��ڵ�id',
   post_count           int comment '��������',
   state                int comment '״̬',
   add_time             int comment '���ʱ��',
   update_time          int comment '����ʱ��',
   category_desc        varchar(255) comment '����',
   primary key (id)
);

alter table bcd_post_category comment '���·����';

drop table if exists bcd_post;

/*==============================================================*/
/* Table: bcd_post                                              */
/*==============================================================*/
create table bcd_post
(
   id                   int not null comment '����id',
   post_author_id       int comment '��������id',
   post_source          varchar(255) comment '������Դ',
   post_date            bigint comment '����ʱ��',
   post_content         text comment '��������',
   post_title           varchar(255) comment '���±���',
   post_excerpt         text comment '����ժҪ',
   post_status          int comment '����״̬',
   comment_status       int comment '����״̬',
   ping_status          int,
   post_passwd          varchar(255) comment '��������',
   post_name            varchar(255) comment '����������',
   post_update_date     int comment '�޸�ʱ��',
   post_parent          int comment '������',
   guid                 varchar(64) comment 'Ψһ��ʶ',
   display_order        int comment '����id',
   post_type            int comment '��������',
   comment_count        int comment '������',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_post comment '����';


drop table if exists bcd_post_tag;

/*==============================================================*/
/* Table: bcd_post_tag                                          */
/*==============================================================*/
create table bcd_post_tag
(
   id                   int not null comment '����id',
   tag_name             varchar(64) comment '����',
   state                int comment '״̬',
   display_order        int comment '��ʾλ��',
   type                 varchar(64) comment '����',
   primary key (id)
);

alter table bcd_post_tag comment '���±�ǩ��';

drop table if exists bcd_users;

/*==============================================================*/
/* Table: bcd_users                                             */
/*==============================================================*/
create table bcd_users
(
   id                   int not null comment '����id',
   user_name            varchar(255) comment '�û���',
   user_passwd          varchar(255) comment '�û�����',
   user_nicename        varchar(255) comment '�û��ǳ�',
   user_email           varchar(255) comment '�û�email',
   user_url             varchar(255) comment '�û���ҳ',
   user_register_date   datetime comment 'ע��ʱ��',
   user_activation_key  varchar(32) comment '������',
   user_status          int comment '�û�״̬',
   display_name         varchar(255) comment '��ʾ����',
   user_last_login_date datetime comment '����¼ʱ��',
   qq_uid               varchar(255) comment 'qq',
   weixin_uid           varchar(255) comment '΢��',
   alipay_uid           varchar(255) comment '֧����',
   primary key (id)
);

alter table bcd_users comment '�û���';




