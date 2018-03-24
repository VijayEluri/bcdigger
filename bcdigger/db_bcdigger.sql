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