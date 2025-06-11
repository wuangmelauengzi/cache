/*
 Navicat Premium Dump SQL

 Source Server         : 172.16.3.102
 Source Server Type    : PostgreSQL
 Source Server Version : 120022 (120022)
 Source Host           : 172.16.3.102:5420
 Source Catalog        : dongying
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 120022 (120022)
 File Encoding         : 65001

 Date: 11/06/2025 09:37:23
*/


-- ----------------------------
-- Sequence structure for sys_login_info_login_info_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sys_login_info_login_info_id_seq";
CREATE SEQUENCE "public"."sys_login_info_login_info_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for audit_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."audit_record";
CREATE TABLE "public"."audit_record" (
  "audit_id" numeric(1000,53) NOT NULL,
  "pass_id" numeric(1000,53),
  "order_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obu_id" varchar(50) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_name" varchar(20) COLLATE "pg_catalog"."default",
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "in_pass_time" timestamp(6),
  "out_pass_time" timestamp(6),
  "car_type" char(1) COLLATE "pg_catalog"."default",
  "first_audit_status" numeric(1000,53),
  "submit_user_id" numeric(1000,53),
  "submit_user_name" varchar(30) COLLATE "pg_catalog"."default",
  "first_agree_user_id" numeric(1000,53),
  "first_agree_user_name" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "during_time" numeric(1000,53),
  "second_audit_status" numeric(1000,53),
  "second_agree_user_id" numeric(1000,53),
  "second_agree_user_name" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."audit_record"."audit_id" IS '主键';
COMMENT ON COLUMN "public"."audit_record"."pass_id" IS '通行记录id';
COMMENT ON COLUMN "public"."audit_record"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."audit_record"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."audit_record"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."audit_record"."licence_no" IS '驾驶证';
COMMENT ON COLUMN "public"."audit_record"."driver_name" IS '驾驶员姓名';
COMMENT ON COLUMN "public"."audit_record"."zone_id" IS '区域';
COMMENT ON COLUMN "public"."audit_record"."in_pass_time" IS '入场时间';
COMMENT ON COLUMN "public"."audit_record"."out_pass_time" IS '出场时间';
COMMENT ON COLUMN "public"."audit_record"."car_type" IS '车辆类型';
COMMENT ON COLUMN "public"."audit_record"."first_audit_status" IS '审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN "public"."audit_record"."submit_user_id" IS '提交人id';
COMMENT ON COLUMN "public"."audit_record"."submit_user_name" IS '提交人名称';
COMMENT ON COLUMN "public"."audit_record"."first_agree_user_id" IS '审批人id';
COMMENT ON COLUMN "public"."audit_record"."first_agree_user_name" IS '审批人名称';
COMMENT ON COLUMN "public"."audit_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."audit_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."audit_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."audit_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."audit_record"."remark" IS '备注';
COMMENT ON COLUMN "public"."audit_record"."during_time" IS '持续时长 单位：分';
COMMENT ON COLUMN "public"."audit_record"."second_audit_status" IS '一级审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN "public"."audit_record"."second_agree_user_id" IS '审批人id';
COMMENT ON COLUMN "public"."audit_record"."second_agree_user_name" IS '审批人名称';
COMMENT ON TABLE "public"."audit_record" IS '审核记录表';

-- ----------------------------
-- Table structure for audit_record_copy1
-- ----------------------------
DROP TABLE IF EXISTS "public"."audit_record_copy1";
CREATE TABLE "public"."audit_record_copy1" (
  "audit_id" numeric(1000,53) NOT NULL,
  "pass_id" numeric(1000,53),
  "order_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "obu_id" varchar(50) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_name" varchar(20) COLLATE "pg_catalog"."default",
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "in_pass_time" timestamp(6),
  "out_pass_time" timestamp(6),
  "car_type" char(1) COLLATE "pg_catalog"."default",
  "first_audit_status" numeric(1000,53),
  "submit_user_id" numeric(1000,53),
  "submit_user_name" varchar(30) COLLATE "pg_catalog"."default",
  "first_agree_user_id" numeric(1000,53),
  "first_agree_user_name" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "during_time" numeric(1000,53),
  "second_audit_status" numeric(1000,53),
  "second_agree_user_id" numeric(1000,53),
  "second_agree_user_name" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."audit_record_copy1"."audit_id" IS '主键';
COMMENT ON COLUMN "public"."audit_record_copy1"."pass_id" IS '通行记录id';
COMMENT ON COLUMN "public"."audit_record_copy1"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."audit_record_copy1"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."audit_record_copy1"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."audit_record_copy1"."licence_no" IS '驾驶证';
COMMENT ON COLUMN "public"."audit_record_copy1"."driver_name" IS '驾驶员姓名';
COMMENT ON COLUMN "public"."audit_record_copy1"."zone_id" IS '区域';
COMMENT ON COLUMN "public"."audit_record_copy1"."in_pass_time" IS '入场时间';
COMMENT ON COLUMN "public"."audit_record_copy1"."out_pass_time" IS '出场时间';
COMMENT ON COLUMN "public"."audit_record_copy1"."car_type" IS '车辆类型';
COMMENT ON COLUMN "public"."audit_record_copy1"."first_audit_status" IS '审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN "public"."audit_record_copy1"."submit_user_id" IS '提交人id';
COMMENT ON COLUMN "public"."audit_record_copy1"."submit_user_name" IS '提交人名称';
COMMENT ON COLUMN "public"."audit_record_copy1"."first_agree_user_id" IS '审批人id';
COMMENT ON COLUMN "public"."audit_record_copy1"."first_agree_user_name" IS '审批人名称';
COMMENT ON COLUMN "public"."audit_record_copy1"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."audit_record_copy1"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."audit_record_copy1"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."audit_record_copy1"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."audit_record_copy1"."remark" IS '备注';
COMMENT ON COLUMN "public"."audit_record_copy1"."during_time" IS '持续时长 单位：分';
COMMENT ON COLUMN "public"."audit_record_copy1"."second_audit_status" IS '一级审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN "public"."audit_record_copy1"."second_agree_user_id" IS '审批人id';
COMMENT ON COLUMN "public"."audit_record_copy1"."second_agree_user_name" IS '审批人名称';
COMMENT ON TABLE "public"."audit_record_copy1" IS '审核记录表';

-- ----------------------------
-- Table structure for axle_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."axle_record";
CREATE TABLE "public"."axle_record" (
  "obu_id" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "pass_time" timestamp(6) NOT NULL,
  "mac_id" varchar(20) COLLATE "pg_catalog"."default",
  "local_no" varchar(20) COLLATE "pg_catalog"."default",
  "axis_num" numeric(1000,53) NOT NULL,
  "remark" varchar(100) COLLATE "pg_catalog"."default",
  "build_time" timestamp(6) NOT NULL,
  "zone_id" varchar(30) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."axle_record"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."axle_record"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."axle_record"."pass_time" IS '通行时间';
COMMENT ON COLUMN "public"."axle_record"."mac_id" IS '设备id号';
COMMENT ON COLUMN "public"."axle_record"."local_no" IS '位置号，表示哪个点采集的';
COMMENT ON COLUMN "public"."axle_record"."axis_num" IS '车轴数';
COMMENT ON COLUMN "public"."axle_record"."remark" IS '备注';
COMMENT ON COLUMN "public"."axle_record"."build_time" IS '插入时间。';
COMMENT ON COLUMN "public"."axle_record"."zone_id" IS '存在区域的id号，空为联络路，根据pointno定位';
COMMENT ON TABLE "public"."axle_record" IS '(新)车轴数表';

-- ----------------------------
-- Table structure for booking_led
-- ----------------------------
DROP TABLE IF EXISTS "public"."booking_led";
CREATE TABLE "public"."booking_led" (
  "ulid" numeric(1000,53) NOT NULL,
  "car_type" varchar(10) COLLATE "pg_catalog"."default",
  "scene" varchar(10) COLLATE "pg_catalog"."default",
  "font_color" char(1) COLLATE "pg_catalog"."default",
  "first_line_content" char(1) COLLATE "pg_catalog"."default",
  "first_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "first_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "first_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "second_line_content" char(1) COLLATE "pg_catalog"."default",
  "second_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "second_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "second_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "third_line_content" char(1) COLLATE "pg_catalog"."default",
  "third_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "third_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "third_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_content" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "fourth_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "voice_type" char(1) COLLATE "pg_catalog"."default",
  "voice_content" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."booking_led"."ulid" IS '车道编号';
COMMENT ON COLUMN "public"."booking_led"."car_type" IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN "public"."booking_led"."scene" IS '应用场景';
COMMENT ON COLUMN "public"."booking_led"."font_color" IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN "public"."booking_led"."first_line_content" IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."booking_led"."first_line_msg" IS '第一行显示信息';
COMMENT ON COLUMN "public"."booking_led"."first_line_show_type" IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."booking_led"."first_line_other_msg" IS '第一行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."booking_led"."second_line_content" IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."booking_led"."second_line_msg" IS '第二行显示信息';
COMMENT ON COLUMN "public"."booking_led"."second_line_show_type" IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."booking_led"."second_line_other_msg" IS '第二行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."booking_led"."third_line_content" IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."booking_led"."third_line_msg" IS '第三行显示信息';
COMMENT ON COLUMN "public"."booking_led"."third_line_show_type" IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."booking_led"."third_line_other_msg" IS '第三行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."booking_led"."fourth_line_content" IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."booking_led"."fourth_line_msg" IS '第四行显示信息';
COMMENT ON COLUMN "public"."booking_led"."fourth_line_show_type" IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."booking_led"."fourth_line_other_msg" IS '第四行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."booking_led"."voice_type" IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN "public"."booking_led"."voice_content" IS '声音内容';
COMMENT ON TABLE "public"."booking_led" IS '车道led配置表';

-- ----------------------------
-- Table structure for booking_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."booking_record";
CREATE TABLE "public"."booking_record" (
  "order_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_id" varchar(50) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "trans_time" timestamp(6),
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "obu_time" timestamp(6),
  "sign" numeric(1000,53),
  "guid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker_start_time" timestamp(6),
  "sticker_end_time" timestamp(6),
  "car_type" varchar(50) COLLATE "pg_catalog"."default",
  "car_color" varchar(10) COLLATE "pg_catalog"."default",
  "comp" varchar(60) COLLATE "pg_catalog"."default",
  "obu_status" numeric(1000,53),
  "axle_number" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "update_flag" numeric(1000,53),
  "booking_type" numeric(1000,53),
  "booking_company" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."booking_record"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."booking_record"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."booking_record"."zone_id" IS '测试区域';
COMMENT ON COLUMN "public"."booking_record"."licence_no" IS '驾驶证编号';
COMMENT ON COLUMN "public"."booking_record"."start_time" IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN "public"."booking_record"."end_time" IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN "public"."booking_record"."trans_time" IS '获得订单时间';
COMMENT ON COLUMN "public"."booking_record"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."booking_record"."obu_time" IS '绑定obu时间';
COMMENT ON COLUMN "public"."booking_record"."sign" IS '标识，0-仅接受订单，1-0bu已记录，2-下发完成';
COMMENT ON COLUMN "public"."booking_record"."guid" IS '数据唯一编号';
COMMENT ON COLUMN "public"."booking_record"."sticker_start_time" IS '车辆有效期开始时间';
COMMENT ON COLUMN "public"."booking_record"."sticker_end_time" IS '车辆有效期结束时间';
COMMENT ON COLUMN "public"."booking_record"."car_type" IS '车型';
COMMENT ON COLUMN "public"."booking_record"."car_color" IS '车身颜色';
COMMENT ON COLUMN "public"."booking_record"."comp" IS '所属厂家';
COMMENT ON COLUMN "public"."booking_record"."obu_status" IS 'obu状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN "public"."booking_record"."axle_number" IS '车轴数';
COMMENT ON COLUMN "public"."booking_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."booking_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."booking_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."booking_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."booking_record"."remark" IS '备注';
COMMENT ON COLUMN "public"."booking_record"."update_flag" IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收ic卡待同步）';
COMMENT ON COLUMN "public"."booking_record"."booking_type" IS '包场用途（1：试验；2：活动）';
COMMENT ON COLUMN "public"."booking_record"."booking_company" IS '包场单位';
COMMENT ON TABLE "public"."booking_record" IS '包场订单表';

-- ----------------------------
-- Table structure for car_pass
-- ----------------------------
DROP TABLE IF EXISTS "public"."car_pass";
CREATE TABLE "public"."car_pass" (
  "in_guid" varchar(50) COLLATE "pg_catalog"."default",
  "order_id" varchar(50) COLLATE "pg_catalog"."default",
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "in_pass_time" timestamp(6),
  "in_ulid" numeric(1000,53),
  "in_pass_type" char(1) COLLATE "pg_catalog"."default",
  "in_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "out_pass_time" timestamp(6),
  "out_ulid" numeric(1000,53),
  "out_pass_type" char(1) COLLATE "pg_catalog"."default",
  "out_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "during_time" numeric(1000,53),
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "push_status" char(1) COLLATE "pg_catalog"."default",
  "car_type" char(1) COLLATE "pg_catalog"."default",
  "axle_num" numeric(1000,53),
  "order_axle" numeric(1000,53),
  "distance" numeric(1000,53),
  "high_speed" numeric(1000,53),
  "axle_flag" numeric(1000,53),
  "axle_image" varchar(200) COLLATE "pg_catalog"."default",
  "in_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "out_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "in_lane_function" char(1) COLLATE "pg_catalog"."default",
  "out_lane_function" char(1) COLLATE "pg_catalog"."default",
  "card_id" varchar(20) COLLATE "pg_catalog"."default",
  "ic_card_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_name" varchar(20) COLLATE "pg_catalog"."default",
  "axis_total_weigh" numeric(1000,53),
  "out_guid" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "pass_id" numeric(1000,53) NOT NULL,
  "axis_weigh" numeric(1000,53),
  "weigh_image" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."car_pass"."in_guid" IS '入场guid';
COMMENT ON COLUMN "public"."car_pass"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."car_pass"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."car_pass"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."car_pass"."licence_no" IS '驾驶证号';
COMMENT ON COLUMN "public"."car_pass"."in_pass_time" IS '入场时间';
COMMENT ON COLUMN "public"."car_pass"."in_ulid" IS '入场车道';
COMMENT ON COLUMN "public"."car_pass"."in_pass_type" IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN "public"."car_pass"."in_image_path" IS '入场图片路径';
COMMENT ON COLUMN "public"."car_pass"."out_pass_time" IS '出场时间';
COMMENT ON COLUMN "public"."car_pass"."out_ulid" IS '出场车道ulid';
COMMENT ON COLUMN "public"."car_pass"."out_pass_type" IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN "public"."car_pass"."out_image_path" IS '出场图片路径';
COMMENT ON COLUMN "public"."car_pass"."during_time" IS '持续时长 单位：秒';
COMMENT ON COLUMN "public"."car_pass"."zone_id" IS '区域id';
COMMENT ON COLUMN "public"."car_pass"."push_status" IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN "public"."car_pass"."car_type" IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN "public"."car_pass"."axle_num" IS '车轴数';
COMMENT ON COLUMN "public"."car_pass"."order_axle" IS '订单车轴数';
COMMENT ON COLUMN "public"."car_pass"."distance" IS '距离';
COMMENT ON COLUMN "public"."car_pass"."high_speed" IS '速度';
COMMENT ON COLUMN "public"."car_pass"."axle_flag" IS '车轴类型';
COMMENT ON COLUMN "public"."car_pass"."axle_image" IS '车轴图片';
COMMENT ON COLUMN "public"."car_pass"."in_lane_name" IS '入场车道名称';
COMMENT ON COLUMN "public"."car_pass"."out_lane_name" IS '出场车道名称';
COMMENT ON COLUMN "public"."car_pass"."in_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass"."out_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass"."card_id" IS '身份证号g2';
COMMENT ON COLUMN "public"."car_pass"."ic_card_no" IS 'ic卡号g2';
COMMENT ON COLUMN "public"."car_pass"."driver_name" IS '驾驶员姓名g2';
COMMENT ON COLUMN "public"."car_pass"."axis_total_weigh" IS '称重（总重）';
COMMENT ON COLUMN "public"."car_pass"."out_guid" IS '出场guid';
COMMENT ON COLUMN "public"."car_pass"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."car_pass"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."car_pass"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."car_pass"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."car_pass"."remark" IS '备注';
COMMENT ON COLUMN "public"."car_pass"."pass_id" IS '主键id';
COMMENT ON COLUMN "public"."car_pass"."axis_weigh" IS '称重轴数';
COMMENT ON COLUMN "public"."car_pass"."weigh_image" IS '称重图片';
COMMENT ON TABLE "public"."car_pass" IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for car_pass20241202
-- ----------------------------
DROP TABLE IF EXISTS "public"."car_pass20241202";
CREATE TABLE "public"."car_pass20241202" (
  "in_guid" varchar(50) COLLATE "pg_catalog"."default",
  "order_id" varchar(50) COLLATE "pg_catalog"."default",
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "in_pass_time" timestamp(6),
  "in_ulid" numeric(1000,53),
  "in_pass_type" char(1) COLLATE "pg_catalog"."default",
  "in_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "out_pass_time" timestamp(6),
  "out_ulid" numeric(1000,53),
  "out_pass_type" char(1) COLLATE "pg_catalog"."default",
  "out_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "during_time" numeric(1000,53),
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "push_status" char(1) COLLATE "pg_catalog"."default",
  "car_type" char(1) COLLATE "pg_catalog"."default",
  "axle_num" numeric(1000,53),
  "order_axle" numeric(1000,53),
  "distance" numeric(1000,53),
  "high_speed" numeric(1000,53),
  "axle_flag" numeric(1000,53),
  "axle_image" varchar(200) COLLATE "pg_catalog"."default",
  "in_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "out_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "in_lane_function" char(1) COLLATE "pg_catalog"."default",
  "out_lane_function" char(1) COLLATE "pg_catalog"."default",
  "card_id" varchar(20) COLLATE "pg_catalog"."default",
  "ic_card_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_name" varchar(20) COLLATE "pg_catalog"."default",
  "axis_total_weigh" numeric(1000,53),
  "out_guid" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "pass_id" numeric(1000,53) NOT NULL,
  "axis_weigh" numeric(1000,53),
  "weigh_image" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."car_pass20241202"."in_guid" IS '入场guid';
COMMENT ON COLUMN "public"."car_pass20241202"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."car_pass20241202"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."car_pass20241202"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."car_pass20241202"."licence_no" IS '驾驶证号';
COMMENT ON COLUMN "public"."car_pass20241202"."in_pass_time" IS '入场时间';
COMMENT ON COLUMN "public"."car_pass20241202"."in_ulid" IS '入场车道';
COMMENT ON COLUMN "public"."car_pass20241202"."in_pass_type" IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN "public"."car_pass20241202"."in_image_path" IS '入场图片路径';
COMMENT ON COLUMN "public"."car_pass20241202"."out_pass_time" IS '出场时间';
COMMENT ON COLUMN "public"."car_pass20241202"."out_ulid" IS '出场车道ulid';
COMMENT ON COLUMN "public"."car_pass20241202"."out_pass_type" IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN "public"."car_pass20241202"."out_image_path" IS '出场图片路径';
COMMENT ON COLUMN "public"."car_pass20241202"."during_time" IS '持续时长 单位：秒';
COMMENT ON COLUMN "public"."car_pass20241202"."zone_id" IS '区域id';
COMMENT ON COLUMN "public"."car_pass20241202"."push_status" IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN "public"."car_pass20241202"."car_type" IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN "public"."car_pass20241202"."axle_num" IS '车轴数';
COMMENT ON COLUMN "public"."car_pass20241202"."order_axle" IS '订单车轴数';
COMMENT ON COLUMN "public"."car_pass20241202"."distance" IS '距离';
COMMENT ON COLUMN "public"."car_pass20241202"."high_speed" IS '速度';
COMMENT ON COLUMN "public"."car_pass20241202"."axle_flag" IS '车轴类型';
COMMENT ON COLUMN "public"."car_pass20241202"."axle_image" IS '车轴图片';
COMMENT ON COLUMN "public"."car_pass20241202"."in_lane_name" IS '入场车道名称';
COMMENT ON COLUMN "public"."car_pass20241202"."out_lane_name" IS '出场车道名称';
COMMENT ON COLUMN "public"."car_pass20241202"."in_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass20241202"."out_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass20241202"."card_id" IS '身份证号g2';
COMMENT ON COLUMN "public"."car_pass20241202"."ic_card_no" IS 'ic卡号g2';
COMMENT ON COLUMN "public"."car_pass20241202"."driver_name" IS '驾驶员姓名g2';
COMMENT ON COLUMN "public"."car_pass20241202"."axis_total_weigh" IS '称重（总重）';
COMMENT ON COLUMN "public"."car_pass20241202"."out_guid" IS '出场guid';
COMMENT ON COLUMN "public"."car_pass20241202"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."car_pass20241202"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."car_pass20241202"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."car_pass20241202"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."car_pass20241202"."remark" IS '备注';
COMMENT ON COLUMN "public"."car_pass20241202"."pass_id" IS '主键id';
COMMENT ON COLUMN "public"."car_pass20241202"."axis_weigh" IS '称重轴数';
COMMENT ON COLUMN "public"."car_pass20241202"."weigh_image" IS '称重图片';
COMMENT ON TABLE "public"."car_pass20241202" IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for car_pass_2024-10-29_backup
-- ----------------------------
DROP TABLE IF EXISTS "public"."car_pass_2024-10-29_backup";
CREATE TABLE "public"."car_pass_2024-10-29_backup" (
  "in_guid" varchar(50) COLLATE "pg_catalog"."default",
  "order_id" varchar(50) COLLATE "pg_catalog"."default",
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "in_pass_time" timestamp(6),
  "in_ulid" numeric(1000,53),
  "in_pass_type" char(1) COLLATE "pg_catalog"."default",
  "in_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "out_pass_time" timestamp(6),
  "out_ulid" numeric(1000,53),
  "out_pass_type" char(1) COLLATE "pg_catalog"."default",
  "out_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "during_time" numeric(1000,53),
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "push_status" char(1) COLLATE "pg_catalog"."default",
  "car_type" char(1) COLLATE "pg_catalog"."default",
  "axle_num" numeric(1000,53),
  "order_axle" numeric(1000,53),
  "distance" numeric(1000,53),
  "high_speed" numeric(1000,53),
  "axle_flag" numeric(1000,53),
  "axle_image" varchar(200) COLLATE "pg_catalog"."default",
  "in_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "out_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "in_lane_function" char(1) COLLATE "pg_catalog"."default",
  "out_lane_function" char(1) COLLATE "pg_catalog"."default",
  "card_id" varchar(20) COLLATE "pg_catalog"."default",
  "ic_card_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_name" varchar(20) COLLATE "pg_catalog"."default",
  "axis_total_weigh" numeric(1000,53),
  "out_guid" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "pass_id" numeric(1000,53) NOT NULL,
  "axis_weigh" numeric(1000,53),
  "weigh_image" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_guid" IS '入场guid';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."licence_no" IS '驾驶证号';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_pass_time" IS '入场时间';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_ulid" IS '入场车道';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_pass_type" IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_image_path" IS '入场图片路径';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_pass_time" IS '出场时间';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_ulid" IS '出场车道ulid';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_pass_type" IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_image_path" IS '出场图片路径';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."during_time" IS '持续时长 单位：秒';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."zone_id" IS '区域id';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."push_status" IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."car_type" IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."axle_num" IS '车轴数';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."order_axle" IS '订单车轴数';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."distance" IS '距离';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."high_speed" IS '速度';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."axle_flag" IS '车轴类型';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."axle_image" IS '车轴图片';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_lane_name" IS '入场车道名称';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_lane_name" IS '出场车道名称';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."in_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."card_id" IS '身份证号g2';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."ic_card_no" IS 'ic卡号g2';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."driver_name" IS '驾驶员姓名g2';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."axis_total_weigh" IS '称重（总重）';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."out_guid" IS '出场guid';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."remark" IS '备注';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."pass_id" IS '主键id';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."axis_weigh" IS '称重轴数';
COMMENT ON COLUMN "public"."car_pass_2024-10-29_backup"."weigh_image" IS '称重图片';
COMMENT ON TABLE "public"."car_pass_2024-10-29_backup" IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for car_pass_20250414
-- ----------------------------
DROP TABLE IF EXISTS "public"."car_pass_20250414";
CREATE TABLE "public"."car_pass_20250414" (
  "in_guid" varchar(50) COLLATE "pg_catalog"."default",
  "order_id" varchar(50) COLLATE "pg_catalog"."default",
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "in_pass_time" timestamp(6),
  "in_ulid" numeric(1000,53),
  "in_pass_type" char(1) COLLATE "pg_catalog"."default",
  "in_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "out_pass_time" timestamp(6),
  "out_ulid" numeric(1000,53),
  "out_pass_type" char(1) COLLATE "pg_catalog"."default",
  "out_image_path" varchar(200) COLLATE "pg_catalog"."default",
  "during_time" numeric(1000,53),
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "push_status" char(1) COLLATE "pg_catalog"."default",
  "car_type" char(1) COLLATE "pg_catalog"."default",
  "axle_num" numeric(1000,53),
  "order_axle" numeric(1000,53),
  "distance" numeric(1000,53),
  "high_speed" numeric(1000,53),
  "axle_flag" numeric(1000,53),
  "axle_image" varchar(200) COLLATE "pg_catalog"."default",
  "in_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "out_lane_name" varchar(50) COLLATE "pg_catalog"."default",
  "in_lane_function" char(1) COLLATE "pg_catalog"."default",
  "out_lane_function" char(1) COLLATE "pg_catalog"."default",
  "card_id" varchar(20) COLLATE "pg_catalog"."default",
  "ic_card_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_name" varchar(20) COLLATE "pg_catalog"."default",
  "axis_total_weigh" numeric(1000,53),
  "out_guid" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "pass_id" numeric(1000,53) NOT NULL,
  "axis_weigh" numeric(1000,53),
  "weigh_image" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."car_pass_20250414"."in_guid" IS '入场guid';
COMMENT ON COLUMN "public"."car_pass_20250414"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."car_pass_20250414"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."car_pass_20250414"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."car_pass_20250414"."licence_no" IS '驾驶证号';
COMMENT ON COLUMN "public"."car_pass_20250414"."in_pass_time" IS '入场时间';
COMMENT ON COLUMN "public"."car_pass_20250414"."in_ulid" IS '入场车道';
COMMENT ON COLUMN "public"."car_pass_20250414"."in_pass_type" IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN "public"."car_pass_20250414"."in_image_path" IS '入场图片路径';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_pass_time" IS '出场时间';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_ulid" IS '出场车道ulid';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_pass_type" IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_image_path" IS '出场图片路径';
COMMENT ON COLUMN "public"."car_pass_20250414"."during_time" IS '持续时长 单位：秒';
COMMENT ON COLUMN "public"."car_pass_20250414"."zone_id" IS '区域id';
COMMENT ON COLUMN "public"."car_pass_20250414"."push_status" IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN "public"."car_pass_20250414"."car_type" IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN "public"."car_pass_20250414"."axle_num" IS '车轴数';
COMMENT ON COLUMN "public"."car_pass_20250414"."order_axle" IS '订单车轴数';
COMMENT ON COLUMN "public"."car_pass_20250414"."distance" IS '距离';
COMMENT ON COLUMN "public"."car_pass_20250414"."high_speed" IS '速度';
COMMENT ON COLUMN "public"."car_pass_20250414"."axle_flag" IS '车轴类型';
COMMENT ON COLUMN "public"."car_pass_20250414"."axle_image" IS '车轴图片';
COMMENT ON COLUMN "public"."car_pass_20250414"."in_lane_name" IS '入场车道名称';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_lane_name" IS '出场车道名称';
COMMENT ON COLUMN "public"."car_pass_20250414"."in_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."car_pass_20250414"."card_id" IS '身份证号g2';
COMMENT ON COLUMN "public"."car_pass_20250414"."ic_card_no" IS 'ic卡号g2';
COMMENT ON COLUMN "public"."car_pass_20250414"."driver_name" IS '驾驶员姓名g2';
COMMENT ON COLUMN "public"."car_pass_20250414"."axis_total_weigh" IS '称重（总重）';
COMMENT ON COLUMN "public"."car_pass_20250414"."out_guid" IS '出场guid';
COMMENT ON COLUMN "public"."car_pass_20250414"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."car_pass_20250414"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."car_pass_20250414"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."car_pass_20250414"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."car_pass_20250414"."remark" IS '备注';
COMMENT ON COLUMN "public"."car_pass_20250414"."pass_id" IS '主键id';
COMMENT ON COLUMN "public"."car_pass_20250414"."axis_weigh" IS '称重轴数';
COMMENT ON COLUMN "public"."car_pass_20250414"."weigh_image" IS '称重图片';
COMMENT ON TABLE "public"."car_pass_20250414" IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for device_control
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_control";
CREATE TABLE "public"."device_control" (
  "ip" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "device_type" numeric(1000,53),
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."device_control"."ip" IS '设备ip';
COMMENT ON COLUMN "public"."device_control"."device_type" IS '设备类型：0:相机 1:天线 2:地磅 3:全景相机 4:led';
COMMENT ON COLUMN "public"."device_control"."device_name" IS '设备名称（报表维护）';

-- ----------------------------
-- Table structure for device_control_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_control_record";
CREATE TABLE "public"."device_control_record" (
  "ip" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "device_type" numeric(1000,53),
  "device_status" numeric(1000,53),
  "upload_time" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."device_control_record"."ip" IS '设备ip';
COMMENT ON COLUMN "public"."device_control_record"."device_type" IS '设备类型：0:相机 1:天线 2:地磅 3:全景相机 4:led';
COMMENT ON COLUMN "public"."device_control_record"."device_status" IS '设备状态： 0:在线 1:离线';
COMMENT ON COLUMN "public"."device_control_record"."upload_time" IS '上报时间';

-- ----------------------------
-- Table structure for device_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."device_record";
CREATE TABLE "public"."device_record" (
  "record_id" numeric(1000,53) NOT NULL,
  "zone_id" varchar(30) COLLATE "pg_catalog"."default",
  "zone_name" varchar(255) COLLATE "pg_catalog"."default",
  "time" timestamp(6),
  "event" varchar(255) COLLATE "pg_catalog"."default",
  "status" char(1) COLLATE "pg_catalog"."default",
  "mac_id" varchar(50) COLLATE "pg_catalog"."default",
  "mac_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."device_record"."record_id" IS '主键';
COMMENT ON COLUMN "public"."device_record"."zone_id" IS '区域编号';
COMMENT ON COLUMN "public"."device_record"."zone_name" IS '区域名称';
COMMENT ON COLUMN "public"."device_record"."time" IS '巡检时间';
COMMENT ON COLUMN "public"."device_record"."event" IS '事件内容';
COMMENT ON COLUMN "public"."device_record"."status" IS '状态0正常1异常';
COMMENT ON COLUMN "public"."device_record"."mac_id" IS '设备id';
COMMENT ON COLUMN "public"."device_record"."mac_name" IS '设备名称';
COMMENT ON COLUMN "public"."device_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."device_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."device_record"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."device_record"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."device_record"."remark" IS '备注';
COMMENT ON TABLE "public"."device_record" IS '设备巡检记录表';

-- ----------------------------
-- Table structure for driver_deduct_score
-- ----------------------------
DROP TABLE IF EXISTS "public"."driver_deduct_score";
CREATE TABLE "public"."driver_deduct_score" (
  "deduct_id" numeric(1000,53) NOT NULL,
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "deduct" numeric(1000,53),
  "current_score" numeric(1000,53),
  "original_score" numeric(1000,53),
  "reason" varchar(200) COLLATE "pg_catalog"."default",
  "operate_time" timestamp(6),
  "upload" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."driver_deduct_score"."deduct_id" IS 'id';
COMMENT ON COLUMN "public"."driver_deduct_score"."licence_no" IS '驾驶证号';
COMMENT ON COLUMN "public"."driver_deduct_score"."deduct" IS '扣分，-1表示扣1分,1标识增1分';
COMMENT ON COLUMN "public"."driver_deduct_score"."current_score" IS '剩余得分';
COMMENT ON COLUMN "public"."driver_deduct_score"."original_score" IS '原始得分';
COMMENT ON COLUMN "public"."driver_deduct_score"."reason" IS '扣分原因';
COMMENT ON COLUMN "public"."driver_deduct_score"."operate_time" IS '操作时间';
COMMENT ON COLUMN "public"."driver_deduct_score"."upload" IS '上传标识，0-未上传，1-已上传';
COMMENT ON COLUMN "public"."driver_deduct_score"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."driver_deduct_score"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."driver_deduct_score"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."driver_deduct_score"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."driver_deduct_score"."remark" IS '备注';
COMMENT ON TABLE "public"."driver_deduct_score" IS '驾驶员扣分记录';

-- ----------------------------
-- Table structure for driver_level
-- ----------------------------
DROP TABLE IF EXISTS "public"."driver_level";
CREATE TABLE "public"."driver_level" (
  "driver_level" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_ids" varchar(1024) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."driver_level"."driver_level" IS '驾驶员等级';
COMMENT ON COLUMN "public"."driver_level"."zone_ids" IS '允许通行的区域号(以；分割)';
COMMENT ON COLUMN "public"."driver_level"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."driver_level"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."driver_level"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."driver_level"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."driver_level"."remark" IS '备注';
COMMENT ON TABLE "public"."driver_level" IS '驾驶员等级表';

-- ----------------------------
-- Table structure for driver_white
-- ----------------------------
DROP TABLE IF EXISTS "public"."driver_white";
CREATE TABLE "public"."driver_white" (
  "driver_id" numeric(1000,53) NOT NULL,
  "driver_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "driver_level" varchar(100) COLLATE "pg_catalog"."default",
  "driver_expired_time" timestamp(6),
  "driver_score" numeric(1000,53),
  "driver_licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "driver_type" char(1) COLLATE "pg_catalog"."default",
  "driver_start_time" timestamp(6),
  "driver_end_time" timestamp(6),
  "insurance_expired_time" timestamp(6),
  "card_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "ic_card_no" varchar(20) COLLATE "pg_catalog"."default",
  "ic_card_type" char(1) COLLATE "pg_catalog"."default",
  "ic_card_id" varchar(20) COLLATE "pg_catalog"."default",
  "company" varchar(20) COLLATE "pg_catalog"."default",
  "operate_status" numeric(1000,53),
  "photo_url" varchar(300) COLLATE "pg_catalog"."default",
  "has_photo" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "update_flag" numeric(1000,53),
  "delete_flag" numeric(1000,53),
  "face_flag" numeric(1000,53)
)
;
COMMENT ON COLUMN "public"."driver_white"."driver_id" IS '主键';
COMMENT ON COLUMN "public"."driver_white"."driver_name" IS '驾驶员姓名';
COMMENT ON COLUMN "public"."driver_white"."driver_level" IS '驾驶证等级';
COMMENT ON COLUMN "public"."driver_white"."driver_expired_time" IS '驾驶证有效期';
COMMENT ON COLUMN "public"."driver_white"."driver_score" IS '驾驶员分数';
COMMENT ON COLUMN "public"."driver_white"."driver_licence_no" IS '驾驶证号';
COMMENT ON COLUMN "public"."driver_white"."driver_type" IS '驾驶员类型，0-试验人员，1-驾驶员';
COMMENT ON COLUMN "public"."driver_white"."driver_start_time" IS '驾驶员有效期开始时间';
COMMENT ON COLUMN "public"."driver_white"."driver_end_time" IS '驾驶员有效期结束时间';
COMMENT ON COLUMN "public"."driver_white"."insurance_expired_time" IS '驾驶员保险有效期';
COMMENT ON COLUMN "public"."driver_white"."card_id" IS '身份证号';
COMMENT ON COLUMN "public"."driver_white"."ic_card_no" IS 'ic卡卡号';
COMMENT ON COLUMN "public"."driver_white"."ic_card_type" IS 'ic卡类型。枚举类型：0-长期，1-临时，2-其它';
COMMENT ON COLUMN "public"."driver_white"."ic_card_id" IS '人卡编号';
COMMENT ON COLUMN "public"."driver_white"."company" IS '所属厂家';
COMMENT ON COLUMN "public"."driver_white"."operate_status" IS '操作结果状态（0：待下发，1：待删除  2：下发成功  3：下发失败 4：下发异常  5：删除成功 6：删除失败  7：删除异常）';
COMMENT ON COLUMN "public"."driver_white"."photo_url" IS '图片路径';
COMMENT ON COLUMN "public"."driver_white"."has_photo" IS '0: 没有图片 1：有图片';
COMMENT ON COLUMN "public"."driver_white"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."driver_white"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."driver_white"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."driver_white"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."driver_white"."remark" IS '备注';
COMMENT ON COLUMN "public"."driver_white"."update_flag" IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收ic卡待同步）';
COMMENT ON COLUMN "public"."driver_white"."delete_flag" IS '是否删除（0-未删除 1-已删除）';
COMMENT ON COLUMN "public"."driver_white"."face_flag" IS '人脸同步（0-不需要同步，1-同步新增或者修改，2-删除人脸）';
COMMENT ON TABLE "public"."driver_white" IS '驾驶员白名单';

-- ----------------------------
-- Table structure for exception_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."exception_record";
CREATE TABLE "public"."exception_record" (
  "zone_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "ulid" numeric(1000,53),
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "ic_card_no" varchar(50) COLLATE "pg_catalog"."default",
  "request_time" timestamp(6),
  "content" varchar(200) COLLATE "pg_catalog"."default",
  "remark" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."exception_record"."zone_id" IS '区域id';
COMMENT ON COLUMN "public"."exception_record"."ulid" IS '车道id';
COMMENT ON COLUMN "public"."exception_record"."obu_id" IS 'obu';
COMMENT ON COLUMN "public"."exception_record"."sticker" IS '车贴';
COMMENT ON COLUMN "public"."exception_record"."ic_card_no" IS 'ic卡号';
COMMENT ON COLUMN "public"."exception_record"."request_time" IS '记录产生时间即请求时间';
COMMENT ON COLUMN "public"."exception_record"."content" IS '请求异常内容';
COMMENT ON COLUMN "public"."exception_record"."remark" IS '备注';
COMMENT ON TABLE "public"."exception_record" IS '过车异常记录表';

-- ----------------------------
-- Table structure for fatigue_drive_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."fatigue_drive_record";
CREATE TABLE "public"."fatigue_drive_record" (
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "total_time" numeric(10,0),
  "zone_id" varchar(50) COLLATE "pg_catalog"."default",
  "zone_name" varchar(20) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."fatigue_drive_record"."licence_no" IS '驾驶员驾驶证号';
COMMENT ON COLUMN "public"."fatigue_drive_record"."total_time" IS '总时长';
COMMENT ON COLUMN "public"."fatigue_drive_record"."zone_id" IS '测试区域号';
COMMENT ON COLUMN "public"."fatigue_drive_record"."zone_name" IS '测试区域名称';
COMMENT ON COLUMN "public"."fatigue_drive_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."fatigue_drive_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."fatigue_drive_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."fatigue_drive_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."fatigue_drive_record"."remark" IS '备注';
COMMENT ON TABLE "public"."fatigue_drive_record" IS '疲劳驾驶记录';

-- ----------------------------
-- Table structure for gate_device
-- ----------------------------
DROP TABLE IF EXISTS "public"."gate_device";
CREATE TABLE "public"."gate_device" (
  "device_ulid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "direction" numeric(1000,53),
  "device_name" varchar(100) COLLATE "pg_catalog"."default",
  "device_ip" varchar(20) COLLATE "pg_catalog"."default",
  "tlc_ip" varchar(20) COLLATE "pg_catalog"."default",
  "device_type" numeric(1000,53),
  "device_use_type" numeric(1000,53),
  "device_status" numeric(1000,53),
  "device_password" varchar(50) COLLATE "pg_catalog"."default",
  "device_area" numeric(1000,53),
  "remark" varchar(200) COLLATE "pg_catalog"."default",
  "device_id" numeric(1000,53) NOT NULL,
  "device_verify_type" numeric(1000,53),
  "port" varchar(20) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gate_device"."device_ulid" IS '闸机ulid号';
COMMENT ON COLUMN "public"."gate_device"."direction" IS '闸机方向 （0：入场  1：出场）';
COMMENT ON COLUMN "public"."gate_device"."device_name" IS '设备名称';
COMMENT ON COLUMN "public"."gate_device"."device_ip" IS '人脸识别机ip';
COMMENT ON COLUMN "public"."gate_device"."tlc_ip" IS '闸机控制器ip';
COMMENT ON COLUMN "public"."gate_device"."device_type" IS '设备类型 1：慕言2：宇泛';
COMMENT ON COLUMN "public"."gate_device"."device_use_type" IS '0: 不需要下发拍照设备 1：需要下发试验场设备';
COMMENT ON COLUMN "public"."gate_device"."device_status" IS '0:禁用 1：启用';
COMMENT ON COLUMN "public"."gate_device"."device_password" IS '宇泛设备密码';
COMMENT ON COLUMN "public"."gate_device"."device_area" IS '0：一期 1：二期';
COMMENT ON COLUMN "public"."gate_device"."remark" IS '备注';
COMMENT ON COLUMN "public"."gate_device"."device_id" IS '主键';
COMMENT ON COLUMN "public"."gate_device"."device_verify_type" IS '闸机验证方式（0：人脸加ic卡  1：人脸  2：ic卡  3：人脸或ic卡 ）';
COMMENT ON COLUMN "public"."gate_device"."port" IS '端口';
COMMENT ON TABLE "public"."gate_device" IS '闸机设备表';

-- ----------------------------
-- Table structure for gate_issue_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."gate_issue_record";
CREATE TABLE "public"."gate_issue_record" (
  "issue_id" numeric(1000,53) NOT NULL,
  "driver_id" numeric(1000,53) NOT NULL,
  "card_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "ic_card_no" varchar(40) COLLATE "pg_catalog"."default",
  "device_ulid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "direction" numeric(1000,53),
  "device_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "issue_status" numeric(1000,53) NOT NULL,
  "issue_down_date" timestamp(6),
  "issue_del_date" timestamp(6),
  "abnormal_status" numeric(1000,53) NOT NULL,
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(300) COLLATE "pg_catalog"."default",
  "device_id" numeric(1000,53) NOT NULL,
  "driver_name" varchar(20) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gate_issue_record"."issue_id" IS '主键id';
COMMENT ON COLUMN "public"."gate_issue_record"."driver_id" IS '白名单人员id';
COMMENT ON COLUMN "public"."gate_issue_record"."card_id" IS '身份证号';
COMMENT ON COLUMN "public"."gate_issue_record"."ic_card_no" IS 'ic卡卡号';
COMMENT ON COLUMN "public"."gate_issue_record"."device_ulid" IS '闸机ulid号';
COMMENT ON COLUMN "public"."gate_issue_record"."direction" IS '闸机方向 （0：入场  1：出场）';
COMMENT ON COLUMN "public"."gate_issue_record"."device_name" IS '设备名称';
COMMENT ON COLUMN "public"."gate_issue_record"."issue_status" IS '下发状态（2：下发成功  3：下发失败 5：删除成功 6：删除失败）';
COMMENT ON COLUMN "public"."gate_issue_record"."issue_down_date" IS '下发日期';
COMMENT ON COLUMN "public"."gate_issue_record"."issue_del_date" IS '删除日期';
COMMENT ON COLUMN "public"."gate_issue_record"."abnormal_status" IS '0：无异常 1：ip不通 2：其他异常';
COMMENT ON COLUMN "public"."gate_issue_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."gate_issue_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gate_issue_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."gate_issue_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gate_issue_record"."remark" IS '备注';
COMMENT ON COLUMN "public"."gate_issue_record"."device_id" IS '设备id';
COMMENT ON COLUMN "public"."gate_issue_record"."driver_name" IS '人员姓名';
COMMENT ON TABLE "public"."gate_issue_record" IS '人脸下发记录';

-- ----------------------------
-- Table structure for gate_pass_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."gate_pass_record";
CREATE TABLE "public"."gate_pass_record" (
  "pass_id" numeric(1000,53) NOT NULL,
  "person_name" varchar(255) COLLATE "pg_catalog"."default",
  "card_id" varchar(255) COLLATE "pg_catalog"."default",
  "ic_card" varchar(255) COLLATE "pg_catalog"."default",
  "pass_time" timestamp(6),
  "ulid" varchar(255) COLLATE "pg_catalog"."default",
  "device_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "push_status" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."gate_pass_record"."pass_id" IS '主键id';
COMMENT ON COLUMN "public"."gate_pass_record"."person_name" IS '人员姓名';
COMMENT ON COLUMN "public"."gate_pass_record"."card_id" IS '身份证号';
COMMENT ON COLUMN "public"."gate_pass_record"."ic_card" IS 'ic卡号';
COMMENT ON COLUMN "public"."gate_pass_record"."pass_time" IS '通行时间';
COMMENT ON COLUMN "public"."gate_pass_record"."ulid" IS 'ulid';
COMMENT ON COLUMN "public"."gate_pass_record"."device_name" IS '设备名称';
COMMENT ON COLUMN "public"."gate_pass_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."gate_pass_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."gate_pass_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."gate_pass_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."gate_pass_record"."remark" IS '备注';
COMMENT ON COLUMN "public"."gate_pass_record"."push_status" IS '0未上传1已上传';
COMMENT ON TABLE "public"."gate_pass_record" IS '人行通行记录';

-- ----------------------------
-- Table structure for lane
-- ----------------------------
DROP TABLE IF EXISTS "public"."lane";
CREATE TABLE "public"."lane" (
  "ulid" numeric(1000,53) NOT NULL,
  "lane_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "lane_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "ip" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "magic_key" varchar(32) COLLATE "pg_catalog"."default",
  "verify_type" varchar(50) COLLATE "pg_catalog"."default",
  "lane_function" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."lane"."ulid" IS '车道ulid编号';
COMMENT ON COLUMN "public"."lane"."lane_name" IS '车道名称';
COMMENT ON COLUMN "public"."lane"."lane_type" IS '方向，0-in，1-out';
COMMENT ON COLUMN "public"."lane"."zone_id" IS '试验区域编号';
COMMENT ON COLUMN "public"."lane"."ip" IS '控制器ip地址';
COMMENT ON COLUMN "public"."lane"."magic_key" IS '车道登录用到的加密字段';
COMMENT ON COLUMN "public"."lane"."verify_type" IS '验证类型 读取字典数据(lane_verify_type)';
COMMENT ON COLUMN "public"."lane"."lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."lane"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."lane"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."lane"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."lane"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."lane"."remark" IS '备注';
COMMENT ON TABLE "public"."lane" IS '车道表';

-- ----------------------------
-- Table structure for lane_copy1_11-25
-- ----------------------------
DROP TABLE IF EXISTS "public"."lane_copy1_11-25";
CREATE TABLE "public"."lane_copy1_11-25" (
  "ulid" numeric(1000,53) NOT NULL,
  "lane_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "lane_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_id" varchar(20) COLLATE "pg_catalog"."default",
  "ip" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "magic_key" varchar(32) COLLATE "pg_catalog"."default",
  "verify_type" varchar(50) COLLATE "pg_catalog"."default",
  "lane_function" char(1) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."lane_copy1_11-25"."ulid" IS '车道ulid编号';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."lane_name" IS '车道名称';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."lane_type" IS '方向，0-in，1-out';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."zone_id" IS '试验区域编号';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."ip" IS '控制器ip地址';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."magic_key" IS '车道登录用到的加密字段';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."verify_type" IS '验证类型 读取字典数据(lane_verify_type)';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."lane_function" IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."lane_copy1_11-25"."remark" IS '备注';
COMMENT ON TABLE "public"."lane_copy1_11-25" IS '车道表';

-- ----------------------------
-- Table structure for lane_led
-- ----------------------------
DROP TABLE IF EXISTS "public"."lane_led";
CREATE TABLE "public"."lane_led" (
  "ulid" numeric(1000,53) NOT NULL,
  "car_type" varchar(10) COLLATE "pg_catalog"."default",
  "scene" varchar(10) COLLATE "pg_catalog"."default",
  "font_color" char(1) COLLATE "pg_catalog"."default",
  "first_line_content" char(1) COLLATE "pg_catalog"."default",
  "first_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "first_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "first_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "second_line_content" char(1) COLLATE "pg_catalog"."default",
  "second_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "second_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "second_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "third_line_content" char(1) COLLATE "pg_catalog"."default",
  "third_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "third_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "third_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_content" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "fourth_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "voice_type" char(1) COLLATE "pg_catalog"."default",
  "voice_content" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."lane_led"."ulid" IS '车道编号';
COMMENT ON COLUMN "public"."lane_led"."car_type" IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN "public"."lane_led"."scene" IS '应用场景';
COMMENT ON COLUMN "public"."lane_led"."font_color" IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN "public"."lane_led"."first_line_content" IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led"."first_line_msg" IS '第一行显示信息';
COMMENT ON COLUMN "public"."lane_led"."first_line_show_type" IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led"."first_line_other_msg" IS '第一行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led"."second_line_content" IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led"."second_line_msg" IS '第二行显示信息';
COMMENT ON COLUMN "public"."lane_led"."second_line_show_type" IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led"."second_line_other_msg" IS '第二行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led"."third_line_content" IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led"."third_line_msg" IS '第三行显示信息';
COMMENT ON COLUMN "public"."lane_led"."third_line_show_type" IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led"."third_line_other_msg" IS '第三行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led"."fourth_line_content" IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led"."fourth_line_msg" IS '第四行显示信息';
COMMENT ON COLUMN "public"."lane_led"."fourth_line_show_type" IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led"."fourth_line_other_msg" IS '第四行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led"."voice_type" IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN "public"."lane_led"."voice_content" IS '声音内容';
COMMENT ON TABLE "public"."lane_led" IS '车道led配置表';

-- ----------------------------
-- Table structure for lane_led_copy1_11-25
-- ----------------------------
DROP TABLE IF EXISTS "public"."lane_led_copy1_11-25";
CREATE TABLE "public"."lane_led_copy1_11-25" (
  "ulid" numeric(1000,53) NOT NULL,
  "car_type" varchar(10) COLLATE "pg_catalog"."default",
  "scene" varchar(10) COLLATE "pg_catalog"."default",
  "font_color" char(1) COLLATE "pg_catalog"."default",
  "first_line_content" char(1) COLLATE "pg_catalog"."default",
  "first_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "first_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "first_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "second_line_content" char(1) COLLATE "pg_catalog"."default",
  "second_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "second_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "second_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "third_line_content" char(1) COLLATE "pg_catalog"."default",
  "third_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "third_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "third_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_content" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "fourth_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "voice_type" char(1) COLLATE "pg_catalog"."default",
  "voice_content" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."ulid" IS '车道编号';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."car_type" IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."scene" IS '应用场景';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."font_color" IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."first_line_content" IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."first_line_msg" IS '第一行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."first_line_show_type" IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."first_line_other_msg" IS '第一行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."second_line_content" IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."second_line_msg" IS '第二行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."second_line_show_type" IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."second_line_other_msg" IS '第二行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."third_line_content" IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."third_line_msg" IS '第三行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."third_line_show_type" IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."third_line_other_msg" IS '第三行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."fourth_line_content" IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."fourth_line_msg" IS '第四行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."fourth_line_show_type" IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."fourth_line_other_msg" IS '第四行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."voice_type" IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN "public"."lane_led_copy1_11-25"."voice_content" IS '声音内容';
COMMENT ON TABLE "public"."lane_led_copy1_11-25" IS '车道led配置表';

-- ----------------------------
-- Table structure for lane_led_copy1_25-1-7
-- ----------------------------
DROP TABLE IF EXISTS "public"."lane_led_copy1_25-1-7";
CREATE TABLE "public"."lane_led_copy1_25-1-7" (
  "ulid" numeric(1000,53) NOT NULL,
  "car_type" varchar(10) COLLATE "pg_catalog"."default",
  "scene" varchar(10) COLLATE "pg_catalog"."default",
  "font_color" char(1) COLLATE "pg_catalog"."default",
  "first_line_content" char(1) COLLATE "pg_catalog"."default",
  "first_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "first_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "first_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "second_line_content" char(1) COLLATE "pg_catalog"."default",
  "second_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "second_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "second_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "third_line_content" char(1) COLLATE "pg_catalog"."default",
  "third_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "third_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "third_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_content" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_msg" varchar(50) COLLATE "pg_catalog"."default",
  "fourth_line_show_type" char(1) COLLATE "pg_catalog"."default",
  "fourth_line_other_msg" char(1) COLLATE "pg_catalog"."default",
  "voice_type" char(1) COLLATE "pg_catalog"."default",
  "voice_content" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."ulid" IS '车道编号';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."car_type" IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."scene" IS '应用场景';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."font_color" IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."first_line_content" IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."first_line_msg" IS '第一行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."first_line_show_type" IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."first_line_other_msg" IS '第一行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."second_line_content" IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."second_line_msg" IS '第二行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."second_line_show_type" IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."second_line_other_msg" IS '第二行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."third_line_content" IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."third_line_msg" IS '第三行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."third_line_show_type" IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."third_line_other_msg" IS '第三行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."fourth_line_content" IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."fourth_line_msg" IS '第四行显示信息';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."fourth_line_show_type" IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."fourth_line_other_msg" IS '第四行展示其他信息(0：obu，1：时间)';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."voice_type" IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN "public"."lane_led_copy1_25-1-7"."voice_content" IS '声音内容';
COMMENT ON TABLE "public"."lane_led_copy1_25-1-7" IS '车道led配置表';

-- ----------------------------
-- Table structure for led_dict
-- ----------------------------
DROP TABLE IF EXISTS "public"."led_dict";
CREATE TABLE "public"."led_dict" (
  "key" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default",
  "zonetype" numeric(10,0),
  "keydescribe" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for obu_read_count
-- ----------------------------
DROP TABLE IF EXISTS "public"."obu_read_count";
CREATE TABLE "public"."obu_read_count" (
  "obu" varchar(255) COLLATE "pg_catalog"."default",
  "count" numeric(1000,53),
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."obu_read_count"."obu" IS 'obu
';
COMMENT ON COLUMN "public"."obu_read_count"."count" IS 'obu读取次数';
COMMENT ON COLUMN "public"."obu_read_count"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."obu_read_count"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."obu_read_count"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."obu_read_count"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."obu_read_count"."remark" IS '备注';

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS "public"."operation";
CREATE TABLE "public"."operation" (
  "operate_id" varchar(255) COLLATE "pg_catalog"."default",
  "channel" varchar(255) COLLATE "pg_catalog"."default",
  "request_ip" varchar(255) COLLATE "pg_catalog"."default",
  "request_url" varchar(255) COLLATE "pg_catalog"."default",
  "request_args" varchar(2055) COLLATE "pg_catalog"."default",
  "request_date" timestamp(6),
  "result_data" text COLLATE "pg_catalog"."default",
  "remark" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."operation"."operate_id" IS '操作id';
COMMENT ON COLUMN "public"."operation"."channel" IS '身份';
COMMENT ON COLUMN "public"."operation"."request_ip" IS '请求ip';
COMMENT ON COLUMN "public"."operation"."request_url" IS '请求路径';
COMMENT ON COLUMN "public"."operation"."request_args" IS '请求进入参数';
COMMENT ON COLUMN "public"."operation"."request_date" IS '请求时间';
COMMENT ON COLUMN "public"."operation"."result_data" IS '返回参数';
COMMENT ON COLUMN "public"."operation"."remark" IS '备注';
COMMENT ON TABLE "public"."operation" IS '外部调用操作记录表';

-- ----------------------------
-- Table structure for order_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_record";
CREATE TABLE "public"."order_record" (
  "order_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_id" varchar(50) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "trans_time" timestamp(6),
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "obu_time" timestamp(6),
  "sign" numeric(1000,53),
  "guid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker_start_time" timestamp(6),
  "sticker_end_time" timestamp(6),
  "car_type" varchar(50) COLLATE "pg_catalog"."default",
  "car_color" varchar(10) COLLATE "pg_catalog"."default",
  "comp" varchar(60) COLLATE "pg_catalog"."default",
  "obu_status" numeric(1000,53),
  "axle_number" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "update_flag" numeric(1000,53),
  "car_model" varchar(50) COLLATE "pg_catalog"."default",
  "fuel_type" varchar(50) COLLATE "pg_catalog"."default",
  "weight" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."order_record"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."order_record"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."order_record"."zone_id" IS '测试区域';
COMMENT ON COLUMN "public"."order_record"."licence_no" IS '驾驶证编号';
COMMENT ON COLUMN "public"."order_record"."start_time" IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN "public"."order_record"."end_time" IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN "public"."order_record"."trans_time" IS '获得订单时间';
COMMENT ON COLUMN "public"."order_record"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."order_record"."obu_time" IS '绑定obu时间';
COMMENT ON COLUMN "public"."order_record"."sign" IS '标识，0-仅接受订单，1-0bu已记录，2-下发完成';
COMMENT ON COLUMN "public"."order_record"."guid" IS '数据唯一编号';
COMMENT ON COLUMN "public"."order_record"."sticker_start_time" IS '车辆有效期开始时间';
COMMENT ON COLUMN "public"."order_record"."sticker_end_time" IS '车辆有效期结束时间';
COMMENT ON COLUMN "public"."order_record"."car_type" IS '车型';
COMMENT ON COLUMN "public"."order_record"."car_color" IS '车身颜色';
COMMENT ON COLUMN "public"."order_record"."comp" IS '所属厂家';
COMMENT ON COLUMN "public"."order_record"."obu_status" IS 'obu状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN "public"."order_record"."axle_number" IS '车轴数';
COMMENT ON COLUMN "public"."order_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."order_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."order_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."order_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."order_record"."remark" IS '备注';
COMMENT ON COLUMN "public"."order_record"."update_flag" IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收ic卡待同步）';
COMMENT ON COLUMN "public"."order_record"."car_model" IS '车辆类型';
COMMENT ON COLUMN "public"."order_record"."fuel_type" IS '燃油类型';
COMMENT ON COLUMN "public"."order_record"."weight" IS '车重（kg）';
COMMENT ON TABLE "public"."order_record" IS '订单表';

-- ----------------------------
-- Table structure for order_record_11-20
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_record_11-20";
CREATE TABLE "public"."order_record_11-20" (
  "order_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_id" varchar(50) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "trans_time" timestamp(6),
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "obu_time" timestamp(6),
  "sign" numeric(1000,53),
  "guid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker_start_time" timestamp(6),
  "sticker_end_time" timestamp(6),
  "car_type" varchar(50) COLLATE "pg_catalog"."default",
  "car_color" varchar(10) COLLATE "pg_catalog"."default",
  "comp" varchar(60) COLLATE "pg_catalog"."default",
  "obu_status" numeric(1000,53),
  "axle_number" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "update_flag" numeric(1000,53)
)
;
COMMENT ON COLUMN "public"."order_record_11-20"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."order_record_11-20"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."order_record_11-20"."zone_id" IS '测试区域';
COMMENT ON COLUMN "public"."order_record_11-20"."licence_no" IS '驾驶证编号';
COMMENT ON COLUMN "public"."order_record_11-20"."start_time" IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN "public"."order_record_11-20"."end_time" IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN "public"."order_record_11-20"."trans_time" IS '获得订单时间';
COMMENT ON COLUMN "public"."order_record_11-20"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."order_record_11-20"."obu_time" IS '绑定obu时间';
COMMENT ON COLUMN "public"."order_record_11-20"."sign" IS '标识，0-仅接受订单，1-0bu已记录，2-下发完成';
COMMENT ON COLUMN "public"."order_record_11-20"."guid" IS '数据唯一编号';
COMMENT ON COLUMN "public"."order_record_11-20"."sticker_start_time" IS '车辆有效期开始时间';
COMMENT ON COLUMN "public"."order_record_11-20"."sticker_end_time" IS '车辆有效期结束时间';
COMMENT ON COLUMN "public"."order_record_11-20"."car_type" IS '车型';
COMMENT ON COLUMN "public"."order_record_11-20"."car_color" IS '车身颜色';
COMMENT ON COLUMN "public"."order_record_11-20"."comp" IS '所属厂家';
COMMENT ON COLUMN "public"."order_record_11-20"."obu_status" IS 'obu状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN "public"."order_record_11-20"."axle_number" IS '车轴数';
COMMENT ON COLUMN "public"."order_record_11-20"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."order_record_11-20"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."order_record_11-20"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."order_record_11-20"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."order_record_11-20"."remark" IS '备注';
COMMENT ON COLUMN "public"."order_record_11-20"."update_flag" IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收ic卡待同步）';
COMMENT ON TABLE "public"."order_record_11-20" IS '订单表';

-- ----------------------------
-- Table structure for order_record_copy1
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_record_copy1";
CREATE TABLE "public"."order_record_copy1" (
  "order_id" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_id" varchar(50) COLLATE "pg_catalog"."default",
  "licence_no" varchar(20) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "trans_time" timestamp(6),
  "obu_id" varchar(20) COLLATE "pg_catalog"."default",
  "obu_time" timestamp(6),
  "sign" numeric(1000,53),
  "guid" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sticker_start_time" timestamp(6),
  "sticker_end_time" timestamp(6),
  "car_type" varchar(50) COLLATE "pg_catalog"."default",
  "car_color" varchar(10) COLLATE "pg_catalog"."default",
  "comp" varchar(60) COLLATE "pg_catalog"."default",
  "obu_status" numeric(1000,53),
  "axle_number" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "update_flag" numeric(1000,53)
)
;
COMMENT ON COLUMN "public"."order_record_copy1"."order_id" IS '订单号';
COMMENT ON COLUMN "public"."order_record_copy1"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."order_record_copy1"."zone_id" IS '测试区域';
COMMENT ON COLUMN "public"."order_record_copy1"."licence_no" IS '驾驶证编号';
COMMENT ON COLUMN "public"."order_record_copy1"."start_time" IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN "public"."order_record_copy1"."end_time" IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN "public"."order_record_copy1"."trans_time" IS '获得订单时间';
COMMENT ON COLUMN "public"."order_record_copy1"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."order_record_copy1"."obu_time" IS '绑定obu时间';
COMMENT ON COLUMN "public"."order_record_copy1"."sign" IS '标识，0-仅接受订单，1-0bu已记录，2-下发完成';
COMMENT ON COLUMN "public"."order_record_copy1"."guid" IS '数据唯一编号';
COMMENT ON COLUMN "public"."order_record_copy1"."sticker_start_time" IS '车辆有效期开始时间';
COMMENT ON COLUMN "public"."order_record_copy1"."sticker_end_time" IS '车辆有效期结束时间';
COMMENT ON COLUMN "public"."order_record_copy1"."car_type" IS '车型';
COMMENT ON COLUMN "public"."order_record_copy1"."car_color" IS '车身颜色';
COMMENT ON COLUMN "public"."order_record_copy1"."comp" IS '所属厂家';
COMMENT ON COLUMN "public"."order_record_copy1"."obu_status" IS 'obu状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN "public"."order_record_copy1"."axle_number" IS '车轴数';
COMMENT ON COLUMN "public"."order_record_copy1"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."order_record_copy1"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."order_record_copy1"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."order_record_copy1"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."order_record_copy1"."remark" IS '备注';
COMMENT ON COLUMN "public"."order_record_copy1"."update_flag" IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收ic卡待同步）';
COMMENT ON TABLE "public"."order_record_copy1" IS '订单表';

-- ----------------------------
-- Table structure for park_white
-- ----------------------------
DROP TABLE IF EXISTS "public"."park_white";
CREATE TABLE "public"."park_white" (
  "car_id" numeric(1000,53) NOT NULL,
  "card_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "plate_color" varchar(6) COLLATE "pg_catalog"."default",
  "plate" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS "public"."person";
CREATE TABLE "public"."person" (
  "person_id" numeric(1000,53) NOT NULL,
  "person_name" varchar(255) COLLATE "pg_catalog"."default",
  "id_card" varchar(255) COLLATE "pg_catalog"."default",
  "ic_card" varchar(255) COLLATE "pg_catalog"."default",
  "face_id" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."person"."person_id" IS '主键id';
COMMENT ON COLUMN "public"."person"."person_name" IS '人员姓名';
COMMENT ON COLUMN "public"."person"."id_card" IS '身份证号';
COMMENT ON COLUMN "public"."person"."ic_card" IS 'ic卡号';
COMMENT ON COLUMN "public"."person"."face_id" IS '下发设备  设备回调使用';

-- ----------------------------
-- Table structure for policy
-- ----------------------------
DROP TABLE IF EXISTS "public"."policy";
CREATE TABLE "public"."policy" (
  "policy_key" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "policy_value" numeric(1000,53) NOT NULL,
  "policy_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for recover_card_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."recover_card_record";
CREATE TABLE "public"."recover_card_record" (
  "recover_id" numeric(1000,53) NOT NULL,
  "card_type" numeric(1000,53),
  "card_no" varchar(20) COLLATE "pg_catalog"."default",
  "operate_type" numeric(1000,53),
  "appellation" varchar(100) COLLATE "pg_catalog"."default",
  "numb" varchar(20) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."recover_card_record"."recover_id" IS '归还卡主键';
COMMENT ON COLUMN "public"."recover_card_record"."card_type" IS '卡类型（0-ic卡，1-obu）';
COMMENT ON COLUMN "public"."recover_card_record"."card_no" IS 'ic卡号或者obu号';
COMMENT ON COLUMN "public"."recover_card_record"."operate_type" IS '操作类型，枚举类型：0-归还，1-开卡，2-挂失，3-其它';
COMMENT ON COLUMN "public"."recover_card_record"."appellation" IS '如果是ic卡就填姓名，如果是obu就填写订单号';
COMMENT ON COLUMN "public"."recover_card_record"."numb" IS '号码，如果是ic卡就填写身份证号，如果是obu就填写车贴号';
COMMENT ON COLUMN "public"."recover_card_record"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."recover_card_record"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."recover_card_record"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."recover_card_record"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."recover_card_record"."remark" IS '备注';
COMMENT ON TABLE "public"."recover_card_record" IS '还卡记录表';

-- ----------------------------
-- Table structure for service_control
-- ----------------------------
DROP TABLE IF EXISTS "public"."service_control";
CREATE TABLE "public"."service_control" (
  "monitor_id" varchar(255) COLLATE "pg_catalog"."default",
  "service_type" numeric(1000,53),
  "service_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."service_control"."monitor_id" IS '服务id';
COMMENT ON COLUMN "public"."service_control"."service_type" IS '服务类型  0:java服务 1: 系统服务 2: 操作系统';
COMMENT ON COLUMN "public"."service_control"."service_name" IS '服务名称';

-- ----------------------------
-- Table structure for service_control_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."service_control_record";
CREATE TABLE "public"."service_control_record" (
  "alarm_id" numeric(1000,53),
  "target" varchar(255) COLLATE "pg_catalog"."default",
  "threshold_id" numeric(1000,53),
  "priority" numeric(1000,53),
  "content" varchar(255) COLLATE "pg_catalog"."default",
  "status" numeric(1000,53),
  "times" numeric(1000,53),
  "trigger_time" timestamp(6),
  "app" varchar(255) COLLATE "pg_catalog"."default",
  "monitor_id" varchar(255) COLLATE "pg_catalog"."default",
  "metrics" varchar(255) COLLATE "pg_catalog"."default",
  "code" varchar(255) COLLATE "pg_catalog"."default",
  "tags_threshold_id" varchar(255) COLLATE "pg_catalog"."default",
  "monitor_name" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for sip_lane
-- ----------------------------
DROP TABLE IF EXISTS "public"."sip_lane";
CREATE TABLE "public"."sip_lane" (
  "zone_id" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "lane_ulid" numeric(1000,53) NOT NULL,
  "lane_type" char(1) COLLATE "pg_catalog"."default" NOT NULL,
  "sip_num" varchar(50) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for sip_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sip_user";
CREATE TABLE "public"."sip_user" (
  "user_id" numeric(1000,53) NOT NULL,
  "sip_num" varchar(50) COLLATE "pg_catalog"."default",
  "sip_password" varchar(50) COLLATE "pg_catalog"."default",
  "sip_user_name" varchar(50) COLLATE "pg_catalog"."default",
  "sip_server" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for specific_obu
-- ----------------------------
DROP TABLE IF EXISTS "public"."specific_obu";
CREATE TABLE "public"."specific_obu" (
  "id" numeric(1000,53) NOT NULL,
  "obu_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_ids" varchar(500) COLLATE "pg_catalog"."default",
  "department" varchar(50) COLLATE "pg_catalog"."default",
  "plate" varchar(20) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."specific_obu"."id" IS '主键';
COMMENT ON COLUMN "public"."specific_obu"."obu_id" IS 'obu号码';
COMMENT ON COLUMN "public"."specific_obu"."zone_ids" IS '该obuid可以通行的区域';
COMMENT ON COLUMN "public"."specific_obu"."department" IS '部门';
COMMENT ON COLUMN "public"."specific_obu"."plate" IS '车牌';
COMMENT ON COLUMN "public"."specific_obu"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."specific_obu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."specific_obu"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."specific_obu"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."specific_obu"."remark" IS '备注';
COMMENT ON TABLE "public"."specific_obu" IS '特殊obu';

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS "public"."staff";
CREATE TABLE "public"."staff" (
  "card_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "staff_name" varchar(20) COLLATE "pg_catalog"."default",
  "staff_type" char(1) COLLATE "pg_catalog"."default",
  "staff_phone" varchar(20) COLLATE "pg_catalog"."default",
  "zone_ids" varchar(255) COLLATE "pg_catalog"."default",
  "address" varchar(200) COLLATE "pg_catalog"."default",
  "expired_time" timestamp(6),
  "staff_id" numeric(1000,53) NOT NULL,
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."staff"."card_id" IS '身份证号';
COMMENT ON COLUMN "public"."staff"."staff_name" IS '员工姓名';
COMMENT ON COLUMN "public"."staff"."staff_type" IS '员工类型，0-公务，1-员工';
COMMENT ON COLUMN "public"."staff"."staff_phone" IS '员工电话';
COMMENT ON COLUMN "public"."staff"."zone_ids" IS '允许通行的区域，用英文逗号分隔';
COMMENT ON COLUMN "public"."staff"."address" IS '部门地址';
COMMENT ON COLUMN "public"."staff"."expired_time" IS '有效期';
COMMENT ON COLUMN "public"."staff"."staff_id" IS '员工主键';
COMMENT ON COLUMN "public"."staff"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."staff"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."staff"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."staff"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."staff"."remark" IS '备注';
COMMENT ON TABLE "public"."staff" IS '员工表';

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_data";
CREATE TABLE "public"."sys_dict_data" (
  "dict_data_id" numeric(11,0) NOT NULL,
  "dict_data_label" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_data_value" numeric(4,0) NOT NULL,
  "dict_type" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "order_num" numeric(11,0) NOT NULL,
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_data"."dict_data_id" IS '主键id';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_data_label" IS '字典标签';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_data_value" IS '字典键值';
COMMENT ON COLUMN "public"."sys_dict_data"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_data"."order_num" IS '字典排序';
COMMENT ON COLUMN "public"."sys_dict_data"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_dict_data"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_data"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_dict_data"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_dict_data"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_data" IS '字典数据表';

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_dict_type";
CREATE TABLE "public"."sys_dict_type" (
  "dict_type_id" numeric(11,0) NOT NULL,
  "dict_type_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_type" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_type_status" numeric(4,0) NOT NULL,
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type_id" IS '主键id';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type_name" IS '字典名称';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type" IS '字典类型';
COMMENT ON COLUMN "public"."sys_dict_type"."dict_type_status" IS '状态 （0：正常 1：停用 ）';
COMMENT ON COLUMN "public"."sys_dict_type"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_dict_type"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_dict_type"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_dict_type"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_dict_type"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_dict_type" IS '字典类型表';

-- ----------------------------
-- Table structure for sys_login_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_login_info";
CREATE TABLE "public"."sys_login_info" (
  "login_info_id" int8 NOT NULL DEFAULT nextval('sys_login_info_login_info_id_seq'::regclass),
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "login_status" int4 NOT NULL,
  "login_time" timestamp(6) NOT NULL,
  "login_browser" varchar(50) COLLATE "pg_catalog"."default",
  "login_os" varchar(50) COLLATE "pg_catalog"."default",
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(1000) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_login_info"."login_info_id" IS '主键id';
COMMENT ON COLUMN "public"."sys_login_info"."user_name" IS '用户名称';
COMMENT ON COLUMN "public"."sys_login_info"."login_status" IS '登录状态（0:登录成功 1:登录失败）';
COMMENT ON COLUMN "public"."sys_login_info"."login_time" IS '登录时间';
COMMENT ON COLUMN "public"."sys_login_info"."login_browser" IS '浏览器';
COMMENT ON COLUMN "public"."sys_login_info"."login_os" IS '操作系统';
COMMENT ON COLUMN "public"."sys_login_info"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_login_info"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_login_info"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_login_info"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_login_info"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_login_info" IS '登录信息表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_menu";
CREATE TABLE "public"."sys_menu" (
  "menu_id" numeric(11,0) NOT NULL,
  "menu_name" varchar(30) COLLATE "pg_catalog"."default",
  "parent_id" numeric(11,0) NOT NULL,
  "order_num" numeric(11,0) NOT NULL,
  "menu_type" numeric(4,0) NOT NULL,
  "perms" varchar(30) COLLATE "pg_catalog"."default",
  "path" varchar(100) COLLATE "pg_catalog"."default",
  "component" varchar(100) COLLATE "pg_catalog"."default",
  "title" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "is_link" varchar(100) COLLATE "pg_catalog"."default",
  "is_hide" numeric(4,0),
  "is_keep_alive" numeric(1,0),
  "is_affix" numeric(1,0),
  "is_full" numeric(1,0),
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "menu_status" numeric(1,0),
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_menu"."menu_id" IS '主键id';
COMMENT ON COLUMN "public"."sys_menu"."menu_name" IS '路由 name';
COMMENT ON COLUMN "public"."sys_menu"."parent_id" IS '父级id';
COMMENT ON COLUMN "public"."sys_menu"."order_num" IS '显示顺序';
COMMENT ON COLUMN "public"."sys_menu"."menu_type" IS '菜单类型（0目录 1菜单 2按钮）';
COMMENT ON COLUMN "public"."sys_menu"."perms" IS '权限字符';
COMMENT ON COLUMN "public"."sys_menu"."path" IS '路由访问路径';
COMMENT ON COLUMN "public"."sys_menu"."component" IS '视图文件路径';
COMMENT ON COLUMN "public"."sys_menu"."title" IS '路由标题';
COMMENT ON COLUMN "public"."sys_menu"."is_link" IS '路由外链时填写的访问地址';
COMMENT ON COLUMN "public"."sys_menu"."is_hide" IS '是否隐藏';
COMMENT ON COLUMN "public"."sys_menu"."is_keep_alive" IS '是否缓存';
COMMENT ON COLUMN "public"."sys_menu"."is_affix" IS '是否固定在标签页中';
COMMENT ON COLUMN "public"."sys_menu"."is_full" IS '是否全屏';
COMMENT ON COLUMN "public"."sys_menu"."icon" IS '菜单和面包屑对应的图标';
COMMENT ON COLUMN "public"."sys_menu"."menu_status" IS '菜单状态（0：正常 1：停用）';
COMMENT ON COLUMN "public"."sys_menu"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_menu"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_menu"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_menu"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_menu"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_menu" IS '菜单表';

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_oper_log";
CREATE TABLE "public"."sys_oper_log" (
  "oper_id" numeric(1000,53) NOT NULL,
  "title" numeric(4,0) NOT NULL,
  "business_type" numeric(4,0) NOT NULL,
  "method" varchar(100) COLLATE "pg_catalog"."default",
  "request_method" varchar(10) COLLATE "pg_catalog"."default",
  "oper_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "oper_url" varchar(255) COLLATE "pg_catalog"."default",
  "oper_param" text COLLATE "pg_catalog"."default",
  "json_result" text COLLATE "pg_catalog"."default",
  "oper_status" numeric(4,0),
  "error_msg" text COLLATE "pg_catalog"."default",
  "oper_time" timestamp(6) NOT NULL,
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_oper_log"."oper_id" IS '日志主键';
COMMENT ON COLUMN "public"."sys_oper_log"."title" IS '模块标题';
COMMENT ON COLUMN "public"."sys_oper_log"."business_type" IS '业务类型';
COMMENT ON COLUMN "public"."sys_oper_log"."method" IS '方法名称';
COMMENT ON COLUMN "public"."sys_oper_log"."request_method" IS '请求方式';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_name" IS '操作人员';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_url" IS '请求url';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_param" IS '请求参数';
COMMENT ON COLUMN "public"."sys_oper_log"."json_result" IS '返回参数';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_status" IS '操作状态（0:成功  1:失败）';
COMMENT ON COLUMN "public"."sys_oper_log"."error_msg" IS '错误消息';
COMMENT ON COLUMN "public"."sys_oper_log"."oper_time" IS '操作时间';
COMMENT ON COLUMN "public"."sys_oper_log"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_oper_log"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_oper_log"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_oper_log"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_oper_log"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_oper_log" IS '日志表';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role";
CREATE TABLE "public"."sys_role" (
  "role_id" numeric(1000,53) NOT NULL,
  "role_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "role_status" numeric(1,0) NOT NULL,
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_role"."role_id" IS '主键id';
COMMENT ON COLUMN "public"."sys_role"."role_name" IS '角色名称';
COMMENT ON COLUMN "public"."sys_role"."role_status" IS '角色状态（0：正常 1：停用）';
COMMENT ON COLUMN "public"."sys_role"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_role"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_role"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_role"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_role"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_role" IS '角色表';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_role_menu";
CREATE TABLE "public"."sys_role_menu" (
  "role_id" numeric(11,0) NOT NULL,
  "menu_id" numeric(11,0) NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_role_menu"."role_id" IS '角色id';
COMMENT ON COLUMN "public"."sys_role_menu"."menu_id" IS '菜单id';
COMMENT ON TABLE "public"."sys_role_menu" IS '角色菜单表';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user";
CREATE TABLE "public"."sys_user" (
  "user_id" numeric(1000,53) NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "user_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "nick_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "current_park" varchar(30) COLLATE "pg_catalog"."default",
  "user_type" numeric(1,0) NOT NULL,
  "user_source_type" numeric(1,0) NOT NULL,
  "phone" varchar(30) COLLATE "pg_catalog"."default",
  "user_status" numeric(1,0) NOT NULL,
  "last_login_time" timestamp(6),
  "create_by" varchar(30) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(30) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(100) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."sys_user"."user_id" IS '主键id';
COMMENT ON COLUMN "public"."sys_user"."password" IS '用户密码';
COMMENT ON COLUMN "public"."sys_user"."user_name" IS '登陆账号';
COMMENT ON COLUMN "public"."sys_user"."nick_name" IS '用户昵称';
COMMENT ON COLUMN "public"."sys_user"."current_park" IS '用户当前车场';
COMMENT ON COLUMN "public"."sys_user"."user_type" IS '用户类型（0：超级管理员 1：车场管理员 2：单位管理员）';
COMMENT ON COLUMN "public"."sys_user"."user_source_type" IS '用户来源（0：后台用户 1：移动端用户）';
COMMENT ON COLUMN "public"."sys_user"."phone" IS '用户电话';
COMMENT ON COLUMN "public"."sys_user"."user_status" IS '账号状态（0：正常 1：停用 ）';
COMMENT ON COLUMN "public"."sys_user"."last_login_time" IS '最后登录时间';
COMMENT ON COLUMN "public"."sys_user"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."sys_user"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."sys_user"."update_by" IS '修改人';
COMMENT ON COLUMN "public"."sys_user"."update_time" IS '修改时间';
COMMENT ON COLUMN "public"."sys_user"."remark" IS '备注';
COMMENT ON TABLE "public"."sys_user" IS '用户表';

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."sys_user_role";
CREATE TABLE "public"."sys_user_role" (
  "user_id" numeric(1000,53) NOT NULL,
  "role_id" numeric(1000,53) NOT NULL
)
;
COMMENT ON COLUMN "public"."sys_user_role"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."sys_user_role"."role_id" IS '角色id';
COMMENT ON TABLE "public"."sys_user_role" IS '用户角色表';

-- ----------------------------
-- Table structure for user_audit
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_audit";
CREATE TABLE "public"."user_audit" (
  "level_id" numeric(1000,53) NOT NULL,
  "user_id" numeric(1000,53) NOT NULL,
  "audit_level" numeric(1000,53),
  "audit_user_id" numeric(1000,53),
  "create_by" varchar(50) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(50) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."user_audit"."level_id" IS '主键id';
COMMENT ON COLUMN "public"."user_audit"."user_id" IS '用户id';
COMMENT ON COLUMN "public"."user_audit"."audit_level" IS '审核人等级';
COMMENT ON COLUMN "public"."user_audit"."audit_user_id" IS '审核人id';
COMMENT ON COLUMN "public"."user_audit"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."user_audit"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."user_audit"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."user_audit"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."user_audit"."remark" IS '备注';
COMMENT ON TABLE "public"."user_audit" IS '用户审核关联表';

-- ----------------------------
-- Table structure for visitor
-- ----------------------------
DROP TABLE IF EXISTS "public"."visitor";
CREATE TABLE "public"."visitor" (
  "visitor_id" numeric(1000,53) NOT NULL,
  "visitor_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "card_id" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar(100) COLLATE "pg_catalog"."default",
  "telephone" varchar(20) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6),
  "end_time" timestamp(6),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for weigh
-- ----------------------------
DROP TABLE IF EXISTS "public"."weigh";
CREATE TABLE "public"."weigh" (
  "obu_id" varchar(255) COLLATE "pg_catalog"."default",
  "ic_card" varchar(255) COLLATE "pg_catalog"."default",
  "work_id" varchar(255) COLLATE "pg_catalog"."default",
  "driver_name" varchar(255) COLLATE "pg_catalog"."default",
  "over_run" numeric(1000,53),
  "speed" numeric(1000,53),
  "acceleration" numeric(1000,53),
  "axis" numeric(1000,53),
  "axis_group" numeric(1000,53),
  "axis_total_weigh" numeric(1000,53),
  "weight" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default",
  "distance" varchar(255) COLLATE "pg_catalog"."default",
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "sticker" varchar(20) COLLATE "pg_catalog"."default",
  "wg_type" varchar(255) COLLATE "pg_catalog"."default",
  "offline_status" numeric(1000,53),
  "img_url" varchar(200) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."weigh"."obu_id" IS 'obu号';
COMMENT ON COLUMN "public"."weigh"."ic_card" IS '卡号';
COMMENT ON COLUMN "public"."weigh"."work_id" IS '工号';
COMMENT ON COLUMN "public"."weigh"."driver_name" IS '驾驶员名称';
COMMENT ON COLUMN "public"."weigh"."over_run" IS '超限标志，0否，1是';
COMMENT ON COLUMN "public"."weigh"."speed" IS '车速km/h';
COMMENT ON COLUMN "public"."weigh"."acceleration" IS '加速度';
COMMENT ON COLUMN "public"."weigh"."axis" IS '轴数';
COMMENT ON COLUMN "public"."weigh"."axis_group" IS '轴组数';
COMMENT ON COLUMN "public"."weigh"."axis_total_weigh" IS '总重kg';
COMMENT ON COLUMN "public"."weigh"."weight" IS 'weight1-weightn,int,各轴重量kg';
COMMENT ON COLUMN "public"."weigh"."type" IS 'type1-typen,int,各轴轴型1：单轴单轮；2：单轴双轮；3：双联轴单轮；4：双联轴单双轮；  5：双联轴双轮；6：三联轴单轮；7：三联轴双轮';
COMMENT ON COLUMN "public"."weigh"."distance" IS 'distance1-distancen,number,各轴轴间距m';
COMMENT ON COLUMN "public"."weigh"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."weigh"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."weigh"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."weigh"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."weigh"."remark" IS '备注';
COMMENT ON COLUMN "public"."weigh"."sticker" IS '车贴号';
COMMENT ON COLUMN "public"."weigh"."wg_type" IS '称重类型';
COMMENT ON COLUMN "public"."weigh"."offline_status" IS '上传类型';
COMMENT ON COLUMN "public"."weigh"."img_url" IS '称重图片';

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS "public"."zone";
CREATE TABLE "public"."zone" (
  "zone_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_name" varchar(50) COLLATE "pg_catalog"."default",
  "max_num" numeric(1000,53),
  "zone_type" char(1) COLLATE "pg_catalog"."default",
  "zone_another_name" varchar(20) COLLATE "pg_catalog"."default",
  "max_time" numeric(1000,53),
  "zone_control" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "zone_phase" numeric(1000,53),
  "sort" numeric(1000,53)
)
;
COMMENT ON COLUMN "public"."zone"."zone_id" IS '试验区域号';
COMMENT ON COLUMN "public"."zone"."zone_name" IS '试验区域名称';
COMMENT ON COLUMN "public"."zone"."max_num" IS '区域最大容量';
COMMENT ON COLUMN "public"."zone"."zone_type" IS '区域类型，0-2号门，1-测试区，2-联络路，3-盐雾通道 4-洗车间,5一号门，6员工停车场，7测试停车场';
COMMENT ON COLUMN "public"."zone"."zone_another_name" IS '区域简称';
COMMENT ON COLUMN "public"."zone"."max_time" IS '疲劳提醒时间，单位：分钟';
COMMENT ON COLUMN "public"."zone"."zone_control" IS '区域控制  0：正常  1：封场  2：包场  3：精准预约';
COMMENT ON COLUMN "public"."zone"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."zone"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."zone"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."zone"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."zone"."remark" IS '备注';
COMMENT ON COLUMN "public"."zone"."zone_phase" IS '1:一期  2:二期';
COMMENT ON COLUMN "public"."zone"."sort" IS '排序';
COMMENT ON TABLE "public"."zone" IS '试验区域表';

-- ----------------------------
-- Table structure for zone_copy1
-- ----------------------------
DROP TABLE IF EXISTS "public"."zone_copy1";
CREATE TABLE "public"."zone_copy1" (
  "zone_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_name" varchar(50) COLLATE "pg_catalog"."default",
  "max_num" numeric(1000,53),
  "zone_type" char(1) COLLATE "pg_catalog"."default",
  "zone_another_name" varchar(20) COLLATE "pg_catalog"."default",
  "max_time" numeric(1000,53),
  "zone_control" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "zone_phase" numeric(1000,53),
  "sort" numeric(1000,53)
)
;
COMMENT ON COLUMN "public"."zone_copy1"."zone_id" IS '试验区域号';
COMMENT ON COLUMN "public"."zone_copy1"."zone_name" IS '试验区域名称';
COMMENT ON COLUMN "public"."zone_copy1"."max_num" IS '区域最大容量';
COMMENT ON COLUMN "public"."zone_copy1"."zone_type" IS '区域类型，0-2号门，1-测试区，2-联络路，3-盐雾通道 4-洗车间,5一号门，6员工停车场，7测试停车场';
COMMENT ON COLUMN "public"."zone_copy1"."zone_another_name" IS '区域简称';
COMMENT ON COLUMN "public"."zone_copy1"."max_time" IS '疲劳提醒时间，单位：分钟';
COMMENT ON COLUMN "public"."zone_copy1"."zone_control" IS '区域控制  0：正常  1：封场  2：包场  3：精准预约';
COMMENT ON COLUMN "public"."zone_copy1"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."zone_copy1"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."zone_copy1"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."zone_copy1"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."zone_copy1"."remark" IS '备注';
COMMENT ON COLUMN "public"."zone_copy1"."zone_phase" IS '1:一期  2:二期';
COMMENT ON COLUMN "public"."zone_copy1"."sort" IS '排序';
COMMENT ON TABLE "public"."zone_copy1" IS '试验区域表';

-- ----------------------------
-- Table structure for zone_copy2_11-25
-- ----------------------------
DROP TABLE IF EXISTS "public"."zone_copy2_11-25";
CREATE TABLE "public"."zone_copy2_11-25" (
  "zone_id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "zone_name" varchar(50) COLLATE "pg_catalog"."default",
  "max_num" numeric(1000,53),
  "zone_type" char(1) COLLATE "pg_catalog"."default",
  "zone_another_name" varchar(20) COLLATE "pg_catalog"."default",
  "max_time" numeric(1000,53),
  "zone_control" numeric(1000,53),
  "create_by" varchar(20) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "update_by" varchar(20) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "remark" varchar(50) COLLATE "pg_catalog"."default",
  "zone_phase" numeric(1000,53),
  "sort" numeric(1000,53)
)
;
COMMENT ON COLUMN "public"."zone_copy2_11-25"."zone_id" IS '试验区域号';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."zone_name" IS '试验区域名称';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."max_num" IS '区域最大容量';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."zone_type" IS '区域类型，0-2号门，1-测试区，2-联络路，3-盐雾通道 4-洗车间,5一号门，6员工停车场，7测试停车场';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."zone_another_name" IS '区域简称';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."max_time" IS '疲劳提醒时间，单位：分钟';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."zone_control" IS '区域控制  0：正常  1：封场  2：包场  3：精准预约';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."create_by" IS '创建人';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."create_time" IS '创建时间';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."update_by" IS '更新人';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."update_time" IS '更新时间';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."remark" IS '备注';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."zone_phase" IS '1:一期  2:二期';
COMMENT ON COLUMN "public"."zone_copy2_11-25"."sort" IS '排序';
COMMENT ON TABLE "public"."zone_copy2_11-25" IS '试验区域表';

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sys_login_info_login_info_id_seq"
OWNED BY "public"."sys_login_info"."login_info_id";
SELECT setval('"public"."sys_login_info_login_info_id_seq"', 7, true);

-- ----------------------------
-- Primary Key structure for table audit_record
-- ----------------------------
ALTER TABLE "public"."audit_record" ADD CONSTRAINT "sys_c0035223" PRIMARY KEY ("audit_id");

-- ----------------------------
-- Primary Key structure for table audit_record_copy1
-- ----------------------------
ALTER TABLE "public"."audit_record_copy1" ADD CONSTRAINT "sys_c009999" PRIMARY KEY ("audit_id");

-- ----------------------------
-- Indexes structure for table booking_record
-- ----------------------------
CREATE INDEX "idx_obu" ON "public"."booking_record" USING btree (
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_order_zone" ON "public"."booking_record" USING btree (
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker_start_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_order_zone_obu" ON "public"."booking_record" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_order_zone_obu_start" ON "public"."booking_record" USING btree (
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker_start_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_order_zone_obu_time" ON "public"."booking_record" USING btree (
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trans_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table booking_record
-- ----------------------------
ALTER TABLE "public"."booking_record" ADD CONSTRAINT "sys_c0042252" PRIMARY KEY ("guid");

-- ----------------------------
-- Indexes structure for table car_pass
-- ----------------------------
CREATE INDEX "idx_in_guid" ON "public"."car_pass" USING btree (
  "in_guid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_pass_time" ON "public"."car_pass" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_out_type_zone_id" ON "public"."car_pass" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_ulid" ON "public"."car_pass" USING btree (
  "in_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_pass_time" ON "public"."car_pass" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_time_ulid" ON "public"."car_pass" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_type_zone_id" ON "public"."car_pass" USING btree (
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sticker_time_type" ON "public"."car_pass" USING btree (
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "in_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST
);

-- ----------------------------
-- Primary Key structure for table car_pass
-- ----------------------------
ALTER TABLE "public"."car_pass" ADD CONSTRAINT "sys_c0035219" PRIMARY KEY ("pass_id");

-- ----------------------------
-- Indexes structure for table car_pass20241202
-- ----------------------------
CREATE INDEX "idx_in_guid_copy2" ON "public"."car_pass20241202" USING btree (
  "in_guid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_pass_time_copy2" ON "public"."car_pass20241202" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_out_type_zone_id_copy2" ON "public"."car_pass20241202" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_ulid_copy2" ON "public"."car_pass20241202" USING btree (
  "in_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_pass_time_copy2" ON "public"."car_pass20241202" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_time_ulid_copy2" ON "public"."car_pass20241202" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_type_zone_id_copy2" ON "public"."car_pass20241202" USING btree (
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sticker_time_type_copy2" ON "public"."car_pass20241202" USING btree (
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "in_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST
);

-- ----------------------------
-- Primary Key structure for table car_pass20241202
-- ----------------------------
ALTER TABLE "public"."car_pass20241202" ADD CONSTRAINT "sys_c009836" PRIMARY KEY ("pass_id");

-- ----------------------------
-- Indexes structure for table car_pass_2024-10-29_backup
-- ----------------------------
CREATE INDEX "idx_in_guid_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "in_guid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_pass_time_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_out_type_zone_id_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_ulid_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "in_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_pass_time_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_time_ulid_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_type_zone_id_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sticker_time_type_copy1" ON "public"."car_pass_2024-10-29_backup" USING btree (
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "in_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST
);

-- ----------------------------
-- Primary Key structure for table car_pass_2024-10-29_backup
-- ----------------------------
ALTER TABLE "public"."car_pass_2024-10-29_backup" ADD CONSTRAINT "sys_c009468" PRIMARY KEY ("pass_id");

-- ----------------------------
-- Indexes structure for table car_pass_20250414
-- ----------------------------
CREATE INDEX "idx_in_guid_copy3" ON "public"."car_pass_20250414" USING btree (
  "in_guid" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_pass_time_copy3" ON "public"."car_pass_20250414" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_out_type_zone_id_copy3" ON "public"."car_pass_20250414" USING btree (
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_in_time_ulid_copy3" ON "public"."car_pass_20250414" USING btree (
  "in_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_pass_time_copy3" ON "public"."car_pass_20250414" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_time_ulid_copy3" ON "public"."car_pass_20250414" USING btree (
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_ulid" "pg_catalog"."numeric_ops" ASC NULLS LAST
);
CREATE INDEX "idx_out_type_zone_id_copy3" ON "public"."car_pass_20250414" USING btree (
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_sticker_time_type_copy3" ON "public"."car_pass_20250414" USING btree (
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "in_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "in_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "out_pass_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "out_pass_type" COLLATE "pg_catalog"."default" "pg_catalog"."bpchar_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST
);

-- ----------------------------
-- Primary Key structure for table car_pass_20250414
-- ----------------------------
ALTER TABLE "public"."car_pass_20250414" ADD CONSTRAINT "sys_c0011122" PRIMARY KEY ("pass_id");

-- ----------------------------
-- Indexes structure for table device_control_record
-- ----------------------------
CREATE INDEX "idx_ip_type_time" ON "public"."device_control_record" USING btree (
  "ip" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "device_type" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST
);

-- ----------------------------
-- Primary Key structure for table device_record
-- ----------------------------
ALTER TABLE "public"."device_record" ADD CONSTRAINT "sys_c0033681" PRIMARY KEY ("record_id");

-- ----------------------------
-- Primary Key structure for table driver_deduct_score
-- ----------------------------
ALTER TABLE "public"."driver_deduct_score" ADD CONSTRAINT "sys_c0033525" PRIMARY KEY ("deduct_id");

-- ----------------------------
-- Primary Key structure for table driver_level
-- ----------------------------
ALTER TABLE "public"."driver_level" ADD CONSTRAINT "sys_c0033476" PRIMARY KEY ("driver_level");

-- ----------------------------
-- Indexes structure for table driver_white
-- ----------------------------
CREATE INDEX "idx_card_id" ON "public"."driver_white" USING btree (
  "card_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_driver" ON "public"."driver_white" USING btree (
  "card_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "ic_card_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "operate_status" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST,
  "driver_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_ic_no" ON "public"."driver_white" USING btree (
  "ic_card_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_licence_no" ON "public"."driver_white" USING btree (
  "driver_licence_no" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_staus_photo" ON "public"."driver_white" USING btree (
  "operate_status" "pg_catalog"."numeric_ops" ASC NULLS LAST,
  "has_photo" "pg_catalog"."numeric_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table driver_white
-- ----------------------------
ALTER TABLE "public"."driver_white" ADD CONSTRAINT "sys_c0034709" PRIMARY KEY ("driver_id");

-- ----------------------------
-- Primary Key structure for table gate_device
-- ----------------------------
ALTER TABLE "public"."gate_device" ADD CONSTRAINT "sys_c0034711" PRIMARY KEY ("device_id");

-- ----------------------------
-- Primary Key structure for table gate_issue_record
-- ----------------------------
ALTER TABLE "public"."gate_issue_record" ADD CONSTRAINT "sys_c0034719" PRIMARY KEY ("issue_id");

-- ----------------------------
-- Primary Key structure for table gate_pass_record
-- ----------------------------
ALTER TABLE "public"."gate_pass_record" ADD CONSTRAINT "sys_c0034920" PRIMARY KEY ("pass_id");

-- ----------------------------
-- Primary Key structure for table lane
-- ----------------------------
ALTER TABLE "public"."lane" ADD CONSTRAINT "sys_c0032330" PRIMARY KEY ("ulid");

-- ----------------------------
-- Primary Key structure for table lane_copy1_11-25
-- ----------------------------
ALTER TABLE "public"."lane_copy1_11-25" ADD CONSTRAINT "sys_c009753" PRIMARY KEY ("ulid");

-- ----------------------------
-- Indexes structure for table order_record
-- ----------------------------
CREATE INDEX "idx_order" ON "public"."order_record" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trans_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST,
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_record
-- ----------------------------
ALTER TABLE "public"."order_record" ADD CONSTRAINT "sys_c0034552" PRIMARY KEY ("guid");

-- ----------------------------
-- Indexes structure for table order_record_11-20
-- ----------------------------
CREATE INDEX "idx_order_copy2" ON "public"."order_record_11-20" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trans_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST,
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_record_11-20
-- ----------------------------
ALTER TABLE "public"."order_record_11-20" ADD CONSTRAINT "sys_c009692" PRIMARY KEY ("guid");

-- ----------------------------
-- Indexes structure for table order_record_copy1
-- ----------------------------
CREATE INDEX "idx_order_copy1" ON "public"."order_record_copy1" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "sticker" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "zone_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trans_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST,
  "obu_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_record_copy1
-- ----------------------------
ALTER TABLE "public"."order_record_copy1" ADD CONSTRAINT "sys_c008663" PRIMARY KEY ("guid");

-- ----------------------------
-- Primary Key structure for table park_white
-- ----------------------------
ALTER TABLE "public"."park_white" ADD CONSTRAINT "sys_c008266" PRIMARY KEY ("car_id");

-- ----------------------------
-- Primary Key structure for table person
-- ----------------------------
ALTER TABLE "public"."person" ADD CONSTRAINT "sys_c0034027" PRIMARY KEY ("person_id");

-- ----------------------------
-- Primary Key structure for table recover_card_record
-- ----------------------------
ALTER TABLE "public"."recover_card_record" ADD CONSTRAINT "sys_c0035819" PRIMARY KEY ("recover_id");

-- ----------------------------
-- Indexes structure for table service_control_record
-- ----------------------------
CREATE INDEX "idx_monitor_id_time" ON "public"."service_control_record" USING btree (
  "monitor_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "create_time" "pg_catalog"."timestamp_ops" DESC NULLS FIRST
);

-- ----------------------------
-- Primary Key structure for table sip_user
-- ----------------------------
ALTER TABLE "public"."sip_user" ADD CONSTRAINT "sys_c008023" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table specific_obu
-- ----------------------------
ALTER TABLE "public"."specific_obu" ADD CONSTRAINT "sys_c0034659" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table staff
-- ----------------------------
ALTER TABLE "public"."staff" ADD CONSTRAINT "sys_c008254" PRIMARY KEY ("staff_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE "public"."sys_dict_data" ADD CONSTRAINT "sys_dict_data_pk" PRIMARY KEY ("dict_data_id");

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE "public"."sys_dict_type" ADD CONSTRAINT "sys_dict_type_pk" PRIMARY KEY ("dict_type_id");

-- ----------------------------
-- Primary Key structure for table sys_login_info
-- ----------------------------
ALTER TABLE "public"."sys_login_info" ADD CONSTRAINT "sys_login_info_pkey" PRIMARY KEY ("login_info_id");

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE "public"."sys_menu" ADD CONSTRAINT "sys_menu_pk" PRIMARY KEY ("menu_id");

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE "public"."sys_oper_log" ADD CONSTRAINT "sys_c0030239" PRIMARY KEY ("oper_id");

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE "public"."sys_role" ADD CONSTRAINT "sys_c0030234" PRIMARY KEY ("role_id");

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE "public"."sys_role_menu" ADD CONSTRAINT "sys_role_menu_pk" PRIMARY KEY ("role_id", "menu_id");

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE "public"."sys_user" ADD CONSTRAINT "sys_user_pk" PRIMARY KEY ("user_id");

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE "public"."sys_user_role" ADD CONSTRAINT "sys_c0030231" PRIMARY KEY ("user_id", "role_id");

-- ----------------------------
-- Primary Key structure for table user_audit
-- ----------------------------
ALTER TABLE "public"."user_audit" ADD CONSTRAINT "sys_c0035226" PRIMARY KEY ("level_id");

-- ----------------------------
-- Primary Key structure for table visitor
-- ----------------------------
ALTER TABLE "public"."visitor" ADD CONSTRAINT "sys_c008262" PRIMARY KEY ("visitor_id");

-- ----------------------------
-- Primary Key structure for table zone
-- ----------------------------
ALTER TABLE "public"."zone" ADD CONSTRAINT "sys_c0032328" PRIMARY KEY ("zone_id");

-- ----------------------------
-- Primary Key structure for table zone_copy1
-- ----------------------------
ALTER TABLE "public"."zone_copy1" ADD CONSTRAINT "sys_c009760" PRIMARY KEY ("zone_id");

-- ----------------------------
-- Primary Key structure for table zone_copy2_11-25
-- ----------------------------
ALTER TABLE "public"."zone_copy2_11-25" ADD CONSTRAINT "sys_c009764" PRIMARY KEY ("zone_id");
