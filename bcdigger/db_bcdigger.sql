SET GLOBAL max_user_connections = 1000; 
drop table if exists bcd_admin;

/*==============================================================*/
/* Table: bcd_admin                                             */
/*==============================================================*/
create table bcd_admin
(
   id             int AUTO_INCREMENT comment '����id',
   store_id		  int comment '�����ŵ�id',		
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

insert into bcd_admin(`name`,nickname,`password`,add_time,update_time,state,store_id)
values
('������','������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('����ƽ','����ƽ','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('������','������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('������','������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('��ӱ','��ӱ','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('��â','��â','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('�����','�����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('�Ŵ�ׯ','�Ŵ�ׯ','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('��Ƽ','��Ƽ','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('TEST','TEST','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,1),
('NXHBBJ0001','������ѩ�������óǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,58),
('NXHBBJ0002','������ѩ��ֱ�ſ��µ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,59),
('NXXNCD0002','�ɶ���ѩ����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,65),
('TGXNCD0002','�ɶ�̨�ǽ������㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,183),
('TGXNCD0001','�ɶ�̨�Ǿŷ���','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,182),
('NXHNDG0001','��ݸ��ѩ��һ�ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,74),
('TGHNDG0001','��ݸ̨�Ǻ��¹㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,188),
('NXHNFS0001','��ɽ��ѩ������ص�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,76),
('NXHNFS0002','��ɽ��ѩ�к������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,77),
('TGHNFZ0001','����̨�Ƕ�����̩�̹㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,189),
('NXHNGZ0003','������ѩ���ǻ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,81),
('NXHNGZ0007','������ѩ��ʢ��Ƶ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,85),
('NXHNGZ0010','������ѩ�ַ�㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,88),
('NXHNGZ0004','������ѩ���㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,82),
('NXHNGZ0008','������ѩͬ�ͽ𲬹㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,86),
('NXHNGZ0001','������ѩ������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,79),
('NXHNGZ0002','������ѩ���ѹ㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,80),
('NXHNGZ0005','������ѩ��Ӱ�ǹ�ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,83),
('TGHNGZ0002','����̨��k11��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,191),
('TGHNGZ0001','����̨�ǰ��Ź㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,190),
('TGHNGZ0004','����̨�ǻ�ʢ��Ƶ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,193),
('NXHDHZ0004','������ѩ����������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,94),
('NXHDHZ0002','������ѩ��������㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,92),
('NXHDHZ0003','������ѩ������̩��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,93),
('NXHDHZ0001','������ѩ����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,91),
('NXHDHZ0005','������ѩ��ɽ������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,95),
('TGHDHZ0001','����̨������㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,194),
('NXHDNJ0001','�Ͼ���ѩ�»��㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,97),
('NXHDNJ0004','�Ͼ���ѩ���������µ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,100),
('NXHDNJ0003','�Ͼ���ѩ������ӥ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,99),
('NXHDNJ0002','�Ͼ���ѩ��������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,98),
('TGHDNJ0003','�Ͼ�̨�ǵ»��㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,199),
('TGHDNJ0002','�Ͼ�̨����������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,198),
('TGHNXM0002','����̨���л��ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,221),
('NXHDSH0004','�Ϻ���ѩ��������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,104),
('NXHDSH0001','�Ϻ���ѩ�а�һ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,101),
('NXHDSH0002','�Ϻ���ѩ������óǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,102),
('TGHDSH0002','�Ϻ�̨�ǹ�Ԫ��·��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,270),
('TGHDSH0004','�Ϻ�̨�ǹ������ĵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,272),
('TGHDSH0006','�Ϻ�̨�Ǿ������óǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,205),
('TGHDSH0003','�Ϻ�̨�������Ϸ��̳ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,271),
('TGHDSH0001','�Ϻ�̨���������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,269),
('LSHNSZ0002','������ɽ�����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,12),
('LSHNSZ0001','������ɽ�찲�ƹȵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,11),
('NXHNSZ0024','������ѩKKmall��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,39),
('NXHNSZ0027','������ѩkkone��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,42),
('NXHNSZ0011','������ѩ�˺Ųֵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,26),
('NXHNSZ0028','������ѩ����������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,43),
('NXHNSZ0036','������ѩ��÷ɳ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,51),
('NXHNSZ0048','������ѩ����cocopark��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,115),
('NXHNSZ0005','������ѩ���ﶫ����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,20),
('NXHNSZ0034','������ѩ�������ʱ���㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,49),
('NXHNSZ0001','������ѩ����׿Խ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,16),
('NXHNSZ0013','������ѩ�����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,28),
('NXHNSZ0010','������ѩ�����ͷ׳ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,25),
('NXHNSZ0009','������ѩ�󺣾��е�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,24),
('NXHNSZ0017','������ѩ��԰�ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,32),
('NXHNSZ0003','������ѩ��ǿ���ŷ���','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,18),
('NXHNSZ0040','������ѩ��ǿ��ïҵ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,55),
('NXHNSZ0014','������ѩ����������ص�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,29),
('NXHNSZ0002','������ѩ���ֺ�����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,17),
('NXHNSZ0012','������ѩ��һ�ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,27),
('NXHNSZ0020','������ѩ��⻪��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,35),
('NXHNSZ0023','������ѩ�Ƽ���̬԰��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,38),
('NXHNSZ0015','������ѩ����ʿ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,30),
('NXHNSZ0038','������ѩ���ں����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,53),
('NXHNSZ0026','������ѩ�����ŷ���','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,41),
('NXHNSZ0019','������ѩ�̾������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,34),
('NXHNSZ0008','������ѩ÷��׿�û��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,23),
('NXHNSZ0006','������ѩ��ɽ���1�ڵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,21),
('NXHNSZ0018','������ѩ��ɽ������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,33),
('NXHNSZ0004','������ѩ��ɽïҵ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,19),
('NXHNSZ0042','������ѩ��ɽ̫�ųǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,57),
('NXHNSZ0025','������ѩǰ���ܴ󸣵�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,40),
('NXHNSZ0030','������ѩɳ��������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,45),
('NXHNSZ0043','������ѩɳ������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,110),
('NXHNSZ0039','������ѩ��ҵ�ϳǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,54),
('NXHNSZ0035','������ѩ�찲�ƹȵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,50),
('NXHNSZ0033','������ѩ������ǹ㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,48),
('NXHNSZ0029','������ѩ��������㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,44),
('NXHNSZ0022','������ѩ�³��й㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,37),
('NXHNSZ0052','������ѩ�ű�cocopark��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,119),
('NXHNSZ0016','������ѩҼ���ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,31),
('NXHNSZ0007','������ѩ���ĳǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,22),
('TGHNSZ0039','����̨�ǲ���������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,211),
('TGHNSZ0035','����̨�Ǵ�Ͷ���ó������ֵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,207),
('TGHNSZ0034','����̨�Ǹ���cocopark��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,181),
('TGHNSZ0006','����̨�Ǹ��ﶫ����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,153),
('TGHNSZ0036','����̨�Ǹ����ʢ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,208),
('TGHNSZ0027','����̨�ǹ�������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,174),
('TGHNSZ0024','����̨�ǹ������ĵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,171),
('TGHNSZ0010','����̨�Ǻ������콢��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,157),
('TGHNSZ0016','����̨�ǻ�԰�ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,163),
('TGHNSZ0041','����̨�ǻ��ϳǰ�����˹��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,213),
('TGHNSZ0003','����̨�ǻ�ǿ���ŷ���','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,150),
('TGHNSZ0029','����̨�ǻ�ǿïҵ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,176),
('TGHNSZ0017','����̨�ǻ��ֺ�����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,164),
('TGHNSZ0023','����̨�ǻ�ͥ�㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,170),
('TGHNSZ0012','����̨�ǻ�һ�ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,159),
('TGHNSZ0014','����̨�ǽ�⻪��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,161),
('TGHNSZ0022','����̨�ǿƼ���̬԰��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,169),
('TGHNSZ0018','����̨������ʿ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,165),
('TGHNSZ0004','����̨���������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,151),
('TGHNSZ0033','����̨�����ں����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,180),
('TGHNSZ0001','����̨������cococity��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,148),
('TGHNSZ0026','����̨�������ŷ���','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,173),
('TGHNSZ0015','����̨���̾������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,162),
('TGHNSZ0005','����̨���̾����̵�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,152),
('TGHNSZ0007','����̨��÷��׿�û��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,154),
('TGHNSZ0020','����̨����������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,167),
('TGHNSZ0009','����̨����ɽïҵ��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,156),
('TGHNSZ0032','����̨���찲�ƹȵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,179),
('TGHNSZ0013','����̨��̩ͬ�㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,160),
('TGHNSZ0030','����̨����������㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,177),
('TGHNSZ0008','����̨����ɳ����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,155),
('TGHNSZ0042','����̨���ű�cocopark��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,214),
('TGHNSZ0021','����̨��Ҽ���ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,168),
('TGHNSZ0025','����̨��������յ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,172),
('TGHNSZ0019','����̨�����ĳǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,166),
('XNHNSZ0007','����ϲ�깱��˺Ųֵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,231),
('XNHNSZ0012','����ϲ�깱����˵�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,236),
('NXHZWH0003','�人��ѩ���K11��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,122),
('NXHZWH0002','�人��ѩ��������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,121),
('NXHZWH0005','�人��ѩ��Ǻ�����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,124),
('NXHZWH0001','�人��ѩ����ص�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,120),
('NXHZWH0004','�人��ѩ�˼����۵�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,123),
('TGHZWH0003','�人̨��M+���Ͷ���㳡��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,218),
('TGHZWH0001','�人̨��Ҽ���������ĵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,216),
('NXXBXA0003','������ѩSKP��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,129),
('NXXBXA0001','������ѩ��������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,127),
('NXXBXA0002','������ѩ������յ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,128),
('TGXBXA0001','����̨�������','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,219),
('NXHZCS0002','��ɳ��ѩI city��','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,72),
('NXHZCS0001','��ɳ��ѩ÷Ϫ����','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,71),
('TGHZCS0001','��ɳ̨�ǹ������ĵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,187),
('NXXNCQ0002','������ѩ����ǵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,68),
('NXXNCQ0003','������ѩԴ����ֵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,69),
('TGXNCQ0001','����̨�Ǳ�����ֵ�','646826576E5AB3C65D9FC4327E8B100C',now(),now(),1,185);


drop table if exists bcd_sys_menu;

/*==============================================================*/
/* Table: bcd_sys_menu                                          */
/*==============================================================*/
create table bcd_sys_menu
(
   id              int AUTO_INCREMENT comment '����id',
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
   id              int AUTO_INCREMENT comment '����id',
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
   id        int AUTO_INCREMENT comment '����id',
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
   id         int AUTO_INCREMENT comment '����id',
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
   id               int AUTO_INCREMENT comment '��־����',
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
   id                   int not null AUTO_INCREMENT comment '����id',
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
   id                   int not null AUTO_INCREMENT comment '����id',
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
   id                   int not null AUTO_INCREMENT comment '����id',
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
   id                   int not null AUTO_INCREMENT comment '����id',
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
  `store_images` varchar(500) DEFAULT NULL COMMENT '�ŵ���ͼ',
  `store_province` varchar(50) DEFAULT NULL COMMENT '�ŵ�����ʡ',
  `store_city` varchar(50) DEFAULT NULL COMMENT '�ŵ�����������',
  `city_area` varchar(50) DEFAULT NULL COMMENT '�����µ�����',
  `is_open` tinyint(4) DEFAULT '1' COMMENT '�Ƿ��ڿ�',
  `bmap_position` varchar(25) DEFAULT NULL COMMENT '�ٶ�λ��',
  `bmap_positionX` decimal(12,6) DEFAULT NULL COMMENT '�ٶ�xλ��',
  `bmap_positionY` decimal(12,6) DEFAULT NULL COMMENT '�ٶ�yλ��',
  `search_url` varchar(100) DEFAULT NULL COMMENT '������ַ',
  `bus` varchar(100) DEFAULT NULL COMMENT '�������',
  `subway` varchar(50) DEFAULT NULL COMMENT '�������',
  `nearby` varchar(80) DEFAULT NULL COMMENT '��������',
  `email` varchar(50) DEFAULT NULL COMMENT '����',
  `store_image1` varchar(100) DEFAULT NULL COMMENT '����ͼƬ1',
  `store_image2` varchar(100) DEFAULT NULL COMMENT '����ͼƬ2',
  `store_image3` varchar(100) DEFAULT NULL COMMENT '����ͼƬ3',
  `store_image4` varchar(100) DEFAULT NULL COMMENT '����ͼƬ4',
  `appoint_limit` int(11) unsigned DEFAULT '0' COMMENT 'ԤԼ����',
  `store_type` int(10) unsigned DEFAULT '0' COMMENT '�ŵ����ͣ�0-��Ӫ�꣬1-д��¥�꣬2-�̳��꣬3-���˵�',
  `is_booking` int(11) DEFAULT '0' COMMENT '�Ƿ�ԤԼ',
  `open_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `add_time` datetime DEFAULT NULL COMMENT '���ʱ��',
  `update_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `kingdee_cust_id` int(11) DEFAULT '0',
  `receive_stock_id`  int(11) NULL DEFAULT 0 COMMENT '�ջ��ֿ�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ŵ��'

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
  `goods_name` varchar(64) DEFAULT NULL COMMENT '��Ʒ����',
  `state` int(11) DEFAULT NULL COMMENT '״̬ 0������ 1����',
  `small_image` varchar(64) DEFAULT NULL COMMENT '��ƷСͼ',
  `middle_image` varchar(64) DEFAULT NULL COMMENT '��Ʒ��ͼ',
  `goods_image` varchar(64) DEFAULT NULL COMMENT '��Ʒ��ͼ',
  `weight` double DEFAULT NULL COMMENT '����',
  `unit` varchar(32) DEFAULT NULL COMMENT '��λ',
  `model` varchar(64) DEFAULT NULL COMMENT '����ͺ�',
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
  `unit_cust_id`  int(11) DEFAULT '0',
  `default_vendor`  int(11) NULL DEFAULT 0 COMMENT '��Ӧ��',
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
   state                int comment '״̬,0����⣬1����ˣ�2��˲�ͨ��',
   pur_price            int comment '�ɹ���',
   type                 int comment '������� 
            5000�����ɹ����
            5001�̵����
            5002�˻����
            5003�������',
   in_quantity          int comment '�������',
   in_store_time        datetime comment '���ʱ��',
   add_time        datetime comment '���ʱ��',
   update_time        datetime comment '����ʱ��',
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
   kingdee_cust_no    	varchar(64),
   `kingdee_purchase_cust_id`  int(11) NULL DEFAULT 0,
   `kingdee_purchase_cust_no`  varchar(64) NULL,
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
   goods_order_id             int,
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

create table `bcd_meta_content` (
  `id` int(11) NOT NULL auto_increment,
  `define_id` int(11) DEFAULT 0,
  `content_desc` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` varchar(64) DEFAULT NULL,
  `Value1` varchar(64) DEFAULT NULL,
  `Value2` varchar(64) DEFAULT NULL,
  `Value3` varchar(64) DEFAULT NULL,
  `Value4` varchar(64) DEFAULT NULL,
  `Value5` varchar(64) DEFAULT NULL,
  `kingdee_cust_id` int(11) DEFAULT 0,
  `state` tinyint(4) DEFAULT 1 COMMENT '0:��Ч,1:��Ч',
  `add_Time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  primary KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ԫ�������ݱ�';


create table `bcd_meta_define` (
  `id` int(11) NOT NULL auto_increment,
  `define_name` varchar(32) DEFAULT NULL,
  `define_desc` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT 1 COMMENT '0:��Ч,1:��Ч',
  `add_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  primary KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ԫ�������ͱ�';
