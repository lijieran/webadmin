SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS role_menu;
DROP TABLE IF EXISTS t_menu;
DROP TABLE IF EXISTS t_user_role;
DROP TABLE IF EXISTS t_role;
DROP TABLE IF EXISTS t_user;




/* Create Tables */

CREATE TABLE role_menu
(
	-- 角色编号
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	-- 菜单编号
	menu_id varchar(64) NOT NULL COMMENT '菜单编号',
	UNIQUE (role_id),
	UNIQUE (menu_id)
);


-- 菜单表
CREATE TABLE t_menu
(
	-- 编号
	id varchar(64) NOT NULL COMMENT '编号',
	-- 排序
	sort int COMMENT '排序',
	-- 父级编号
	parent_id varchar(64) COMMENT '父级编号',
	-- 名称
	name varchar(100) COMMENT '名称',
	-- 链接
	href varchar(200) COMMENT '链接',
	-- 是否在菜单中显示（1：显示；0：不显示）
	is_show int DEFAULT 0 COMMENT '是否在菜单中显示（1：显示；0：不显示）',
	-- 权限标识
	permission varchar(200) COMMENT '权限标识',
	PRIMARY KEY (id),
	UNIQUE (id)
) COMMENT = '菜单表';


CREATE TABLE t_role
(
	-- 编号
	id varchar(64) NOT NULL COMMENT '编号',
	-- 名称
	name varchar(100) COMMENT '名称',
	PRIMARY KEY (id),
	UNIQUE (id)
);


CREATE TABLE t_user
(
	-- 编号
	id varchar(64) NOT NULL COMMENT '编号',
	-- 账号
	username varchar(100) NOT NULL COMMENT '账号',
	-- 密码
	password varchar(100) NOT NULL COMMENT '密码',
	-- 姓名
	name varchar(100) COMMENT '姓名',
	PRIMARY KEY (id),
	UNIQUE (id),
	UNIQUE (username),
	UNIQUE (password)
);


-- 用户－角色关系表
CREATE TABLE t_user_role
(
	-- 用户编号
	user_id varchar(64) NOT NULL COMMENT '用户编号',
	-- 角色编号
	role_id varchar(64) NOT NULL COMMENT '角色编号',
	PRIMARY KEY (user_id, role_id)
) COMMENT = '用户－角色关系表';



/* Create Foreign Keys */

ALTER TABLE role_menu
	ADD FOREIGN KEY (menu_id)
	REFERENCES t_menu (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE role_menu
	ADD FOREIGN KEY (role_id)
	REFERENCES t_role (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE t_user_role
	ADD FOREIGN KEY (role_id)
	REFERENCES t_role (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE t_user_role
	ADD FOREIGN KEY (user_id)
	REFERENCES t_user (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



