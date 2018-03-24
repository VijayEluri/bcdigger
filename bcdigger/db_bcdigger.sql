drop table if exists bcd_admin;

/*==============================================================*/
/* Table: bcd_admin                                             */
/*==============================================================*/
create table bcd_admin
(
   admin_id             int comment '����id',
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
   pwd_error_time       datetime comment '���һ����������ʱ��'
);

alter table bcd_admin comment '����Ա��';

drop table if exists bcd_sys_menu;

/*==============================================================*/
/* Table: bcd_sys_menu                                          */
/*==============================================================*/
create table bcd_sys_menu
(
   menu_id              int comment '����id',
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
   update_time          datetime comment '����ʱ��'
);

alter table bcd_sys_menu comment 'ϵͳ�˵������ں�̨Ȩ�޿��ƣ�';

drop table if exists bcd_admin_role;

/*==============================================================*/
/* Table: bcd_admin_role                                        */
/*==============================================================*/
create table bcd_admin_role
(
   role_id              int comment '����id',
   role_name            varchar(64) comment '��ɫ����',
   role_desc            varchar(255) comment '��ɫ����',
   state                int comment '״̬��0ʧЧ��1��Ч��',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��'
);

alter table bcd_admin_role comment '����Ա��ɫ��';


drop table if exists bcd_admin_role_ref;

/*==============================================================*/
/* Table: bcd_admin_role_ref                                    */
/*==============================================================*/
create table bcd_admin_role_ref
(
   admin_role_id        int comment '����id',
   admin_id             int comment '����Աid',
   role_ids             varchar(255) comment '��ɫids����,�ָ���',
   state                int comment '״̬��0ʧЧ��1��Ч��',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��'
);

alter table bcd_admin_role_ref comment '����ԱȨ�޹�����';

drop table if exists bcd_role_menu_ref;

/*==============================================================*/
/* Table: bcd_role_menu_ref                                     */
/*==============================================================*/
create table bcd_role_menu_ref
(
   role_menu_id         int comment '����id',
   role_id              int comment '��ɫid',
   menu_ids             varchar(255) comment '�˵�ids(��,�ָ�)',
   state                int comment '״̬',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��'
);

alter table bcd_role_menu_ref comment '��ɫϵͳ�˵�������';

drop table if exists bcd_admin_operate_log;

/*==============================================================*/
/* Table: bcd_admin_operate_log                                 */
/*==============================================================*/
create table bcd_admin_operate_log
(
   log_id               int comment '��־����',
   admin_id             int comment '����Աid',
   admin_name           varchar(64) comment '����Ա����',
   operator_type        int comment '�������ͣ�1���ӣ�2�޸ģ�3ɾ����4��ѯ��',
   state                int comment '����״̬��0ʧ�ܣ�1�ɹ���',
   ip                   varchar(64) comment 'ip��ַ',
   content              varchar(255) comment '��������',
   add_time             datetime comment '���ʱ��'
);

alter table bcd_admin_operate_log comment '����Ա������־��';



