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


drop table if exists bcd_department;

/*==============================================================*/
/* Table: bcd_department                                        */
/*==============================================================*/

create table bcd_department
(
   id                   int not null AUTO_INCREMENT comment '����id',
   name                 varchar(0) comment '��������',
   admin_id             int comment '������',
   parent_id            int comment '��id',
   left_id              int comment '��ڵ�id',
   right_id             int comment '�ҽڵ�id',
   display_order        int comment '��ʾ˳��',
   add_time          datetime comment '����ʱ��',
   update_time          datetime comment '����ʱ��',
   state                int comment '״̬',
   primary key (id)
);

alter table bcd_department comment '(��˾���ű�)';



drop table if exists bcd_store;

/*==============================================================*/
/* Table: bcd_store                                             */
/*==============================================================*/

CREATE TABLE `bcd_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `store_code` varchar(50) DEFAULT NULL COMMENT '�ŵ����',
  `chinese_name` varchar(50) DEFAULT NULL COMMENT '��������',
  `phone` varchar(20) DEFAULT NULL COMMENT '�绰',
  `mobile` varchar(100) DEFAULT NULL COMMENT '�������ֻ�',
  `address` varchar(255) DEFAULT NULL COMMENT '��ַ',
  `direction` varchar(255) DEFAULT NULL COMMENT '����',
  `open_hour` varchar(10) DEFAULT NULL COMMENT '��ҵʱ��',
  `close_hour` varchar(10) DEFAULT NULL COMMENT 'ͣҵʱ��',
  `english_name` varchar(50) DEFAULT NULL,
  `english_address` varchar(255) DEFAULT NULL,
  `location_image` varchar(100) DEFAULT NULL COMMENT 'λ��ʾ��ͼ',
  `store_images` varchar(500) NOT NULL DEFAULT '' COMMENT '�ŵ���ͼ',
  `store_province` varchar(50) NOT NULL DEFAULT '' COMMENT '�ŵ�����ʡ',
  `store_city` varchar(50) NOT NULL DEFAULT '' COMMENT '�ŵ�����������',
  `city_area` varchar(50) NOT NULL DEFAULT '' COMMENT '�����µ�����',
  `is_open` tinyint(4) NOT NULL DEFAULT '1' COMMENT '�Ƿ��ڿ�',
  `bmap_position` varchar(25) NOT NULL COMMENT '�ٶ�λ��',
  `bmap_positionX` decimal(12,6) NOT NULL COMMENT '�ٶ�xλ��',
  `bmap_positionY` decimal(12,6) NOT NULL COMMENT '�ٶ�yλ��',
  `search_url` varchar(100) NOT NULL COMMENT '������ַ',
  `bus` varchar(100) NOT NULL COMMENT '�������',
  `subway` varchar(50) NOT NULL COMMENT '�������',
  `nearby` varchar(80) NOT NULL COMMENT '��������',
  `email` varchar(50) NOT NULL COMMENT '����',
  `store_image1` varchar(100) NOT NULL COMMENT '����ͼƬ1',
  `store_image2` varchar(100) NOT NULL COMMENT '����ͼƬ2',
  `store_image3` varchar(100) NOT NULL COMMENT '����ͼƬ3',
  `store_image4` varchar(100) NOT NULL COMMENT '����ͼƬ4',
  `appoint_limit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'ԤԼ����',
  `store_type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '�ŵ����ͣ�0-��Ӫ�꣬1-д��¥�꣬2-�̳��꣬3-���˵�',
  `is_booking` int(11) DEFAULT '0' COMMENT '�Ƿ�ԤԼ',
  `open_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `add_time` datetime DEFAULT NULL COMMENT '���ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `kingdee_cust_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ŵ��';

alter table bcd_store comment '�ŵ��';


drop table if exists bcd_goods_category;

/*==============================================================*/
/* Table: bcd_goods_category                                    */
/*==============================================================*/
create table bcd_goods_category
(
   id                   int not null AUTO_INCREMENT comment '����id',
   cat_name             varchar(64) comment '��������',
   cat_desc             varchar(255) comment '����',
   state                int comment '״̬',
   left_id              int comment '��ڵ�id',
   right_id             int comment '�ҽڵ�id',
   display_order        int comment '��ʾ˳��',
   parent_id            int comment '���ڵ�id',
   inner_name           varchar(255) comment 'ȫ��',
   cat_image            varchar(255) comment '����ͼƬ',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_goods_category comment '��Ʒ�����';

drop table if exists bcd_goods;

/*==============================================================*/
/* Table: bcd_goods                                             */
/*==============================================================*/
CREATE TABLE `bcd_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `cat_id` int(11) DEFAULT NULL COMMENT '����id',
  `goods_no` varchar(32) DEFAULT NULL COMMENT '��Ʒ����',
  `good_name` varchar(64) DEFAULT NULL COMMENT '��Ʒ����',
  `state` int(11) DEFAULT NULL COMMENT '״̬ 0������ 1����',
  `small_image` varchar(64) DEFAULT NULL COMMENT '��ƷСͼ',
  `middle_image` varchar(64) DEFAULT NULL COMMENT '��Ʒ��ͼ',
  `goods_image` varchar(64) DEFAULT NULL COMMENT '��Ʒ��ͼ',
  `weight` double DEFAULT NULL COMMENT '����',
  `unit` varchar(32) DEFAULT NULL COMMENT '��λ',
  `inner_name` varchar(255) DEFAULT NULL COMMENT 'ȫ��',
  `type` int(11) DEFAULT NULL COMMENT '����',
  `price` int(11) DEFAULT NULL COMMENT '�ۼ�',
  `market_price` int(11) DEFAULT NULL COMMENT '�г���',
  `pur_price` int(11) DEFAULT NULL COMMENT '�ɹ���',
  `goods_desc` text COMMENT '��Ʒ����',
  `display_order` int(11) DEFAULT NULL COMMENT '��ʾ˳��',
  `add_time` datetime DEFAULT NULL COMMENT '���ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `kingdee_cust_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ��';

alter table bcd_goods comment '��Ʒ��';

drop table if exists bcd_goods_repository;

/*==============================================================*/
/* Table: bcd_goods_repository                                  */
/*==============================================================*/
create table bcd_goods_repository
(
   id                   int not null AUTO_INCREMENT comment '����id',
   name                 varchar(64) comment '����',
   store_id             int comment '��������id',
   type                 int comment '����
            5601 ������
            5602 ���ϲ�
            5603 �˻���',
   address              varchar(255) comment '��ַ',
   is_use               int comment '�Ƿ����',
   capacity             int comment '����',
   quantity             int comment 'Ŀǰ�����',
   operator             int comment '������',
   state                int comment '״̬',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_goods_repository comment '�ֿ��';

drop table if exists bcd_goods_store;

/*==============================================================*/
/* Table: bcd_goods_store                                       */
/*==============================================================*/
create table bcd_goods_store
(
   id                   int not null AUTO_INCREMENT comment '����id',
   goods_id             int comment '��Ʒid',
   repository_id        int comment '�ֿ�id',
   store_id             int comment '����id',
   quantity             int comment '����',
   perfect_quantity     int comment '���ۿ��',
   alert_quantity       int comment 'Ԥ�����',
   state                int comment '״̬',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_goods_store comment '��Ʒ����';


drop table if exists bcd_goods_instore;

/*==============================================================*/
/* Table: bcd_goods_instore                                     */
/*==============================================================*/
create table bcd_goods_instore
(
   id                   int not null auto_increment comment '����id',
   goods_order_id       int comment '������id',
   goods_order_item_id  int comment '������ϸid',
   goods_id             int comment '��Ʒid',
   batch_no             varchar(64) comment '���κ�',
   store_id             int comment '����id',
   repository_id        int comment '�ֿ�id',
   state                int comment '״̬',
   pur_price            int comment '�ɹ���',
   type                 int comment '������� 
            5000�����ɹ����
            5001�̵����
            5002�˻����
            5003�������',
   in_quantity          int comment '�������',
   in_store_time        datetime comment '���ʱ��',
   operator             int comment '������',
   memo                 varchar(255) comment '��ע',
   source_id            int comment '�����Դ 0pc�� 1�ֻ��� 2paid 3����',
   primary key (id)
);

alter table bcd_goods_instore comment '��Ʒ�����ϸ��';


drop table if exists bcd_goods_outstore;

/*==============================================================*/
/* Table: bcd_goods_outstore                                    */
/*==============================================================*/
create table bcd_goods_outstore
(
   id                   int not null AUTO_INCREMENT comment '����id',
   goods_id             int comment '��Ʒid',
   batch_no             varchar(64) comment '��������',
   store_id             int comment '����id',
   type                 int comment '��������
            5100 ��������
            5101 �̵����
            5102 ���ֳ���',
   repository_id        int comment '����ֿ�',
   out_quantity         int comment '��������',
   out_store_time       datetime comment '����ʱ��',
   operator             int comment '������',
   memo                 varchar(255) comment '��ע',
   state                int comment '״̬',
   source_id            int comment '������Դ 0pc�� 1�ֻ��� 2paid 3����',
   primary key (id)
);

alter table bcd_goods_outstore comment '��Ʒ�����';

drop table if exists bcd_goods_purchase;

/*==============================================================*/
/* Table: bcd_goods_purchase                                    */
/*==============================================================*/
create table bcd_goods_purchase
(
   id                   int not null AUTO_INCREMENT comment '����id',
   batch_no             varchar(0) comment '���κ�',
   type                 int comment '�ɹ�����',
   store_id             int comment '����id',
   operator             int comment '������',
   sum_quantity         int comment '�ɹ�������',
   memo                 varchar(0) comment '��ע',
   state                int comment '״̬',
   add_time             datetime comment '���ʱ��',
   update_time          datetime comment '����ʱ��',
   primary key (id)
);

alter table bcd_goods_purchase comment '��Ʒ�ɹ���';

drop table if exists bcd_goods_purchase_item;

/*==============================================================*/
/* Table: bcd_goods_purchase_item                               */
/*==============================================================*/
create table bcd_goods_purchase_item
(
   id                   int not null AUTO_INCREMENT comment '����id',
   purchase_id          int comment '�ɹ���id',
   goods_id             int comment '��Ʒid',
   goods_no             varchar(64) comment '��Ʒ����',
   quantity             int comment '�ɹ�����',
   pur_price            int comment '�ɹ��۸�',
   state                int comment '״̬',
   primary key (id)
);

alter table bcd_goods_purchase_item comment '�ɹ���ϸ��';

drop table if exists bcd_goods_order;

/*==============================================================*/
/* Table: bcd_goods_order                                       */
/*==============================================================*/
create table bcd_goods_order
(
   id                   int not null auto_increment,
   order_no            varchar(32),
   order_user_id        int,
   store_id             int,
   order_type           int,
   add_time             datetime,
   update_time          datetime,
   memo                 text,
   state                int,
   kingdee_cust_id      int,
   primary key (id)
);

alter table bcd_goods_order comment '��Ʒ������';

drop table if exists bcd_goods_order_item;

/*==============================================================*/
/* Table: bcd_goods_order_item                                  */
/*==============================================================*/
create table bcd_goods_order_item
(
   id                   int not null auto_increment,
   order_id             int,
   order_no             varchar(32),
   goods_id             int,
   goods_no             varchar(32),
   order_quantity       int,
   instore_quantity     int,
   instore_time         datetime,
   add_time             datetime,
   update_time          datetime,
   primary key (id)
);

alter table bcd_goods_order_item comment '������ϸ��';


