SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS T_SCHEDULING_PERSONNEL;
DROP TABLE IF EXISTS T_PERSONNEL;
DROP TABLE IF EXISTS T_POST;
DROP TABLE IF EXISTS T_DEPARTMENT;
DROP TABLE IF EXISTS T_SCHEDULING;
DROP TABLE IF EXISTS T_SHIFT;




/* Create Tables */

-- 科室表
CREATE TABLE T_DEPARTMENT
(
	-- 编号
	id int NOT NULL AUTO_INCREMENT COMMENT '编号',
	-- 父级编号
	parent_id int COMMENT '父级编号',
	-- 名称
	name varchar(100) NOT NULL COMMENT '名称',
	-- 别名
	alias varchar(100) COMMENT '别名',
	-- 排序号
	sort decimal(10,0) COMMENT '排序号',
	-- 创建者
	create_by varchar(64) NOT NULL COMMENT '创建者',
	-- 创建时间
	create_date datetime NOT NULL COMMENT '创建时间',
	-- 更新者
	update_by varchar(64) NOT NULL COMMENT '更新者',
	-- 更新时间
	update_date datetime NOT NULL COMMENT '更新时间',
	-- 备注信息
	remarks varchar(255) COMMENT '备注信息',
	-- 删除标记（0：正常；1：删除）
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id),
	UNIQUE (id),
	UNIQUE (name)
) COMMENT = '科室表';


-- 排班人员表
CREATE TABLE T_PERSONNEL
(
	-- 编号
	id int NOT NULL AUTO_INCREMENT COMMENT '编号',
	-- 部门编编号
	department_id int NOT NULL COMMENT '部门编编号',
	-- 姓名
	name varchar(100) COMMENT '姓名',
	-- 展示颜色
	display_color varchar(64) COMMENT '展示颜色',
	-- 是否允许编辑。１＝是，０＝不是，默认0禁止编辑
	allow_editing char(1) DEFAULT '0' COMMENT '是否允许编辑。１＝是，０＝不是，默认0禁止编辑',
	-- 创建者
	create_by varchar(64) NOT NULL COMMENT '创建者',
	-- 创建时间
	create_date datetime NOT NULL COMMENT '创建时间',
	-- 更新者
	update_by varchar(64) NOT NULL COMMENT '更新者',
	-- 更新时间
	update_date datetime NOT NULL COMMENT '更新时间',
	-- 备注信息
	remarks varchar(255) COMMENT '备注信息',
	-- 删除标记（0：正常；1：删除）
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id),
	UNIQUE (id)
) COMMENT = '排班人员表';


-- 岗位表
CREATE TABLE T_POST
(
	-- 编号
	id int NOT NULL AUTO_INCREMENT COMMENT '编号',
	-- 部门编号
	department_id int NOT NULL COMMENT '部门编号',
	-- 名称
	name varchar(100) NOT NULL COMMENT '名称',
	-- 是否可用，开启/关闭。1表示开启，0表示关闭，默认是关闭
	enabled char(1) COMMENT '是否可用，开启/关闭。1表示开启，0表示关闭，默认是关闭',
	-- 排序号
	sort decimal(10,0) COMMENT '排序号',
	-- 创建者
	create_by varchar(64) NOT NULL COMMENT '创建者',
	-- 创建时间
	create_date datetime NOT NULL COMMENT '创建时间',
	-- 更新者
	update_by varchar(64) NOT NULL COMMENT '更新者',
	-- 更新时间
	update_date datetime NOT NULL COMMENT '更新时间',
	-- 备注信息
	remarks varchar(255) COMMENT '备注信息',
	-- 删除标记（0：正常；1：删除）
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id),
	UNIQUE (id),
	UNIQUE (department_id, name)
) COMMENT = '岗位表';


-- 排班明细表
CREATE TABLE T_SCHEDULING
(
	-- 编号
	id int NOT NULL AUTO_INCREMENT COMMENT '编号',
	-- 班次编号
	shift_id int NOT NULL COMMENT '班次编号',
	-- 日期
	ddatetime date COMMENT '日期',
	-- 是否已经激活，1表示是，0表示不是，默认不是
	enabled char(1) COMMENT '是否已经激活，1表示是，0表示不是，默认不是',
	-- 创建者
	create_by varchar(64) NOT NULL COMMENT '创建者',
	-- 创建时间
	create_date datetime NOT NULL COMMENT '创建时间',
	-- 更新者
	update_by varchar(64) NOT NULL COMMENT '更新者',
	-- 更新时间
	update_date datetime NOT NULL COMMENT '更新时间',
	-- 备注信息
	remarks varchar(255) COMMENT '备注信息',
	-- 删除标记（0：正常；1：删除）
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id),
	UNIQUE (id),
	UNIQUE (shift_id, ddatetime)
) COMMENT = '排班明细表';


CREATE TABLE T_SCHEDULING_PERSONNEL
(
	-- 参与排班人员编号
	personnel_id int NOT NULL COMMENT '参与排班人员编号',
	-- 排班明细编号
	scheduling_id int NOT NULL COMMENT '排班明细编号',
	PRIMARY KEY (personnel_id, scheduling_id)
);


-- 班次表
CREATE TABLE T_SHIFT
(
	-- 编号
	id int NOT NULL AUTO_INCREMENT COMMENT '编号',
	-- 名称
	name varchar(100) NOT NULL COMMENT '名称',
	-- 班次代码
	code varchar(64) COMMENT '班次代码',
	-- 开始时间
	start_time varchar(64) COMMENT '开始时间',
	-- 结束时间
	end_time varchar(64) COMMENT '结束时间',
	-- 交班开始时间
	shift_time_start varchar(64) COMMENT '交班开始时间',
	-- 交班结束时间
	shift_time_end varchar(64) COMMENT '交班结束时间',
	-- 接班开始时间
	takeover_time_start varchar(64) COMMENT '接班开始时间',
	-- 接班结束时间
	takeover_time_end varchar(64) COMMENT '接班结束时间',
	-- 排序号
	sort decimal(10,0) COMMENT '排序号',
	-- 是否可用，开启/关闭。1表示开启，0表示关闭，默认是关闭
	enabled char(1) COMMENT '是否可用，开启/关闭。1表示开启，0表示关闭，默认是关闭',
	-- 是否跨天。１＝是，　０＝不是。　默认0不是
	day_span char(1) DEFAULT '0' COMMENT '是否跨天。１＝是，　０＝不是。　默认0不是',
	-- 创建者
	create_by varchar(64) NOT NULL COMMENT '创建者',
	-- 创建时间
	create_date datetime NOT NULL COMMENT '创建时间',
	-- 更新者
	update_by varchar(64) NOT NULL COMMENT '更新者',
	-- 更新时间
	update_date datetime NOT NULL COMMENT '更新时间',
	-- 备注信息
	remarks varchar(255) COMMENT '备注信息',
	-- 删除标记（0：正常；1：删除）
	del_flag char(1) DEFAULT '0' NOT NULL COMMENT '删除标记（0：正常；1：删除）',
	PRIMARY KEY (id),
	UNIQUE (id)
) COMMENT = '班次表';



/* Create Foreign Keys */

ALTER TABLE T_PERSONNEL
	ADD FOREIGN KEY (department_id)
	REFERENCES T_DEPARTMENT (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE T_POST
	ADD FOREIGN KEY (department_id)
	REFERENCES T_DEPARTMENT (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE T_SCHEDULING_PERSONNEL
	ADD FOREIGN KEY (personnel_id)
	REFERENCES T_PERSONNEL (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE T_SCHEDULING_PERSONNEL
	ADD FOREIGN KEY (scheduling_id)
	REFERENCES T_SCHEDULING (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE T_SCHEDULING
	ADD FOREIGN KEY (shift_id)
	REFERENCES T_SHIFT (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



