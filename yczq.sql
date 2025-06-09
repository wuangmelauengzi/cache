/*
 Navicat Premium Dump SQL

 Source Server         : 172.16.2.107
 Source Server Type    : Oracle
 Source Server Version : 110200 (Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production)
 Source Host           : 172.16.2.107:41521
 Source Schema         : YCZQTWO

 Target Server Type    : Oracle
 Target Server Version : 110200 (Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production)
 File Encoding         : 65001

 TIMESTAMP: 09/06/2025 14:53:38
*/

-- ----------------------------
-- Table structure for AUDIT_RECORD
-- ----------------------------
DROP TABLE IF EXISTS audit_record;
CREATE TABLE audit_record (
  audit_id NUMERIC NOT NULL,
  pass_id NUMERIC,
  order_id VARCHAR(50) NOT NULL,
  obu_id VARCHAR(50),
  sticker VARCHAR(20) NOT NULL,
  licence_no VARCHAR(20),
  driver_name VARCHAR(20),
  zone_id VARCHAR(20),
  in_pass_time TIMESTAMP,
  out_pass_time TIMESTAMP,
  car_type CHAR(1),
  first_audit_status NUMERIC,
  submit_user_id NUMERIC,
  submit_user_name VARCHAR(30),
  first_agree_user_id NUMERIC,
  first_agree_user_name VARCHAR(50),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  during_time NUMERIC,
  second_audit_status NUMERIC,
  second_agree_user_id NUMERIC,
  second_agree_user_name VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.audit_id IS '主键';
COMMENT ON COLUMN audit_record.pass_id IS '通行记录ID';
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员姓名';
COMMENT ON COLUMN audit_record.zone_id IS '区域';
COMMENT ON COLUMN audit_record.in_pass_time IS '入场时间';
COMMENT ON COLUMN audit_record.out_pass_time IS '出场时间';
COMMENT ON COLUMN audit_record.car_type IS '车辆类型';
COMMENT ON COLUMN audit_record.first_audit_status IS '审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN audit_record.submit_user_id IS '提交人ID';
COMMENT ON COLUMN audit_record.submit_user_name IS '提交人名称';
COMMENT ON COLUMN audit_record.first_agree_user_id IS '审批人ID';
COMMENT ON COLUMN audit_record.first_agree_user_name IS '审批人名称';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.during_time IS '持续时长 单位：分';
COMMENT ON COLUMN audit_record.second_audit_status IS '一级审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN audit_record.second_agree_user_id IS '审批人ID';
COMMENT ON COLUMN audit_record.second_agree_user_name IS '审批人名称';
COMMENT ON TABLE audit_record IS '审核记录表';

-- ----------------------------
-- Table structure for AUDIT_RECORD_copy1
-- ----------------------------
DROP TABLE IF EXISTS audit_record_copy1;
CREATE TABLE audit_record_copy1 (
  audit_id NUMERIC NOT NULL,
  pass_id NUMERIC,
  order_id VARCHAR(50) NOT NULL,
  obu_id VARCHAR(50),
  sticker VARCHAR(20) NOT NULL,
  licence_no VARCHAR(20),
  driver_name VARCHAR(20),
  zone_id VARCHAR(20),
  in_pass_time TIMESTAMP,
  out_pass_time TIMESTAMP,
  car_type CHAR(1),
  first_audit_status NUMERIC,
  submit_user_id NUMERIC,
  submit_user_name VARCHAR(30),
  first_agree_user_id NUMERIC,
  first_agree_user_name VARCHAR(50),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  during_time NUMERIC,
  second_audit_status NUMERIC,
  second_agree_user_id NUMERIC,
  second_agree_user_name VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.audit_id IS '主键';
COMMENT ON COLUMN audit_record.pass_id IS '通行记录ID';
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员姓名';
COMMENT ON COLUMN audit_record.zone_id IS '区域';
COMMENT ON COLUMN audit_record.in_pass_time IS '入场时间';
COMMENT ON COLUMN audit_record.out_pass_time IS '出场时间';
COMMENT ON COLUMN audit_record.car_type IS '车辆类型';
COMMENT ON COLUMN audit_record.first_audit_status IS '审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN audit_record.submit_user_id IS '提交人ID';
COMMENT ON COLUMN audit_record.submit_user_name IS '提交人名称';
COMMENT ON COLUMN audit_record.first_agree_user_id IS '审批人ID';
COMMENT ON COLUMN audit_record.first_agree_user_name IS '审批人名称';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.during_time IS '持续时长 单位：分';
COMMENT ON COLUMN audit_record.second_audit_status IS '一级审核状态（0：待审批 1：审批通过 2：审批驳回）';
COMMENT ON COLUMN audit_record.second_agree_user_id IS '审批人ID';
COMMENT ON COLUMN audit_record.second_agree_user_name IS '审批人名称';
COMMENT ON TABLE audit_record_copy1 IS '审核记录表';

-- ----------------------------
-- Table structure for AXLE_RECORD
-- ----------------------------
DROP TABLE IF EXISTS axle_record;
CREATE TABLE axle_record (
  obu_id VARCHAR(30) NOT NULL,
  sticker VARCHAR(20) DEFAULT '',
  pass_time TIMESTAMP NOT NULL,
  mac_id VARCHAR(20),
  local_no VARCHAR(20),
  axis_num NUMERIC DEFAULT 0 NOT NULL,
  remark VARCHAR(100),
  build_time TIMESTAMP DEFAULT sysTIMESTAMP NOT NULL,
  zone_id VARCHAR(30) NOT NULL
)

;
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.pass_time IS '通行时间';
COMMENT ON COLUMN audit_record.mac_id IS '设备ID号';
COMMENT ON COLUMN audit_record.local_no IS '位置号，表示哪个点采集的';
COMMENT ON COLUMN audit_record.axis_num IS '车轴数';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.build_time IS '插入时间。';
COMMENT ON COLUMN audit_record.zone_id IS '存在区域的ID号，空为联络路，根据pointno定位';
COMMENT ON TABLE axle_record IS '(新)车轴数表';

-- ----------------------------
-- Table structure for BOOKING_LED
-- ----------------------------
DROP TABLE IF EXISTS booking_led;
CREATE TABLE booking_led (
  ulid NUMERIC NOT NULL,
  car_type VARCHAR(10),
  scene VARCHAR(10),
  font_color CHAR(1),
  first_line_content CHAR(1),
  first_line_msg VARCHAR(50),
  first_line_show_type CHAR(1),
  first_line_other_msg CHAR(1),
  second_line_content CHAR(1),
  second_line_msg VARCHAR(50),
  second_line_show_type CHAR(1),
  second_line_other_msg CHAR(1),
  third_line_content CHAR(1),
  third_line_msg VARCHAR(50),
  third_line_show_type CHAR(1),
  third_line_other_msg CHAR(1),
  fourth_line_content CHAR(1),
  fourth_line_msg VARCHAR(50),
  fourth_line_show_type CHAR(1),
  fourth_line_other_msg CHAR(1),
  voice_type CHAR(1),
  voice_content VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.ulid IS '车道编号';
COMMENT ON COLUMN audit_record.car_type IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN audit_record.scene IS '应用场景';
COMMENT ON COLUMN audit_record.font_color IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN audit_record.first_line_content IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.first_line_msg IS '第一行显示信息';
COMMENT ON COLUMN audit_record.first_line_show_type IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.first_line_other_msg IS '第一行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.second_line_content IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.second_line_msg IS '第二行显示信息';
COMMENT ON COLUMN audit_record.second_line_show_type IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.second_line_other_msg IS '第二行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.third_line_content IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.third_line_msg IS '第三行显示信息';
COMMENT ON COLUMN audit_record.third_line_show_type IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.third_line_other_msg IS '第三行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.fourth_line_content IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.fourth_line_msg IS '第四行显示信息';
COMMENT ON COLUMN audit_record.fourth_line_show_type IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.fourth_line_other_msg IS '第四行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.voice_type IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN audit_record.voice_content IS '声音内容';
COMMENT ON TABLE booking_led IS '车道LED配置表';

-- ----------------------------
-- Table structure for BOOKING_RECORD
-- ----------------------------
DROP TABLE IF EXISTS booking_record;
CREATE TABLE booking_record (
  order_id VARCHAR(100) NOT NULL,
  sticker VARCHAR(20) NOT NULL,
  zone_id VARCHAR(50),
  licence_no VARCHAR(20),
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  trans_time TIMESTAMP,
  obu_id VARCHAR(20),
  obu_time TIMESTAMP,
  sign NUMERIC,
  guid VARCHAR(50) NOT NULL,
  sticker_start_time TIMESTAMP,
  sticker_end_time TIMESTAMP,
  car_type VARCHAR(50),
  car_color VARCHAR(10),
  comp VARCHAR(60),
  obu_status NUMERIC,
  axle_numeric NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  uptimestamp_flag NUMERIC,
  booking_type NUMERIC DEFAULT 2,
  booking_company VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.zone_id IS '测试区域';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证编号';
COMMENT ON COLUMN audit_record.start_time IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.end_time IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.trans_time IS '获得订单时间';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.obu_time IS '绑定OBU时间';
COMMENT ON COLUMN audit_record.sign IS '标识，0-仅接受订单，1-0BU已记录，2-下发完成';
COMMENT ON COLUMN audit_record.guid IS '数据唯一编号';
COMMENT ON COLUMN audit_record.sticker_start_time IS '车辆有效期开始时间';
COMMENT ON COLUMN audit_record.sticker_end_time IS '车辆有效期结束时间';
COMMENT ON COLUMN audit_record.car_type IS '车型';
COMMENT ON COLUMN audit_record.car_color IS '车身颜色';
COMMENT ON COLUMN audit_record.comp IS '所属厂家';
COMMENT ON COLUMN audit_record.obu_status IS 'OBU状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN audit_record.axle_numeric IS '车轴数';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.uptimestamp_flag IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收IC卡待同步）';
COMMENT ON COLUMN audit_record.booking_type IS '包场用途（1：试验；2：活动）';
COMMENT ON COLUMN audit_record.booking_company IS '包场单位';
COMMENT ON TABLE booking_record IS '包场订单表';

-- ----------------------------
-- Table structure for CAR_PASS
-- ----------------------------
DROP TABLE IF EXISTS car_pass;
CREATE TABLE car_pass (
  in_guid VARCHAR(50),
  order_id VARCHAR(50),
  obu_id VARCHAR(20),
  sticker VARCHAR(20),
  licence_no VARCHAR(20),
  in_pass_time TIMESTAMP,
  in_ulid NUMERIC,
  in_pass_type CHAR(1),
  in_image_path VARCHAR(200),
  out_pass_time TIMESTAMP,
  out_ulid NUMERIC,
  out_pass_type CHAR(1),
  out_image_path VARCHAR(200),
  during_time NUMERIC,
  zone_id VARCHAR(20),
  push_status CHAR(1),
  car_type CHAR(1),
  axle_num NUMERIC,
  order_axle NUMERIC,
  distance NUMERIC,
  high_speed NUMERIC,
  axle_flag NUMERIC,
  axle_image VARCHAR(200),
  in_lane_name VARCHAR(50),
  out_lane_name VARCHAR(50),
  in_lane_function CHAR(1),
  out_lane_function CHAR(1),
  card_id VARCHAR(20),
  ic_card_no VARCHAR(20),
  driver_name VARCHAR(20),
  axis_total_weigh NUMERIC,
  out_guid VARCHAR(255),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  pass_id NUMERIC NOT NULL,
  axis_weigh NUMERIC,
  weigh_image VARCHAR(200)
)

;
COMMENT ON COLUMN audit_record.in_guid IS '入场GUID';
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证号';
COMMENT ON COLUMN audit_record.in_pass_time IS '入场时间';
COMMENT ON COLUMN audit_record.in_ulid IS '入场车道';
COMMENT ON COLUMN audit_record.in_pass_type IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN audit_record.in_image_path IS '入场图片路径';
COMMENT ON COLUMN audit_record.out_pass_time IS '出场时间';
COMMENT ON COLUMN audit_record.out_ulid IS '出场车道ULID';
COMMENT ON COLUMN audit_record.out_pass_type IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN audit_record.out_image_path IS '出场图片路径';
COMMENT ON COLUMN audit_record.during_time IS '持续时长 单位：秒';
COMMENT ON COLUMN audit_record.zone_id IS '区域ID';
COMMENT ON COLUMN audit_record.push_status IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN audit_record.car_type IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN audit_record.axle_num IS '车轴数';
COMMENT ON COLUMN audit_record.order_axle IS '订单车轴数';
COMMENT ON COLUMN audit_record.distance IS '距离';
COMMENT ON COLUMN audit_record.high_speed IS '速度';
COMMENT ON COLUMN audit_record.axle_flag IS '车轴类型';
COMMENT ON COLUMN audit_record.axle_image IS '车轴图片';
COMMENT ON COLUMN audit_record.in_lane_name IS '入场车道名称';
COMMENT ON COLUMN audit_record.out_lane_name IS '出场车道名称';
COMMENT ON COLUMN audit_record.in_lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.out_lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.card_id IS '身份证号G2';
COMMENT ON COLUMN audit_record.ic_card_no IS 'IC卡号G2';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员姓名G2';
COMMENT ON COLUMN audit_record.axis_total_weigh IS '称重（总重）';
COMMENT ON COLUMN audit_record.out_guid IS '出场GUID';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.pass_id IS '主键ID';
COMMENT ON COLUMN audit_record.axis_weigh IS '称重轴数';
COMMENT ON COLUMN audit_record.weigh_image IS '称重图片';
COMMENT ON TABLE car_pass IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for CAR_PASS20241202
-- ----------------------------
DROP TABLE IF EXISTS car_pass20241202;
CREATE TABLE car_pass20241202 (
  in_guid VARCHAR(50),
  order_id VARCHAR(50),
  obu_id VARCHAR(20),
  sticker VARCHAR(20),
  licence_no VARCHAR(20),
  in_pass_time TIMESTAMP,
  in_ulid NUMERIC,
  in_pass_type CHAR(1),
  in_image_path VARCHAR(200),
  out_pass_time TIMESTAMP,
  out_ulid NUMERIC,
  out_pass_type CHAR(1),
  out_image_path VARCHAR(200),
  during_time NUMERIC,
  zone_id VARCHAR(20),
  push_status CHAR(1),
  car_type CHAR(1),
  axle_num NUMERIC,
  order_axle NUMERIC,
  distance NUMERIC,
  high_speed NUMERIC,
  axle_flag NUMERIC,
  axle_image VARCHAR(200),
  in_lane_name VARCHAR(50),
  out_lane_name VARCHAR(50),
  in_lane_function CHAR(1),
  out_lane_function CHAR(1),
  card_id VARCHAR(20),
  ic_card_no VARCHAR(20),
  driver_name VARCHAR(20),
  axis_total_weigh NUMERIC,
  out_guid VARCHAR(255),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  pass_id NUMERIC NOT NULL,
  axis_weigh NUMERIC,
  weigh_image VARCHAR(200)
)

;
COMMENT ON COLUMN audit_record.in_guid IS '入场GUID';
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证号';
COMMENT ON COLUMN audit_record.in_pass_time IS '入场时间';
COMMENT ON COLUMN audit_record.in_ulid IS '入场车道';
COMMENT ON COLUMN audit_record.in_pass_type IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN audit_record.in_image_path IS '入场图片路径';
COMMENT ON COLUMN audit_record.out_pass_time IS '出场时间';
COMMENT ON COLUMN audit_record.out_ulid IS '出场车道ULID';
COMMENT ON COLUMN audit_record.out_pass_type IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN audit_record.out_image_path IS '出场图片路径';
COMMENT ON COLUMN audit_record.during_time IS '持续时长 单位：秒';
COMMENT ON COLUMN audit_record.zone_id IS '区域ID';
COMMENT ON COLUMN audit_record.push_status IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN audit_record.car_type IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN audit_record.axle_num IS '车轴数';
COMMENT ON COLUMN audit_record.order_axle IS '订单车轴数';
COMMENT ON COLUMN audit_record.distance IS '距离';
COMMENT ON COLUMN audit_record.high_speed IS '速度';
COMMENT ON COLUMN audit_record.axle_flag IS '车轴类型';
COMMENT ON COLUMN audit_record.axle_image IS '车轴图片';
COMMENT ON COLUMN audit_record.in_lane_name IS '入场车道名称';
COMMENT ON COLUMN audit_record.out_lane_name IS '出场车道名称';
COMMENT ON COLUMN audit_record.in_lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.out_lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.card_id IS '身份证号G2';
COMMENT ON COLUMN audit_record.ic_card_no IS 'IC卡号G2';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员姓名G2';
COMMENT ON COLUMN audit_record.axis_total_weigh IS '称重（总重）';
COMMENT ON COLUMN audit_record.out_guid IS '出场GUID';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.pass_id IS '主键ID';
COMMENT ON COLUMN audit_record.axis_weigh IS '称重轴数';
COMMENT ON COLUMN audit_record.weigh_image IS '称重图片';
COMMENT ON TABLE car_pass20241202 IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for CAR_PASS_2024-10-29_backup
-- ----------------------------
DROP TABLE IF EXISTS car_pass_2024-10-29_backup;
CREATE TABLE car_pass_2024-10-29_backup (
  in_guid VARCHAR(50),
  order_id VARCHAR(50),
  obu_id VARCHAR(20),
  sticker VARCHAR(20),
  licence_no VARCHAR(20),
  in_pass_time TIMESTAMP,
  in_ulid NUMERIC,
  in_pass_type CHAR(1),
  in_image_path VARCHAR(200),
  out_pass_time TIMESTAMP,
  out_ulid NUMERIC,
  out_pass_type CHAR(1),
  out_image_path VARCHAR(200),
  during_time NUMERIC,
  zone_id VARCHAR(20),
  push_status CHAR(1),
  car_type CHAR(1),
  axle_num NUMERIC,
  order_axle NUMERIC,
  distance NUMERIC,
  high_speed NUMERIC,
  axle_flag NUMERIC,
  axle_image VARCHAR(200),
  in_lane_name VARCHAR(50),
  out_lane_name VARCHAR(50),
  in_lane_function CHAR(1),
  out_lane_function CHAR(1),
  card_id VARCHAR(20),
  ic_card_no VARCHAR(20),
  driver_name VARCHAR(20),
  axis_total_weigh NUMERIC,
  out_guid VARCHAR(255),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  pass_id NUMERIC NOT NULL,
  axis_weigh NUMERIC,
  weigh_image VARCHAR(200)
)

;
COMMENT ON COLUMN audit_record.in_guid IS '入场GUID';
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证号';
COMMENT ON COLUMN audit_record.in_pass_time IS '入场时间';
COMMENT ON COLUMN audit_record.in_ulid IS '入场车道';
COMMENT ON COLUMN audit_record.in_pass_type IS '入场通行状态,0-自动，1-人工，2-未入场，3-人工补录入场';
COMMENT ON COLUMN audit_record.in_image_path IS '入场图片路径';
COMMENT ON COLUMN audit_record.out_pass_time IS '出场时间';
COMMENT ON COLUMN audit_record.out_ulid IS '出场车道ULID';
COMMENT ON COLUMN audit_record.out_pass_type IS '出场通行状态,0-自动，1-人工，2-未出场，3-系统遗漏，4-人工补录出场';
COMMENT ON COLUMN audit_record.out_image_path IS '出场图片路径';
COMMENT ON COLUMN audit_record.during_time IS '持续时长 单位：秒';
COMMENT ON COLUMN audit_record.zone_id IS '区域ID';
COMMENT ON COLUMN audit_record.push_status IS '当前记录是否推送  0：未推送  1：已推送';
COMMENT ON COLUMN audit_record.car_type IS '车辆类型，0-公务车，1-测试车';
COMMENT ON COLUMN audit_record.axle_num IS '车轴数';
COMMENT ON COLUMN audit_record.order_axle IS '订单车轴数';
COMMENT ON COLUMN audit_record.distance IS '距离';
COMMENT ON COLUMN audit_record.high_speed IS '速度';
COMMENT ON COLUMN audit_record.axle_flag IS '车轴类型';
COMMENT ON COLUMN audit_record.axle_image IS '车轴图片';
COMMENT ON COLUMN audit_record.in_lane_name IS '入场车道名称';
COMMENT ON COLUMN audit_record.out_lane_name IS '出场车道名称';
COMMENT ON COLUMN audit_record.in_lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.out_lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.card_id IS '身份证号G2';
COMMENT ON COLUMN audit_record.ic_card_no IS 'IC卡号G2';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员姓名G2';
COMMENT ON COLUMN audit_record.axis_total_weigh IS '称重（总重）';
COMMENT ON COLUMN audit_record.out_guid IS '出场GUID';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.pass_id IS '主键ID';
COMMENT ON COLUMN audit_record.axis_weigh IS '称重轴数';
COMMENT ON COLUMN audit_record.weigh_image IS '称重图片';
COMMENT ON TABLE car_pass_2024-10-29_backup IS '测试道区车辆通行表';

-- ----------------------------
-- Table structure for DEVICE_CONTROL
-- ----------------------------
DROP TABLE IF EXISTS device_control;
CREATE TABLE device_control (
  ip VARCHAR(255) NOT NULL,
  device_type NUMERIC,
  device_name VARCHAR(255),
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.ip IS '设备IP';
COMMENT ON COLUMN audit_record.device_type IS '设备类型：0:相机 1:天线 2:地磅 3:全景相机 4:LED';
COMMENT ON COLUMN audit_record.device_name IS '设备名称（报表维护）';

-- ----------------------------
-- Table structure for DEVICE_CONTROL_RECORD
-- ----------------------------
DROP TABLE IF EXISTS device_control_record;
CREATE TABLE device_control_record (
  ip VARCHAR(255) NOT NULL,
  device_type NUMERIC,
  device_status NUMERIC,
  upload_time VARCHAR(255),
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.ip IS '设备IP';
COMMENT ON COLUMN audit_record.device_type IS '设备类型：0:相机 1:天线 2:地磅 3:全景相机 4:LED';
COMMENT ON COLUMN audit_record.device_status IS '设备状态： 0:在线 1:离线';
COMMENT ON COLUMN audit_record.upload_time IS '上报时间';

-- ----------------------------
-- Table structure for DEVICE_RECORD
-- ----------------------------
DROP TABLE IF EXISTS device_record;
CREATE TABLE device_record (
  record_id NUMERIC NOT NULL,
  zone_id VARCHAR(30),
  zone_name VARCHAR(255),
  time TIMESTAMP,
  event VARCHAR(255),
  status CHAR(1),
  mac_id VARCHAR(50),
  mac_name VARCHAR(255),
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.record_id IS '主键';
COMMENT ON COLUMN audit_record.zone_id IS '区域编号';
COMMENT ON COLUMN audit_record.zone_name IS '区域名称';
COMMENT ON COLUMN audit_record.time IS '巡检时间';
COMMENT ON COLUMN audit_record.event IS '事件内容';
COMMENT ON COLUMN audit_record.status IS '状态0正常1异常';
COMMENT ON COLUMN audit_record.mac_id IS '设备ID';
COMMENT ON COLUMN audit_record.mac_name IS '设备名称';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE device_record IS '设备巡检记录表';

-- ----------------------------
-- Table structure for DRIVER_DEDUCT_SCORE
-- ----------------------------
DROP TABLE IF EXISTS driver_deduct_score;
CREATE TABLE driver_deduct_score (
  deduct_id NUMERIC NOT NULL,
  licence_no VARCHAR(20),
  deduct NUMERIC,
  current_score NUMERIC,
  original_score NUMERIC,
  reason VARCHAR(200),
  operate_time TIMESTAMP,
  upload CHAR(1),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.deduct_id IS 'ID';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证号';
COMMENT ON COLUMN audit_record.deduct IS '扣分，-1表示扣1分,1标识增1分';
COMMENT ON COLUMN audit_record.current_score IS '剩余得分';
COMMENT ON COLUMN audit_record.original_score IS '原始得分';
COMMENT ON COLUMN audit_record.reason IS '扣分原因';
COMMENT ON COLUMN audit_record.operate_time IS '操作时间';
COMMENT ON COLUMN audit_record.upload IS '上传标识，0-未上传，1-已上传';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE driver_deduct_score IS '驾驶员扣分记录';

-- ----------------------------
-- Table structure for DRIVER_LEVEL
-- ----------------------------
DROP TABLE IF EXISTS driver_level;
CREATE TABLE driver_level (
  driver_level VARCHAR(100) DEFAULT '' NOT NULL,
  zone_ids VARCHAR(1024) DEFAULT '',
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.driver_level IS '驾驶员等级';
COMMENT ON COLUMN audit_record.zone_ids IS '允许通行的区域号(以；分割)';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE driver_level IS '驾驶员等级表';

-- ----------------------------
-- Table structure for DRIVER_WHITE
-- ----------------------------
DROP TABLE IF EXISTS driver_white;
CREATE TABLE driver_white (
  driver_id NUMERIC NOT NULL,
  driver_name VARCHAR(50) NOT NULL,
  driver_level VARCHAR(100),
  driver_expired_time TIMESTAMP,
  driver_score NUMERIC,
  driver_licence_no VARCHAR(20),
  driver_type CHAR(1),
  driver_start_time TIMESTAMP,
  driver_end_time TIMESTAMP,
  insurance_expired_time TIMESTAMP,
  card_id VARCHAR(40) NOT NULL,
  ic_card_no VARCHAR(20),
  ic_card_type CHAR(1),
  ic_card_id VARCHAR(20),
  company VARCHAR(20),
  operate_status NUMERIC,
  photo_url VARCHAR(300),
  has_photo NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  uptimestamp_flag NUMERIC,
  delete_flag NUMERIC,
  face_flag NUMERIC DEFAULT 0
)

;
COMMENT ON COLUMN audit_record.driver_id IS '主键';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员姓名';
COMMENT ON COLUMN audit_record.driver_level IS '驾驶证等级';
COMMENT ON COLUMN audit_record.driver_expired_time IS '驾驶证有效期';
COMMENT ON COLUMN audit_record.driver_score IS '驾驶员分数';
COMMENT ON COLUMN audit_record.driver_licence_no IS '驾驶证号';
COMMENT ON COLUMN audit_record.driver_type IS '驾驶员类型，0-试验人员，1-驾驶员';
COMMENT ON COLUMN audit_record.driver_start_time IS '驾驶员有效期开始时间';
COMMENT ON COLUMN audit_record.driver_end_time IS '驾驶员有效期结束时间';
COMMENT ON COLUMN audit_record.insurance_expired_time IS '驾驶员保险有效期';
COMMENT ON COLUMN audit_record.card_id IS '身份证号';
COMMENT ON COLUMN audit_record.ic_card_no IS 'IC卡卡号';
COMMENT ON COLUMN audit_record.ic_card_type IS 'IC卡类型。枚举类型：0-长期，1-临时，2-其它';
COMMENT ON COLUMN audit_record.ic_card_id IS '人卡编号';
COMMENT ON COLUMN audit_record.company IS '所属厂家';
COMMENT ON COLUMN audit_record.operate_status IS '操作结果状态（0：待下发，1：待删除  2：下发成功  3：下发失败 4：下发异常  5：删除成功 6：删除失败  7：删除异常）';
COMMENT ON COLUMN audit_record.photo_url IS '图片路径';
COMMENT ON COLUMN audit_record.has_photo IS '0: 没有图片 1：有图片';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.uptimestamp_flag IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收IC卡待同步）';
COMMENT ON COLUMN audit_record.delete_flag IS '是否删除（0-未删除 1-已删除）';
COMMENT ON COLUMN audit_record.face_flag IS '人脸同步（0-不需要同步，1-同步新增或者修改，2-删除人脸）';
COMMENT ON TABLE driver_white IS '驾驶员白名单';

-- ----------------------------
-- Table structure for EXCEPTION_RECORD
-- ----------------------------
DROP TABLE IF EXISTS exception_record;
CREATE TABLE exception_record (
  zone_id VARCHAR(50) NOT NULL,
  ulid NUMERIC,
  obu_id VARCHAR(20),
  sticker VARCHAR(20),
  ic_card_no VARCHAR(50),
  request_time TIMESTAMP,
  content VARCHAR(200),
  remark VARCHAR(200)
)

;
COMMENT ON COLUMN audit_record.zone_id IS '区域ID';
COMMENT ON COLUMN audit_record.ulid IS '车道ID';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU';
COMMENT ON COLUMN audit_record.sticker IS '车贴';
COMMENT ON COLUMN audit_record.ic_card_no IS 'IC卡号';
COMMENT ON COLUMN audit_record.request_time IS '记录产生时间即请求时间';
COMMENT ON COLUMN audit_record.content IS '请求异常内容';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE exception_record IS '过车异常记录表';

-- ----------------------------
-- Table structure for FATIGUE_DRIVE_RECORD
-- ----------------------------
DROP TABLE IF EXISTS fatigue_drive_record;
CREATE TABLE fatigue_drive_record (
  licence_no VARCHAR(20),
  total_time NUMERIC(10,0),
  zone_id VARCHAR(50),
  zone_name VARCHAR(20),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.licence_no IS '驾驶员驾驶证号';
COMMENT ON COLUMN audit_record.total_time IS '总时长';
COMMENT ON COLUMN audit_record.zone_id IS '测试区域号';
COMMENT ON COLUMN audit_record.zone_name IS '测试区域名称';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE fatigue_drive_record IS '疲劳驾驶记录';

-- ----------------------------
-- Table structure for GATE_DEVICE
-- ----------------------------
DROP TABLE IF EXISTS gate_device;
CREATE TABLE gate_device (
  device_ulid VARCHAR(50) NOT NULL,
  direction NUMERIC,
  device_name VARCHAR(100),
  device_ip VARCHAR(20),
  tlc_ip VARCHAR(20),
  device_type NUMERIC,
  device_use_type NUMERIC,
  device_status NUMERIC,
  device_password VARCHAR(50),
  device_area NUMERIC,
  remark VARCHAR(200),
  device_id NUMERIC NOT NULL,
  device_verify_type NUMERIC,
  port VARCHAR(20)
)

;
COMMENT ON COLUMN audit_record.device_ulid IS '闸机ULID号';
COMMENT ON COLUMN audit_record.direction IS '闸机方向 （0：入场  1：出场）';
COMMENT ON COLUMN audit_record.device_name IS '设备名称';
COMMENT ON COLUMN audit_record.device_ip IS '人脸识别机IP';
COMMENT ON COLUMN audit_record.tlc_ip IS '闸机控制器IP';
COMMENT ON COLUMN audit_record.device_type IS '设备类型 1：慕言2：宇泛';
COMMENT ON COLUMN audit_record.device_use_type IS '0: 不需要下发拍照设备 1：需要下发试验场设备';
COMMENT ON COLUMN audit_record.device_status IS '0:禁用 1：启用';
COMMENT ON COLUMN audit_record.device_password IS '宇泛设备密码';
COMMENT ON COLUMN audit_record.device_area IS '0：一期 1：二期';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.device_id IS '主键';
COMMENT ON COLUMN audit_record.device_verify_type IS '闸机验证方式（0：人脸加IC卡  1：人脸  2：IC卡  3：人脸或IC卡 ）';
COMMENT ON COLUMN audit_record.port IS '端口';
COMMENT ON TABLE gate_device IS '闸机设备表';

-- ----------------------------
-- Table structure for GATE_ISSUE_RECORD
-- ----------------------------
DROP TABLE IF EXISTS gate_issue_record;
CREATE TABLE gate_issue_record (
  issue_id NUMERIC NOT NULL,
  driver_id NUMERIC NOT NULL,
  card_id VARCHAR(40) NOT NULL,
  ic_card_no VARCHAR(40),
  device_ulid VARCHAR(50) NOT NULL,
  direction NUMERIC,
  device_name VARCHAR(100) NOT NULL,
  issue_status NUMERIC NOT NULL,
  issue_down_timestamp TIMESTAMP,
  issue_del_timestamp TIMESTAMP,
  abnormal_status NUMERIC NOT NULL,
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(300),
  device_id NUMERIC NOT NULL,
  driver_name VARCHAR(20)
)

;
COMMENT ON COLUMN audit_record.issue_id IS '主键ID';
COMMENT ON COLUMN audit_record.driver_id IS '白名单人员ID';
COMMENT ON COLUMN audit_record.card_id IS '身份证号';
COMMENT ON COLUMN audit_record.ic_card_no IS 'IC卡卡号';
COMMENT ON COLUMN audit_record.device_ulid IS '闸机ULID号';
COMMENT ON COLUMN audit_record.direction IS '闸机方向 （0：入场  1：出场）';
COMMENT ON COLUMN audit_record.device_name IS '设备名称';
COMMENT ON COLUMN audit_record.issue_status IS '下发状态（2：下发成功  3：下发失败 5：删除成功 6：删除失败）';
COMMENT ON COLUMN audit_record.issue_down_timestamp IS '下发日期';
COMMENT ON COLUMN audit_record.issue_del_timestamp IS '删除日期';
COMMENT ON COLUMN audit_record.abnormal_status IS '0：无异常 1：IP不通 2：其他异常';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.device_id IS '设备ID';
COMMENT ON COLUMN audit_record.driver_name IS '人员姓名';
COMMENT ON TABLE gate_issue_record IS '人脸下发记录';

-- ----------------------------
-- Table structure for GATE_PASS_RECORD
-- ----------------------------
DROP TABLE IF EXISTS gate_pass_record;
CREATE TABLE gate_pass_record (
  pass_id NUMERIC NOT NULL,
  person_name VARCHAR(255),
  card_id VARCHAR(255),
  ic_card VARCHAR(255),
  pass_time TIMESTAMP,
  ulid VARCHAR(255),
  device_name VARCHAR(255),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  push_status VARCHAR(255) DEFAULT 0
)

;
COMMENT ON COLUMN audit_record.pass_id IS '主键ID';
COMMENT ON COLUMN audit_record.person_name IS '人员姓名';
COMMENT ON COLUMN audit_record.card_id IS '身份证号';
COMMENT ON COLUMN audit_record.ic_card IS 'IC卡号';
COMMENT ON COLUMN audit_record.pass_time IS '通行时间';
COMMENT ON COLUMN audit_record.ulid IS 'ULID';
COMMENT ON COLUMN audit_record.device_name IS '设备名称';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.push_status IS '0未上传1已上传';
COMMENT ON TABLE gate_pass_record IS '人行通行记录';

-- ----------------------------
-- Table structure for LANE
-- ----------------------------
DROP TABLE IF EXISTS lane;
CREATE TABLE lane (
  ulid NUMERIC NOT NULL,
  lane_name VARCHAR(60) NOT NULL,
  lane_type CHAR(1) NOT NULL,
  zone_id VARCHAR(20),
  ip VARCHAR(20) NOT NULL,
  magic_key VARCHAR(32),
  verify_type VARCHAR(50),
  lane_function CHAR(1),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.ulid IS '车道ULID编号';
COMMENT ON COLUMN audit_record.lane_name IS '车道名称';
COMMENT ON COLUMN audit_record.lane_type IS '方向，0-in，1-out';
COMMENT ON COLUMN audit_record.zone_id IS '试验区域编号';
COMMENT ON COLUMN audit_record.ip IS '控制器IP地址';
COMMENT ON COLUMN audit_record.magic_key IS '车道登录用到的加密字段';
COMMENT ON COLUMN audit_record.verify_type IS '验证类型 读取字典数据(lane_verify_type)';
COMMENT ON COLUMN audit_record.lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE lane IS '车道表';

-- ----------------------------
-- Table structure for LANE_LED
-- ----------------------------
DROP TABLE IF EXISTS lane_led;
CREATE TABLE lane_led (
  ulid NUMERIC NOT NULL,
  car_type VARCHAR(10),
  scene VARCHAR(10),
  font_color CHAR(1),
  first_line_content CHAR(1),
  first_line_msg VARCHAR(50),
  first_line_show_type CHAR(1),
  first_line_other_msg CHAR(1),
  second_line_content CHAR(1),
  second_line_msg VARCHAR(50),
  second_line_show_type CHAR(1),
  second_line_other_msg CHAR(1),
  third_line_content CHAR(1),
  third_line_msg VARCHAR(50),
  third_line_show_type CHAR(1),
  third_line_other_msg CHAR(1),
  fourth_line_content CHAR(1),
  fourth_line_msg VARCHAR(50),
  fourth_line_show_type CHAR(1),
  fourth_line_other_msg CHAR(1),
  voice_type CHAR(1),
  voice_content VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.ulid IS '车道编号';
COMMENT ON COLUMN audit_record.car_type IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN audit_record.scene IS '应用场景';
COMMENT ON COLUMN audit_record.font_color IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN audit_record.first_line_content IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.first_line_msg IS '第一行显示信息';
COMMENT ON COLUMN audit_record.first_line_show_type IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.first_line_other_msg IS '第一行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.second_line_content IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.second_line_msg IS '第二行显示信息';
COMMENT ON COLUMN audit_record.second_line_show_type IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.second_line_other_msg IS '第二行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.third_line_content IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.third_line_msg IS '第三行显示信息';
COMMENT ON COLUMN audit_record.third_line_show_type IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.third_line_other_msg IS '第三行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.fourth_line_content IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.fourth_line_msg IS '第四行显示信息';
COMMENT ON COLUMN audit_record.fourth_line_show_type IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.fourth_line_other_msg IS '第四行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.voice_type IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN audit_record.voice_content IS '声音内容';
COMMENT ON TABLE lane_led IS '车道LED配置表';

-- ----------------------------
-- Table structure for LANE_LED_copy1_11-25
-- ----------------------------
DROP TABLE IF EXISTS lane_led_copy1_11-25;
CREATE TABLE lane_led_copy1_11-25 (
  ulid NUMERIC NOT NULL,
  car_type VARCHAR(10),
  scene VARCHAR(10),
  font_color CHAR(1),
  first_line_content CHAR(1),
  first_line_msg VARCHAR(50),
  first_line_show_type CHAR(1),
  first_line_other_msg CHAR(1),
  second_line_content CHAR(1),
  second_line_msg VARCHAR(50),
  second_line_show_type CHAR(1),
  second_line_other_msg CHAR(1),
  third_line_content CHAR(1),
  third_line_msg VARCHAR(50),
  third_line_show_type CHAR(1),
  third_line_other_msg CHAR(1),
  fourth_line_content CHAR(1),
  fourth_line_msg VARCHAR(50),
  fourth_line_show_type CHAR(1),
  fourth_line_other_msg CHAR(1),
  voice_type CHAR(1),
  voice_content VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.ulid IS '车道编号';
COMMENT ON COLUMN audit_record.car_type IS '车类型(0:公务车1:试验车)';
COMMENT ON COLUMN audit_record.scene IS '应用场景';
COMMENT ON COLUMN audit_record.font_color IS '字体显示颜色（0：红色  1：蓝色  2：绿色）';
COMMENT ON COLUMN audit_record.first_line_content IS '第一行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.first_line_msg IS '第一行显示信息';
COMMENT ON COLUMN audit_record.first_line_show_type IS '第一行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.first_line_other_msg IS '第一行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.second_line_content IS '第二行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.second_line_msg IS '第二行显示信息';
COMMENT ON COLUMN audit_record.second_line_show_type IS '第二行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.second_line_other_msg IS '第二行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.third_line_content IS '第三行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.third_line_msg IS '第三行显示信息';
COMMENT ON COLUMN audit_record.third_line_show_type IS '第三行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.third_line_other_msg IS '第三行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.fourth_line_content IS '第四行显示内容（0：配置信息 1：其他信息）';
COMMENT ON COLUMN audit_record.fourth_line_msg IS '第四行显示信息';
COMMENT ON COLUMN audit_record.fourth_line_show_type IS '第四行显示方式（1：固定  5：滚动）';
COMMENT ON COLUMN audit_record.fourth_line_other_msg IS '第四行展示其他信息(0：OBU，1：时间)';
COMMENT ON COLUMN audit_record.voice_type IS '声音类型（0：读取字段  1：自定义）';
COMMENT ON COLUMN audit_record.voice_content IS '声音内容';
COMMENT ON TABLE lane_led_copy1_11-25 IS '车道LED配置表';

-- ----------------------------
-- Table structure for LANE_copy1_11-25
-- ----------------------------
DROP TABLE IF EXISTS lane_copy1_11-25;
CREATE TABLE lane_copy1_11-25 (
  ulid NUMERIC NOT NULL,
  lane_name VARCHAR(40) NOT NULL,
  lane_type CHAR(1) NOT NULL,
  zone_id VARCHAR(20),
  ip VARCHAR(20) NOT NULL,
  magic_key VARCHAR(32),
  verify_type VARCHAR(50),
  lane_function CHAR(1),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.ulid IS '车道ULID编号';
COMMENT ON COLUMN audit_record.lane_name IS '车道名称';
COMMENT ON COLUMN audit_record.lane_type IS '方向，0-in，1-out';
COMMENT ON COLUMN audit_record.zone_id IS '试验区域编号';
COMMENT ON COLUMN audit_record.ip IS '控制器IP地址';
COMMENT ON COLUMN audit_record.magic_key IS '车道登录用到的加密字段';
COMMENT ON COLUMN audit_record.verify_type IS '验证类型 读取字典数据(lane_verify_type)';
COMMENT ON COLUMN audit_record.lane_function IS '0-试验道路 1-其他道路（试验道路写入订单数据）';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE lane_copy1_11-25 IS '车道表';

-- ----------------------------
-- Table structure for LED_DICT
-- ----------------------------
DROP TABLE IF EXISTS led_dict;
CREATE TABLE led_dict (
  key VARCHAR(255),
  value VARCHAR(255),
  zonetype NUMERIC(10,0),
  keydescribe VARCHAR(255)
)

;

-- ----------------------------
-- Table structure for OBU_READ_COUNT
-- ----------------------------
DROP TABLE IF EXISTS obu_read_count;
CREATE TABLE obu_read_count (
  obu VARCHAR(255),
  count NUMERIC,
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.obu IS 'OBU
';
COMMENT ON COLUMN audit_record.count IS 'OBU读取次数';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';

-- ----------------------------
-- Table structure for OPERATION
-- ----------------------------
DROP TABLE IF EXISTS operation;
CREATE TABLE operation (
  operate_id NVARCHAR2(255) NOT NULL,
  channel VARCHAR(255),
  request_ip VARCHAR(255),
  request_url VARCHAR(255),
  request_args VARCHAR(2055),
  request_timestamp TIMESTAMP,
  result_data LONG,
  remark VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.operate_id IS '操作Id';
COMMENT ON COLUMN audit_record.channel IS '身份';
COMMENT ON COLUMN audit_record.request_ip IS '请求ip';
COMMENT ON COLUMN audit_record.request_url IS '请求路径';
COMMENT ON COLUMN audit_record.request_args IS '请求进入参数';
COMMENT ON COLUMN audit_record.request_timestamp IS '请求时间';
COMMENT ON COLUMN audit_record.result_data IS '返回参数';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE operation IS '外部调用操作记录表';

-- ----------------------------
-- Table structure for ORDER_RECORD
-- ----------------------------
DROP TABLE IF EXISTS order_record;
CREATE TABLE order_record (
  order_id VARCHAR(100) NOT NULL,
  sticker VARCHAR(20) NOT NULL,
  zone_id VARCHAR(50),
  licence_no VARCHAR(20),
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  trans_time TIMESTAMP,
  obu_id VARCHAR(20),
  obu_time TIMESTAMP,
  sign NUMERIC,
  guid VARCHAR(50) NOT NULL,
  sticker_start_time TIMESTAMP,
  sticker_end_time TIMESTAMP,
  car_type VARCHAR(50),
  car_color VARCHAR(10),
  comp VARCHAR(60),
  obu_status NUMERIC,
  axle_numeric NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  uptimestamp_flag NUMERIC,
  car_model VARCHAR(50),
  fuel_type VARCHAR(50),
  weight VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.zone_id IS '测试区域';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证编号';
COMMENT ON COLUMN audit_record.start_time IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.end_time IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.trans_time IS '获得订单时间';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.obu_time IS '绑定OBU时间';
COMMENT ON COLUMN audit_record.sign IS '标识，0-仅接受订单，1-0BU已记录，2-下发完成';
COMMENT ON COLUMN audit_record.guid IS '数据唯一编号';
COMMENT ON COLUMN audit_record.sticker_start_time IS '车辆有效期开始时间';
COMMENT ON COLUMN audit_record.sticker_end_time IS '车辆有效期结束时间';
COMMENT ON COLUMN audit_record.car_type IS '车型';
COMMENT ON COLUMN audit_record.car_color IS '车身颜色';
COMMENT ON COLUMN audit_record.comp IS '所属厂家';
COMMENT ON COLUMN audit_record.obu_status IS 'OBU状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN audit_record.axle_numeric IS '车轴数';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.uptimestamp_flag IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收IC卡待同步）';
COMMENT ON COLUMN audit_record.car_model IS '车辆类型';
COMMENT ON COLUMN audit_record.fuel_type IS '燃油类型';
COMMENT ON COLUMN audit_record.weight IS '车重（kg）';
COMMENT ON TABLE order_record IS '订单表';

-- ----------------------------
-- Table structure for ORDER_RECORD_11-20
-- ----------------------------
DROP TABLE IF EXISTS order_record_11-20;
CREATE TABLE order_record_11-20 (
  order_id VARCHAR(100) NOT NULL,
  sticker VARCHAR(20) NOT NULL,
  zone_id VARCHAR(50),
  licence_no VARCHAR(20),
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  trans_time TIMESTAMP,
  obu_id VARCHAR(20),
  obu_time TIMESTAMP,
  sign NUMERIC,
  guid VARCHAR(50) NOT NULL,
  sticker_start_time TIMESTAMP,
  sticker_end_time TIMESTAMP,
  car_type VARCHAR(50),
  car_color VARCHAR(10),
  comp VARCHAR(60),
  obu_status NUMERIC,
  axle_numeric NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  uptimestamp_flag NUMERIC
)

;
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.zone_id IS '测试区域';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证编号';
COMMENT ON COLUMN audit_record.start_time IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.end_time IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.trans_time IS '获得订单时间';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.obu_time IS '绑定OBU时间';
COMMENT ON COLUMN audit_record.sign IS '标识，0-仅接受订单，1-0BU已记录，2-下发完成';
COMMENT ON COLUMN audit_record.guid IS '数据唯一编号';
COMMENT ON COLUMN audit_record.sticker_start_time IS '车辆有效期开始时间';
COMMENT ON COLUMN audit_record.sticker_end_time IS '车辆有效期结束时间';
COMMENT ON COLUMN audit_record.car_type IS '车型';
COMMENT ON COLUMN audit_record.car_color IS '车身颜色';
COMMENT ON COLUMN audit_record.comp IS '所属厂家';
COMMENT ON COLUMN audit_record.obu_status IS 'OBU状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN audit_record.axle_numeric IS '车轴数';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.uptimestamp_flag IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收IC卡待同步）';
COMMENT ON TABLE order_record_11-20 IS '订单表';

-- ----------------------------
-- Table structure for ORDER_RECORD_copy1
-- ----------------------------
DROP TABLE IF EXISTS order_record_copy1;
CREATE TABLE order_record_copy1 (
  order_id VARCHAR(100) NOT NULL,
  sticker VARCHAR(20) NOT NULL,
  zone_id VARCHAR(50),
  licence_no VARCHAR(20),
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  trans_time TIMESTAMP,
  obu_id VARCHAR(20),
  obu_time TIMESTAMP,
  sign NUMERIC,
  guid VARCHAR(50) NOT NULL,
  sticker_start_time TIMESTAMP,
  sticker_end_time TIMESTAMP,
  car_type VARCHAR(50),
  car_color VARCHAR(10),
  comp VARCHAR(60),
  obu_status NUMERIC,
  axle_numeric NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  uptimestamp_flag NUMERIC
)

;
COMMENT ON COLUMN audit_record.order_id IS '订单号';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.zone_id IS '测试区域';
COMMENT ON COLUMN audit_record.licence_no IS '驾驶证编号';
COMMENT ON COLUMN audit_record.start_time IS '驾驶员有效期开始时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.end_time IS '驾驶员有效期结束时间（只记录  不使用）';
COMMENT ON COLUMN audit_record.trans_time IS '获得订单时间';
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.obu_time IS '绑定OBU时间';
COMMENT ON COLUMN audit_record.sign IS '标识，0-仅接受订单，1-0BU已记录，2-下发完成';
COMMENT ON COLUMN audit_record.guid IS '数据唯一编号';
COMMENT ON COLUMN audit_record.sticker_start_time IS '车辆有效期开始时间';
COMMENT ON COLUMN audit_record.sticker_end_time IS '车辆有效期结束时间';
COMMENT ON COLUMN audit_record.car_type IS '车型';
COMMENT ON COLUMN audit_record.car_color IS '车身颜色';
COMMENT ON COLUMN audit_record.comp IS '所属厂家';
COMMENT ON COLUMN audit_record.obu_status IS 'OBU状态。枚举类型:0-挂失，1-正常，2-遗漏，3-超期未还,4-归还';
COMMENT ON COLUMN audit_record.axle_numeric IS '车轴数';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.uptimestamp_flag IS '同步数据（0-不需要同步，1-数据下发待同步，2-绑卡、回收IC卡待同步）';
COMMENT ON TABLE order_record_copy1 IS '订单表';

-- ----------------------------
-- Table structure for PARK_WHITE
-- ----------------------------
DROP TABLE IF EXISTS park_white;
CREATE TABLE park_white (
  car_id NUMERIC NOT NULL,
  card_id VARCHAR(40) NOT NULL,
  plate_color VARCHAR(6),
  plate VARCHAR(20) NOT NULL,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;

-- ----------------------------
-- Table structure for PERSON
-- ----------------------------
DROP TABLE IF EXISTS person;
CREATE TABLE person (
  person_id NUMERIC NOT NULL,
  person_name VARCHAR(255),
  id_card VARCHAR(255),
  ic_card VARCHAR(255),
  face_id VARCHAR(255)
)

;
COMMENT ON COLUMN audit_record.person_id IS '主键ID';
COMMENT ON COLUMN audit_record.person_name IS '人员姓名';
COMMENT ON COLUMN audit_record.id_card IS '身份证号';
COMMENT ON COLUMN audit_record.ic_card IS 'IC卡号';
COMMENT ON COLUMN audit_record.face_id IS '下发设备  设备回调使用';

-- ----------------------------
-- Table structure for POLICY
-- ----------------------------
DROP TABLE IF EXISTS policy;
CREATE TABLE policy (
  policy_key VARCHAR(20) NOT NULL,
  policy_value NUMERIC NOT NULL,
  policy_name VARCHAR(200) NOT NULL,
  remark VARCHAR(200)
)

;

-- ----------------------------
-- Table structure for RECOVER_CARD_RECORD
-- ----------------------------
DROP TABLE IF EXISTS recover_card_record;
CREATE TABLE recover_card_record (
  recover_id NUMERIC NOT NULL,
  card_type NUMERIC,
  card_no VARCHAR(20),
  operate_type NUMERIC,
  appellation VARCHAR(100),
  numb VARCHAR(20),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(200)
)

;
COMMENT ON COLUMN audit_record.recover_id IS '归还卡主键';
COMMENT ON COLUMN audit_record.card_type IS '卡类型（0-IC卡，1-OBU）';
COMMENT ON COLUMN audit_record.card_no IS 'IC卡号或者OBU号';
COMMENT ON COLUMN audit_record.operate_type IS '操作类型，枚举类型：0-归还，1-开卡，2-挂失，3-其它';
COMMENT ON COLUMN audit_record.appellation IS '如果是IC卡就填姓名，如果是OBU就填写订单号';
COMMENT ON COLUMN audit_record.numb IS '号码，如果是IC卡就填写身份证号，如果是OBU就填写车贴号';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE recover_card_record IS '还卡记录表';

-- ----------------------------
-- Table structure for SERVICE_CONTROL
-- ----------------------------
DROP TABLE IF EXISTS service_control;
CREATE TABLE service_control (
  monitor_id VARCHAR(255),
  service_type NUMERIC,
  service_name VARCHAR(255),
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.monitor_id IS '服务ID';
COMMENT ON COLUMN audit_record.service_type IS '服务类型  0:JAVA服务 1: 系统服务 2: 操作系统';
COMMENT ON COLUMN audit_record.service_name IS '服务名称';

-- ----------------------------
-- Table structure for SERVICE_CONTROL_RECORD
-- ----------------------------
DROP TABLE IF EXISTS service_control_record;
CREATE TABLE service_control_record (
  alarm_id NUMERIC,
  target VARCHAR(255),
  threshold_id NUMERIC,
  priority NUMERIC,
  content VARCHAR(255),
  status NUMERIC,
  times NUMERIC,
  trigger_time TIMESTAMP,
  app VARCHAR(255),
  monitor_id VARCHAR(255),
  metrics VARCHAR(255),
  code VARCHAR(255),
  tags_threshold_id VARCHAR(255),
  monitor_name VARCHAR(255),
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;

-- ----------------------------
-- Table structure for SIP_LANE
-- ----------------------------
DROP TABLE IF EXISTS sip_lane;
CREATE TABLE sip_lane (
  zone_id VARCHAR(20) NOT NULL,
  lane_ulid NUMERIC NOT NULL,
  lane_type CHAR(1) NOT NULL,
  sip_num VARCHAR(50) NOT NULL
)

;

-- ----------------------------
-- Table structure for SIP_USER
-- ----------------------------
DROP TABLE IF EXISTS sip_user;
CREATE TABLE sip_user (
  user_id NUMERIC NOT NULL,
  sip_num VARCHAR(50),
  sip_password VARCHAR(50),
  sip_user_name VARCHAR(50),
  sip_server VARCHAR(50)
)

;

-- ----------------------------
-- Table structure for SPECIFIC_OBU
-- ----------------------------
DROP TABLE IF EXISTS specific_obu;
CREATE TABLE specific_obu (
  id NUMERIC NOT NULL,
  obu_id VARCHAR(50) NOT NULL,
  zone_ids VARCHAR(500),
  department VARCHAR(50),
  plate VARCHAR(20),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.id IS '主键';
COMMENT ON COLUMN audit_record.obu_id IS 'obu号码';
COMMENT ON COLUMN audit_record.zone_ids IS '该OBUID可以通行的区域';
COMMENT ON COLUMN audit_record.department IS '部门';
COMMENT ON COLUMN audit_record.plate IS '车牌';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE specific_obu IS '特殊OBU';

-- ----------------------------
-- Table structure for STAFF
-- ----------------------------
DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
  card_id VARCHAR(40) NOT NULL,
  staff_name VARCHAR(20),
  staff_type CHAR(1),
  staff_phone VARCHAR(20),
  zone_ids VARCHAR(255),
  address VARCHAR(200),
  expired_time TIMESTAMP,
  staff_id NUMERIC NOT NULL,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.card_id IS '身份证号';
COMMENT ON COLUMN audit_record.staff_name IS '员工姓名';
COMMENT ON COLUMN audit_record.staff_type IS '员工类型，0-公务，1-员工';
COMMENT ON COLUMN audit_record.staff_phone IS '员工电话';
COMMENT ON COLUMN audit_record.zone_ids IS '允许通行的区域，用英文逗号分隔';
COMMENT ON COLUMN audit_record.address IS '部门地址';
COMMENT ON COLUMN audit_record.expired_time IS '有效期';
COMMENT ON COLUMN audit_record.staff_id IS '员工主键';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE staff IS '员工表';

-- ----------------------------
-- Table structure for SYS_DICT_DATA
-- ----------------------------
DROP TABLE IF EXISTS sys_dict_data;
CREATE TABLE sys_dict_data (
  dict_data_id NUMERIC(11,0) NOT NULL,
  dict_data_label VARCHAR(30) NOT NULL,
  dict_data_value NUMERIC(4,0) NOT NULL,
  dict_type VARCHAR(30) NOT NULL,
  order_num NUMERIC(11,0) NOT NULL,
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.dict_data_id IS '主键ID';
COMMENT ON COLUMN audit_record.dict_data_label IS '字典标签';
COMMENT ON COLUMN audit_record.dict_data_value IS '字典键值';
COMMENT ON COLUMN audit_record.dict_type IS '字典类型';
COMMENT ON COLUMN audit_record.order_num IS '字典排序';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_dict_data IS '字典数据表';

-- ----------------------------
-- Table structure for SYS_DICT_TYPE
-- ----------------------------
DROP TABLE IF EXISTS sys_dict_type;
CREATE TABLE sys_dict_type (
  dict_type_id NUMERIC(11,0) NOT NULL,
  dict_type_name VARCHAR(30) NOT NULL,
  dict_type VARCHAR(30) NOT NULL,
  dict_type_status NUMERIC(4,0) NOT NULL,
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.dict_type_id IS '主键ID';
COMMENT ON COLUMN audit_record.dict_type_name IS '字典名称';
COMMENT ON COLUMN audit_record.dict_type IS '字典类型';
COMMENT ON COLUMN audit_record.dict_type_status IS '状态 （0：正常 1：停用 ）';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_dict_type IS '字典类型表';

-- ----------------------------
-- Table structure for SYS_LOGIN_INFO
-- ----------------------------
DROP TABLE IF EXISTS sys_login_info;
CREATE TABLE sys_login_info (
  login_info_id NUMERIC(20,0) NOT NULL,
  user_name VARCHAR(30) NOT NULL,
  login_status NUMERIC(4,0) NOT NULL,
  login_time TIMESTAMP NOT NULL,
  login_browser VARCHAR(50),
  login_os VARCHAR(50),
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(1000)
)

;
COMMENT ON COLUMN audit_record.login_info_id IS '主键ID';
COMMENT ON COLUMN audit_record.user_name IS '用户名称';
COMMENT ON COLUMN audit_record.login_status IS '登录状态（0:登录成功  1:登录失败）';
COMMENT ON COLUMN audit_record.login_time IS '登录时间';
COMMENT ON COLUMN audit_record.login_browser IS '浏览器';
COMMENT ON COLUMN audit_record.login_os IS '操作系统';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_login_info IS '登录信息表';

-- ----------------------------
-- Table structure for SYS_MENU
-- ----------------------------
DROP TABLE IF EXISTS sys_menu;
CREATE TABLE sys_menu (
  menu_id NUMERIC(11,0) NOT NULL,
  menu_name VARCHAR(30),
  parent_id NUMERIC(11,0) NOT NULL,
  order_num NUMERIC(11,0) NOT NULL,
  menu_type NUMERIC(4,0) NOT NULL,
  perms VARCHAR(30),
  path VARCHAR(100),
  component VARCHAR(100),
  title VARCHAR(30) NOT NULL,
  is_link VARCHAR(100),
  is_hide NUMERIC(4,0),
  is_keep_alive NUMERIC(1,0),
  is_affix NUMERIC(1,0),
  is_full NUMERIC(1,0),
  icon VARCHAR(100),
  menu_status NUMERIC(1,0),
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.menu_id IS '主键ID';
COMMENT ON COLUMN audit_record.menu_name IS '路由 name';
COMMENT ON COLUMN audit_record.parent_id IS '父级ID';
COMMENT ON COLUMN audit_record.order_num IS '显示顺序';
COMMENT ON COLUMN audit_record.menu_type IS '菜单类型（0目录 1菜单 2按钮）';
COMMENT ON COLUMN audit_record.perms IS '权限字符';
COMMENT ON COLUMN audit_record.path IS '路由访问路径';
COMMENT ON COLUMN audit_record.component IS '视图文件路径';
COMMENT ON COLUMN audit_record.title IS '路由标题';
COMMENT ON COLUMN audit_record.is_link IS '路由外链时填写的访问地址';
COMMENT ON COLUMN audit_record.is_hide IS '是否隐藏';
COMMENT ON COLUMN audit_record.is_keep_alive IS '是否缓存';
COMMENT ON COLUMN audit_record.is_affix IS '是否固定在标签页中';
COMMENT ON COLUMN audit_record.is_full IS '是否全屏';
COMMENT ON COLUMN audit_record.icon IS '菜单和面包屑对应的图标';
COMMENT ON COLUMN audit_record.menu_status IS '菜单状态（0：正常 1：停用）';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_menu IS '菜单表';

-- ----------------------------
-- Table structure for SYS_OPER_LOG
-- ----------------------------
DROP TABLE IF EXISTS sys_oper_log;
CREATE TABLE sys_oper_log (
  oper_id NUMERIC NOT NULL,
  title NUMERIC(4,0) NOT NULL,
  business_type NUMERIC(4,0) NOT NULL,
  method VARCHAR(100),
  request_method VARCHAR(10),
  oper_name VARCHAR(50) NOT NULL,
  oper_url VARCHAR(255),
  oper_param CLOB,
  json_result CLOB,
  oper_status NUMERIC(4,0),
  error_msg CLOB,
  oper_time TIMESTAMP NOT NULL,
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.oper_id IS '日志主键';
COMMENT ON COLUMN audit_record.title IS '模块标题';
COMMENT ON COLUMN audit_record.business_type IS '业务类型';
COMMENT ON COLUMN audit_record.method IS '方法名称';
COMMENT ON COLUMN audit_record.request_method IS '请求方式';
COMMENT ON COLUMN audit_record.oper_name IS '操作人员';
COMMENT ON COLUMN audit_record.oper_url IS '请求URL';
COMMENT ON COLUMN audit_record.oper_param IS '请求参数';
COMMENT ON COLUMN audit_record.json_result IS '返回参数';
COMMENT ON COLUMN audit_record.oper_status IS '操作状态（0:成功  1:失败）';
COMMENT ON COLUMN audit_record.error_msg IS '错误消息';
COMMENT ON COLUMN audit_record.oper_time IS '操作时间';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_oper_log IS '日志表';

-- ----------------------------
-- Table structure for SYS_ROLE
-- ----------------------------
DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role (
  role_id NUMERIC NOT NULL,
  role_name VARCHAR(30) NOT NULL,
  role_status NUMERIC(1,0) NOT NULL,
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.role_id IS '主键ID';
COMMENT ON COLUMN audit_record.role_name IS '角色名称';
COMMENT ON COLUMN audit_record.role_status IS '角色状态（0：正常 1：停用）';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_role IS '角色表';

-- ----------------------------
-- Table structure for SYS_ROLE_MENU
-- ----------------------------
DROP TABLE IF EXISTS sys_role_menu;
CREATE TABLE sys_role_menu (
  role_id NUMERIC(11,0) NOT NULL,
  menu_id NUMERIC(11,0) NOT NULL
)

;
COMMENT ON COLUMN audit_record.role_id IS '角色ID';
COMMENT ON COLUMN audit_record.menu_id IS '菜单ID';
COMMENT ON TABLE sys_role_menu IS '角色菜单表';

-- ----------------------------
-- Table structure for SYS_USER
-- ----------------------------
DROP TABLE IF EXISTS sys_user;
CREATE TABLE sys_user (
  user_id NUMERIC NOT NULL,
  password VARCHAR(100) NOT NULL,
  user_name VARCHAR(30) NOT NULL,
  nick_name VARCHAR(30) NOT NULL,
  current_park VARCHAR(30),
  user_type NUMERIC(1,0) NOT NULL,
  user_source_type NUMERIC(1,0) NOT NULL,
  phone VARCHAR(30),
  user_status NUMERIC(1,0) NOT NULL,
  last_login_time TIMESTAMP,
  create_by VARCHAR(30),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(30),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(100)
)

;
COMMENT ON COLUMN audit_record.user_id IS '主键ID';
COMMENT ON COLUMN audit_record.password IS '用户密码';
COMMENT ON COLUMN audit_record.user_name IS '登陆账号';
COMMENT ON COLUMN audit_record.nick_name IS '用户昵称';
COMMENT ON COLUMN audit_record.current_park IS '用户当前车场';
COMMENT ON COLUMN audit_record.user_type IS '用户类型（0：超级管理员 1：车场管理员 2：单位管理员）';
COMMENT ON COLUMN audit_record.user_source_type IS '用户来源（0：后台用户 1：移动端用户）';
COMMENT ON COLUMN audit_record.phone IS '用户电话';
COMMENT ON COLUMN audit_record.user_status IS '账号状态（0：正常 1：停用 ）';
COMMENT ON COLUMN audit_record.last_login_time IS '最后登录时间';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '修改人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '修改时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE sys_user IS '用户表';

-- ----------------------------
-- Table structure for SYS_USER_ROLE
-- ----------------------------
DROP TABLE IF EXISTS sys_user_role;
CREATE TABLE sys_user_role (
  user_id NUMERIC NOT NULL,
  role_id NUMERIC NOT NULL
)

;
COMMENT ON COLUMN audit_record.user_id IS '用户ID';
COMMENT ON COLUMN audit_record.role_id IS '角色ID';
COMMENT ON TABLE sys_user_role IS '用户角色表';

-- ----------------------------
-- Table structure for USER_AUDIT
-- ----------------------------
DROP TABLE IF EXISTS user_audit;
CREATE TABLE user_audit (
  level_id NUMERIC NOT NULL,
  user_id NUMERIC NOT NULL,
  audit_level NUMERIC,
  audit_user_id NUMERIC,
  create_by VARCHAR(50),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(50),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;
COMMENT ON COLUMN audit_record.level_id IS '主键ID';
COMMENT ON COLUMN audit_record.user_id IS '用户ID';
COMMENT ON COLUMN audit_record.audit_level IS '审核人等级';
COMMENT ON COLUMN audit_record.audit_user_id IS '审核人ID';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON TABLE user_audit IS '用户审核关联表';

-- ----------------------------
-- Table structure for VISITOR
-- ----------------------------
DROP TABLE IF EXISTS visitor;
CREATE TABLE visitor (
  visitor_id NUMERIC NOT NULL,
  visitor_name VARCHAR(50) NOT NULL,
  card_id VARCHAR(40) NOT NULL,
  address VARCHAR(100),
  telephone VARCHAR(20),
  start_time TIMESTAMP,
  end_time TIMESTAMP,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50)
)

;

-- ----------------------------
-- Table structure for WEIGH
-- ----------------------------
DROP TABLE IF EXISTS weigh;
CREATE TABLE weigh (
  obu_id VARCHAR(255),
  ic_card VARCHAR(255),
  work_id VARCHAR(255),
  driver_name VARCHAR(255),
  over_run NUMERIC,
  speed NUMERIC,
  acceleration NUMERIC,
  axis NUMERIC,
  axis_group NUMERIC,
  axis_total_weigh NUMERIC,
  weight VARCHAR(255),
  type VARCHAR(255),
  distance VARCHAR(255),
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  sticker VARCHAR(20),
  wg_type VARCHAR(255),
  offline_status NUMERIC,
  img_url VARCHAR(200)
)

;
COMMENT ON COLUMN audit_record.obu_id IS 'OBU号';
COMMENT ON COLUMN audit_record.ic_card IS '卡号';
COMMENT ON COLUMN audit_record.work_id IS '工号';
COMMENT ON COLUMN audit_record.driver_name IS '驾驶员名称';
COMMENT ON COLUMN audit_record.over_run IS '超限标志，0否，1是';
COMMENT ON COLUMN audit_record.speed IS '车速km/h';
COMMENT ON COLUMN audit_record.acceleration IS '加速度';
COMMENT ON COLUMN audit_record.axis IS '轴数';
COMMENT ON COLUMN audit_record.axis_group IS '轴组数';
COMMENT ON COLUMN audit_record.axis_total_weigh IS '总重KG';
COMMENT ON COLUMN audit_record.weight IS 'weight1-weightN,int,各轴重量kg';
COMMENT ON COLUMN audit_record.type IS 'type1-typeN,int,各轴轴型1：单轴单轮；2：单轴双轮；3：双联轴单轮；4：双联轴单双轮；  5：双联轴双轮；6：三联轴单轮；7：三联轴双轮';
COMMENT ON COLUMN audit_record.distance IS 'distance1-distanceN,NUMERIC,各轴轴间距m';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.sticker IS '车贴号';
COMMENT ON COLUMN audit_record.wg_type IS '称重类型';
COMMENT ON COLUMN audit_record.offline_status IS '上传类型';
COMMENT ON COLUMN audit_record.img_url IS '称重图片';

-- ----------------------------
-- Table structure for ZONE
-- ----------------------------
DROP TABLE IF EXISTS zone;
CREATE TABLE zone (
  zone_id VARCHAR(50) NOT NULL,
  zone_name VARCHAR(50),
  max_num NUMERIC,
  zone_type CHAR(1),
  zone_another_name VARCHAR(20),
  max_time NUMERIC,
  zone_control NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  zone_phase NUMERIC,
  sort NUMERIC
)

;
COMMENT ON COLUMN audit_record.zone_id IS '试验区域号';
COMMENT ON COLUMN audit_record.zone_name IS '试验区域名称';
COMMENT ON COLUMN audit_record.max_num IS '区域最大容量';
COMMENT ON COLUMN audit_record.zone_type IS '区域类型，0-2号门，1-测试区，2-联络路，3-盐雾通道 4-洗车间,5一号门，6员工停车场，7测试停车场';
COMMENT ON COLUMN audit_record.zone_another_name IS '区域简称';
COMMENT ON COLUMN audit_record.max_time IS '疲劳提醒时间，单位：分钟';
COMMENT ON COLUMN audit_record.zone_control IS '区域控制  0：正常  1：封场  2：包场  3：精准预约';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.zone_phase IS '1:一期  2:二期';
COMMENT ON COLUMN audit_record.sort IS '排序';
COMMENT ON TABLE zone IS '试验区域表';

-- ----------------------------
-- Table structure for ZONE_CONTROL
-- ----------------------------
DROP TABLE IF EXISTS zone_control;
CREATE TABLE zone_control (
  zone_id VARCHAR(50) NOT NULL,
  stop_start TIMESTAMP,
  stop_end TIMESTAMP,
  status NUMERIC
)

;
COMMENT ON COLUMN audit_record.zone_id IS '试验区域ID';
COMMENT ON COLUMN audit_record.stop_start IS '封场开始时间';
COMMENT ON COLUMN audit_record.stop_end IS '封场结束时间';
COMMENT ON COLUMN audit_record.status IS '规则启用状态';

-- ----------------------------
-- Table structure for ZONE_copy1
-- ----------------------------
DROP TABLE IF EXISTS zone_copy1;
CREATE TABLE zone_copy1 (
  zone_id VARCHAR(50) NOT NULL,
  zone_name VARCHAR(50),
  max_num NUMERIC,
  zone_type CHAR(1),
  zone_another_name VARCHAR(20),
  max_time NUMERIC,
  zone_control NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  zone_phase NUMERIC,
  sort NUMERIC
)

;
COMMENT ON COLUMN audit_record.zone_id IS '试验区域号';
COMMENT ON COLUMN audit_record.zone_name IS '试验区域名称';
COMMENT ON COLUMN audit_record.max_num IS '区域最大容量';
COMMENT ON COLUMN audit_record.zone_type IS '区域类型，0-2号门，1-测试区，2-联络路，3-盐雾通道 4-洗车间,5一号门，6员工停车场，7测试停车场';
COMMENT ON COLUMN audit_record.zone_another_name IS '区域简称';
COMMENT ON COLUMN audit_record.max_time IS '疲劳提醒时间，单位：分钟';
COMMENT ON COLUMN audit_record.zone_control IS '区域控制  0：正常  1：封场  2：包场  3：精准预约';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.zone_phase IS '1:一期  2:二期';
COMMENT ON COLUMN audit_record.sort IS '排序';
COMMENT ON TABLE zone_copy1 IS '试验区域表';

-- ----------------------------
-- Table structure for ZONE_copy2_11-25
-- ----------------------------
DROP TABLE IF EXISTS zone_copy2_11-25;
CREATE TABLE zone_copy2_11-25 (
  zone_id VARCHAR(50) NOT NULL,
  zone_name VARCHAR(50),
  max_num NUMERIC,
  zone_type CHAR(1),
  zone_another_name VARCHAR(20),
  max_time NUMERIC,
  zone_control NUMERIC,
  create_by VARCHAR(20),
  create_time TIMESTAMP,
  uptimestamp_by VARCHAR(20),
  uptimestamp_time TIMESTAMP,
  remark VARCHAR(50),
  zone_phase NUMERIC,
  sort NUMERIC
)

;
COMMENT ON COLUMN audit_record.zone_id IS '试验区域号';
COMMENT ON COLUMN audit_record.zone_name IS '试验区域名称';
COMMENT ON COLUMN audit_record.max_num IS '区域最大容量';
COMMENT ON COLUMN audit_record.zone_type IS '区域类型，0-2号门，1-测试区，2-联络路，3-盐雾通道 4-洗车间,5一号门，6员工停车场，7测试停车场';
COMMENT ON COLUMN audit_record.zone_another_name IS '区域简称';
COMMENT ON COLUMN audit_record.max_time IS '疲劳提醒时间，单位：分钟';
COMMENT ON COLUMN audit_record.zone_control IS '区域控制  0：正常  1：封场  2：包场  3：精准预约';
COMMENT ON COLUMN audit_record.create_by IS '创建人';
COMMENT ON COLUMN audit_record.create_time IS '创建时间';
COMMENT ON COLUMN audit_record.uptimestamp_by IS '更新人';
COMMENT ON COLUMN audit_record.uptimestamp_time IS '更新时间';
COMMENT ON COLUMN audit_record.remark IS '备注';
COMMENT ON COLUMN audit_record.zone_phase IS '1:一期  2:二期';
COMMENT ON COLUMN audit_record.sort IS '排序';
COMMENT ON TABLE zone_copy2_11-25 IS '试验区域表';

-- ----------------------------
-- Sequence structure for AUDIT_RECORD_SEQ
-- ----------------------------
DROP SEQUENCE audit_record_seq;
CREATE SEQUENCE audit_record_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for CAR_PASS_SEQ
-- ----------------------------
DROP SEQUENCE car_pass_seq;
CREATE SEQUENCE car_pass_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for DEVICE_RECORD_SEQ
-- ----------------------------
DROP SEQUENCE device_record_seq;
CREATE SEQUENCE device_record_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for DRIVER_DEDUCT_SCORE_SEQ
-- ----------------------------
DROP SEQUENCE driver_deduct_score_seq;
CREATE SEQUENCE driver_deduct_score_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for DRIVER_WHITE_SEQ
-- ----------------------------
DROP SEQUENCE driver_white_seq;
CREATE SEQUENCE driver_white_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for GATE_DEVICE_SEQ
-- ----------------------------
DROP SEQUENCE gate_device_seq;
CREATE SEQUENCE gate_device_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for GATE_ISSUE_RECORD_SEQ
-- ----------------------------
DROP SEQUENCE gate_issue_record_seq;
CREATE SEQUENCE gate_issue_record_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for GATE_PASS_RECORD_SEQ
-- ----------------------------
DROP SEQUENCE gate_pass_record_seq;
CREATE SEQUENCE gate_pass_record_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for PARK_WHITE_SEQ
-- ----------------------------
DROP SEQUENCE park_white_seq;
CREATE SEQUENCE park_white_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for RECOVER_CARD_RECORD_SEQ
-- ----------------------------
DROP SEQUENCE recover_card_record_seq;
CREATE SEQUENCE recover_card_record_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for SPECIFIC_OBU_SEQ
-- ----------------------------
DROP SEQUENCE specific_obu_seq;
CREATE SEQUENCE specific_obu_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for STAFF_SEQ
-- ----------------------------
DROP SEQUENCE staff_seq;
CREATE SEQUENCE staff_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for SYS_DICT_DATA_SEQ
-- ----------------------------
DROP SEQUENCE sys_dict_data_seq;
CREATE SEQUENCE sys_dict_data_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SYS_DICT_TYPE_SEQ
-- ----------------------------
DROP SEQUENCE sys_dict_type_seq;
CREATE SEQUENCE sys_dict_type_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SYS_LOGIN_INFO_SEQ
-- ----------------------------
DROP SEQUENCE sys_login_info_seq;
CREATE SEQUENCE sys_login_info_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SYS_MENU_SEQ
-- ----------------------------
DROP SEQUENCE sys_menu_seq;
CREATE SEQUENCE sys_menu_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for SYS_OPER_LOG_SEQ
-- ----------------------------
DROP SEQUENCE sys_oper_log_seq;
CREATE SEQUENCE sys_oper_log_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SYS_ROLE_SEQ
-- ----------------------------
DROP SEQUENCE sys_role_seq;
CREATE SEQUENCE sys_role_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for SYS_USER_SEQ
-- ----------------------------
DROP SEQUENCE sys_user_seq;
CREATE SEQUENCE sys_user_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 CACHE 20;

-- ----------------------------
-- Sequence structure for USER_AUDIT_SEQ
-- ----------------------------
DROP SEQUENCE user_audit_seq;
CREATE SEQUENCE user_audit_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Sequence structure for VISITOR_SEQ
-- ----------------------------
DROP SEQUENCE visitor_seq;
CREATE SEQUENCE visitor_seq MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 ;

-- ----------------------------
-- Primary Key structure for table AUDIT_RECORD
-- ----------------------------
ALTER TABLE audit_record ADD CONSTRAINT sys_c0035223 PRIMARY KEY (audit_id);

-- ----------------------------
-- Checks structure for table AUDIT_RECORD
-- ----------------------------
ALTER TABLE audit_record ADD CONSTRAINT sys_c0035222 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c0035224 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY DISABLE NOVALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c007773 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c008163 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c008164 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c008165 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c009843 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record ADD CONSTRAINT sys_c009844 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table AUDIT_RECORD
-- ----------------------------
CREATE TRIGGER audit_record_bir BEFORE INSERT ON audit_record REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.AUDIT_ID IS NULL THEN
    SELECT audit_record_seq.NEXTVAL INTO :new.AUDIT_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table AUDIT_RECORD_copy1
-- ----------------------------
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009999 PRIMARY KEY (audit_id);

-- ----------------------------
-- Checks structure for table AUDIT_RECORD_copy1
-- ----------------------------
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c008166 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c008167 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c008168 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009991 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009992 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009993 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009994 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009995 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY DISABLE NOVALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009996 CHECK (audit_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009997 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE audit_record_copy1 ADD CONSTRAINT sys_c009998 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table AUDIT_RECORD_copy1
-- ----------------------------
CREATE TRIGGER audit_record_bir_copy1 BEFORE INSERT ON audit_record_copy1 REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.AUDIT_ID IS NULL THEN
    SELECT audit_record_seq.NEXTVAL INTO :new.AUDIT_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Checks structure for table AXLE_RECORD
-- ----------------------------
ALTER TABLE axle_record ADD CONSTRAINT sys_c008169 CHECK (obu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c008170 CHECK (pass_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c008171 CHECK (axis_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c008172 CHECK (build_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c008173 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c009488 CHECK (obu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c009489 CHECK (pass_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c009490 CHECK (axis_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c009491 CHECK (build_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE axle_record ADD CONSTRAINT sys_c009492 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table BOOKING_LED
-- ----------------------------
ALTER TABLE booking_led ADD CONSTRAINT sys_c0042253 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_led ADD CONSTRAINT sys_c008174 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_led ADD CONSTRAINT sys_c009337 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table BOOKING_RECORD
-- ----------------------------
ALTER TABLE booking_record ADD CONSTRAINT sys_c0042252 PRIMARY KEY (guid);

-- ----------------------------
-- Checks structure for table BOOKING_RECORD
-- ----------------------------
ALTER TABLE booking_record ADD CONSTRAINT sys_c0042249 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c0042250 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c0042251 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c008175 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c008176 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c008177 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c009330 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c009331 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE booking_record ADD CONSTRAINT sys_c009332 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table CAR_PASS
-- ----------------------------
ALTER TABLE car_pass ADD CONSTRAINT sys_c0035219 PRIMARY KEY (pass_id);

-- ----------------------------
-- Checks structure for table CAR_PASS
-- ----------------------------
ALTER TABLE car_pass ADD CONSTRAINT sys_c0035218 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass ADD CONSTRAINT sys_c007775 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass ADD CONSTRAINT sys_c008178 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table CAR_PASS
-- ----------------------------
CREATE TRIGGER car_pass_bir BEFORE INSERT ON car_pass REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.PASS_ID IS NULL THEN
    SELECT car_pass_seq.NEXTVAL INTO :new.PASS_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table CAR_PASS20241202
-- ----------------------------
ALTER TABLE car_pass20241202 ADD CONSTRAINT sys_c009836 PRIMARY KEY (pass_id);

-- ----------------------------
-- Checks structure for table CAR_PASS20241202
-- ----------------------------
ALTER TABLE car_pass20241202 ADD CONSTRAINT sys_c008179 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass20241202 ADD CONSTRAINT sys_c009833 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass20241202 ADD CONSTRAINT sys_c009834 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass20241202 ADD CONSTRAINT sys_c009835 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table CAR_PASS20241202
-- ----------------------------
CREATE TRIGGER car_pass_bir_copy2 BEFORE INSERT ON car_pass20241202 REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.PASS_ID IS NULL THEN
    SELECT car_pass_seq.NEXTVAL INTO :new.PASS_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table CAR_PASS_2024-10-29_backup
-- ----------------------------
ALTER TABLE car_pass_2024-10-29_backup ADD CONSTRAINT sys_c009468 PRIMARY KEY (pass_id);

-- ----------------------------
-- Checks structure for table CAR_PASS_2024-10-29_backup
-- ----------------------------
ALTER TABLE car_pass_2024-10-29_backup ADD CONSTRAINT sys_c008180 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass_2024-10-29_backup ADD CONSTRAINT sys_c009465 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass_2024-10-29_backup ADD CONSTRAINT sys_c009466 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE car_pass_2024-10-29_backup ADD CONSTRAINT sys_c009467 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table CAR_PASS_2024-10-29_backup
-- ----------------------------
CREATE TRIGGER car_pass_bir_copy1 BEFORE INSERT ON car_pass_2024-10-29_backup REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.PASS_ID IS NULL THEN
    SELECT car_pass_seq.NEXTVAL INTO :new.PASS_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Checks structure for table DEVICE_CONTROL
-- ----------------------------
ALTER TABLE device_control ADD CONSTRAINT sys_c008075 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE device_control ADD CONSTRAINT sys_c008181 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table DEVICE_CONTROL_RECORD
-- ----------------------------
ALTER TABLE device_control_record ADD CONSTRAINT sys_c008076 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE device_control_record ADD CONSTRAINT sys_c008182 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table DEVICE_RECORD
-- ----------------------------
ALTER TABLE device_record ADD CONSTRAINT sys_c0033681 PRIMARY KEY (record_id);

-- ----------------------------
-- Checks structure for table DEVICE_RECORD
-- ----------------------------
ALTER TABLE device_record ADD CONSTRAINT sys_c0033680 CHECK (record_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE device_record ADD CONSTRAINT sys_c007776 CHECK (record_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE device_record ADD CONSTRAINT sys_c008183 CHECK (record_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table DEVICE_RECORD
-- ----------------------------
CREATE TRIGGER device_record_bir BEFORE INSERT ON device_record REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.RECORD_ID IS NULL THEN
    SELECT device_record_seq.NEXTVAL INTO :new.RECORD_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table DRIVER_DEDUCT_SCORE
-- ----------------------------
ALTER TABLE driver_deduct_score ADD CONSTRAINT sys_c0033525 PRIMARY KEY (deduct_id);

-- ----------------------------
-- Checks structure for table DRIVER_DEDUCT_SCORE
-- ----------------------------
ALTER TABLE driver_deduct_score ADD CONSTRAINT sys_c0033524 CHECK (deduct_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_deduct_score ADD CONSTRAINT sys_c007777 CHECK (deduct_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_deduct_score ADD CONSTRAINT sys_c008184 CHECK (deduct_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table DRIVER_DEDUCT_SCORE
-- ----------------------------
CREATE TRIGGER driver_deduct_score_bir BEFORE INSERT ON driver_deduct_score REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.DEDUCT_ID IS NULL THEN
    SELECT DRIVER_DEDUCT_SCORE_SEQ.NEXTVAL INTO :new.DEDUCT_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table DRIVER_LEVEL
-- ----------------------------
ALTER TABLE driver_level ADD CONSTRAINT sys_c0033476 PRIMARY KEY (driver_level);

-- ----------------------------
-- Checks structure for table DRIVER_LEVEL
-- ----------------------------
ALTER TABLE driver_level ADD CONSTRAINT sys_c007778 CHECK (driver_level IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_level ADD CONSTRAINT sys_c008185 CHECK (driver_level IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table DRIVER_WHITE
-- ----------------------------
ALTER TABLE driver_white ADD CONSTRAINT sys_c0034709 PRIMARY KEY (driver_id);

-- ----------------------------
-- Checks structure for table DRIVER_WHITE
-- ----------------------------
ALTER TABLE driver_white ADD CONSTRAINT sys_c0034706 CHECK (driver_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c0034707 CHECK (driver_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c0034708 CHECK (driver_level IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY DISABLE NOVALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c007779 CHECK (driver_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c007780 CHECK (driver_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c008186 CHECK (driver_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c008187 CHECK (driver_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c008188 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE driver_white ADD CONSTRAINT sys_c008395 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table DRIVER_WHITE
-- ----------------------------
CREATE TRIGGER driver_white_bir BEFORE INSERT ON driver_white REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.DRIVER_ID IS NULL THEN
    SELECT DRIVER_WHITE_SEQ.NEXTVAL INTO :new.DRIVER_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Checks structure for table EXCEPTION_RECORD
-- ----------------------------
ALTER TABLE exception_record ADD CONSTRAINT sys_c0034099 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE exception_record ADD CONSTRAINT sys_c007782 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE exception_record ADD CONSTRAINT sys_c008189 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table GATE_DEVICE
-- ----------------------------
ALTER TABLE gate_device ADD CONSTRAINT sys_c0034711 PRIMARY KEY (device_id);

-- ----------------------------
-- Checks structure for table GATE_DEVICE
-- ----------------------------
ALTER TABLE gate_device ADD CONSTRAINT sys_c0034710 CHECK (device_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_device ADD CONSTRAINT sys_c0034759 CHECK (device_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_device ADD CONSTRAINT sys_c007783 CHECK (device_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_device ADD CONSTRAINT sys_c007784 CHECK (device_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_device ADD CONSTRAINT sys_c008190 CHECK (device_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_device ADD CONSTRAINT sys_c008191 CHECK (device_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table GATE_DEVICE
-- ----------------------------
CREATE TRIGGER gate_device_bir BEFORE INSERT ON gate_device REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.DEVICE_ID IS NULL THEN
    SELECT GATE_DEVICE_SEQ.NEXTVAL INTO :new.DEVICE_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table GATE_ISSUE_RECORD
-- ----------------------------
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034719 PRIMARY KEY (issue_id);

-- ----------------------------
-- Checks structure for table GATE_ISSUE_RECORD
-- ----------------------------
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034712 CHECK (issue_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034713 CHECK (driver_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034714 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034715 CHECK (device_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034716 CHECK (device_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034717 CHECK (issue_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034718 CHECK (abnormal_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c0034761 CHECK (device_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007785 CHECK (issue_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007786 CHECK (driver_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007787 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007788 CHECK (device_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007789 CHECK (device_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007790 CHECK (issue_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007791 CHECK (abnormal_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c007792 CHECK (device_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008192 CHECK (issue_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008193 CHECK (driver_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008194 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008195 CHECK (device_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008196 CHECK (device_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008197 CHECK (issue_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008198 CHECK (abnormal_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_issue_record ADD CONSTRAINT sys_c008199 CHECK (device_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table GATE_ISSUE_RECORD
-- ----------------------------
CREATE TRIGGER gate_issue_record_bir BEFORE INSERT ON gate_issue_record REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.ISSUE_ID IS NULL THEN
    SELECT GATE_ISSUE_RECORD_SEQ.NEXTVAL INTO :new.ISSUE_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table GATE_PASS_RECORD
-- ----------------------------
ALTER TABLE gate_pass_record ADD CONSTRAINT sys_c0034920 PRIMARY KEY (pass_id);

-- ----------------------------
-- Checks structure for table GATE_PASS_RECORD
-- ----------------------------
ALTER TABLE gate_pass_record ADD CONSTRAINT sys_c0034919 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_pass_record ADD CONSTRAINT sys_c007793 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE gate_pass_record ADD CONSTRAINT sys_c008200 CHECK (pass_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table GATE_PASS_RECORD
-- ----------------------------
CREATE TRIGGER gate_pass_record_bir BEFORE INSERT ON gate_pass_record REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.PASS_ID IS NULL THEN
    SELECT GATE_PASS_RECORD_SEQ.NEXTVAL INTO :new.PASS_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table LANE
-- ----------------------------
ALTER TABLE lane ADD CONSTRAINT sys_c0032330 PRIMARY KEY (ulid);

-- ----------------------------
-- Checks structure for table LANE
-- ----------------------------
ALTER TABLE lane ADD CONSTRAINT sys_c0032329 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c0033473 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c0033474 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c0033475 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c007794 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c007795 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c007796 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c007797 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c008201 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c008202 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c008203 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane ADD CONSTRAINT sys_c008204 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table LANE_LED
-- ----------------------------
ALTER TABLE lane_led ADD CONSTRAINT sys_c0033721 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_led ADD CONSTRAINT sys_c007798 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_led ADD CONSTRAINT sys_c008205 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table LANE_LED_copy1_11-25
-- ----------------------------
ALTER TABLE lane_led_copy1_11-25 ADD CONSTRAINT sys_c008206 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_led_copy1_11-25 ADD CONSTRAINT sys_c009754 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_led_copy1_11-25 ADD CONSTRAINT sys_c009755 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_led_copy1_11-25 ADD CONSTRAINT sys_c009756 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table LANE_copy1_11-25
-- ----------------------------
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009753 PRIMARY KEY (ulid);

-- ----------------------------
-- Checks structure for table LANE_copy1_11-25
-- ----------------------------
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c008207 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c008208 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c008209 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c008210 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009741 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009742 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009743 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009744 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009745 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009746 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009747 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009748 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009749 CHECK (ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009750 CHECK (lane_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009751 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE lane_copy1_11-25 ADD CONSTRAINT sys_c009752 CHECK (ip IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table OPERATION
-- ----------------------------
ALTER TABLE operation ADD CONSTRAINT sys_c0042524 PRIMARY KEY (operate_id);

-- ----------------------------
-- Checks structure for table OPERATION
-- ----------------------------
ALTER TABLE operation ADD CONSTRAINT sys_c0042523 CHECK (operate_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE operation ADD CONSTRAINT sys_c008211 CHECK (operate_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE operation ADD CONSTRAINT sys_c009469 CHECK (operate_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table ORDER_RECORD
-- ----------------------------
ALTER TABLE order_record ADD CONSTRAINT sys_c0034552 PRIMARY KEY (guid);

-- ----------------------------
-- Checks structure for table ORDER_RECORD
-- ----------------------------
ALTER TABLE order_record ADD CONSTRAINT sys_c0033755 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c0033756 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c0033757 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c007799 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c007800 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c007801 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c008212 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c008213 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record ADD CONSTRAINT sys_c008214 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table ORDER_RECORD_11-20
-- ----------------------------
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009692 PRIMARY KEY (guid);

-- ----------------------------
-- Checks structure for table ORDER_RECORD_11-20
-- ----------------------------
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c008215 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c008216 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c008217 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009683 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009684 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009685 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009686 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009687 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009688 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009689 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009690 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_11-20 ADD CONSTRAINT sys_c009691 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table ORDER_RECORD_copy1
-- ----------------------------
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008663 PRIMARY KEY (guid);

-- ----------------------------
-- Checks structure for table ORDER_RECORD_copy1
-- ----------------------------
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008218 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008219 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008220 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008654 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008655 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008656 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008657 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008658 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008659 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008660 CHECK (order_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008661 CHECK (sticker IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE order_record_copy1 ADD CONSTRAINT sys_c008662 CHECK (guid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table PARK_WHITE
-- ----------------------------
ALTER TABLE park_white ADD CONSTRAINT sys_c008221 CHECK (car_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE park_white ADD CONSTRAINT sys_c008222 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE park_white ADD CONSTRAINT sys_c008223 CHECK (plate IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table PARK_WHITE
-- ----------------------------
CREATE TRIGGER park_white_bir BEFORE INSERT ON park_white REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.CAR_ID IS NULL THEN
    SELECT PARK_WHITE_SEQ.NEXTVAL INTO :new.CAR_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table PERSON
-- ----------------------------
ALTER TABLE person ADD CONSTRAINT sys_c0034027 PRIMARY KEY (person_id);

-- ----------------------------
-- Checks structure for table PERSON
-- ----------------------------
ALTER TABLE person ADD CONSTRAINT sys_c0034026 CHECK (person_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE person ADD CONSTRAINT sys_c007802 CHECK (person_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE person ADD CONSTRAINT sys_c008224 CHECK (person_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table POLICY
-- ----------------------------
ALTER TABLE policy ADD CONSTRAINT sys_c008024 CHECK (policy_key IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE policy ADD CONSTRAINT sys_c008025 CHECK (policy_value IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE policy ADD CONSTRAINT sys_c008026 CHECK (policy_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE policy ADD CONSTRAINT sys_c008225 CHECK (policy_key IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE policy ADD CONSTRAINT sys_c008226 CHECK (policy_value IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE policy ADD CONSTRAINT sys_c008227 CHECK (policy_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table RECOVER_CARD_RECORD
-- ----------------------------
ALTER TABLE recover_card_record ADD CONSTRAINT sys_c0035819 PRIMARY KEY (recover_id);

-- ----------------------------
-- Checks structure for table RECOVER_CARD_RECORD
-- ----------------------------
ALTER TABLE recover_card_record ADD CONSTRAINT sys_c0035818 CHECK (recover_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE recover_card_record ADD CONSTRAINT sys_c007803 CHECK (recover_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE recover_card_record ADD CONSTRAINT sys_c008228 CHECK (recover_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table RECOVER_CARD_RECORD
-- ----------------------------
CREATE TRIGGER recover_card_record_bir BEFORE INSERT ON recover_card_record REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.RECOVER_ID IS NULL THEN
    SELECT recover_card_record_seq.NEXTVAL INTO :new.RECOVER_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Checks structure for table SIP_LANE
-- ----------------------------
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008018 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008019 CHECK (lane_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008020 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008021 CHECK (sip_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008229 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008230 CHECK (lane_ulid IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008231 CHECK (lane_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_lane ADD CONSTRAINT sys_c008232 CHECK (sip_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table SIP_USER
-- ----------------------------
ALTER TABLE sip_user ADD CONSTRAINT sys_c008023 PRIMARY KEY (user_id);

-- ----------------------------
-- Checks structure for table SIP_USER
-- ----------------------------
ALTER TABLE sip_user ADD CONSTRAINT sys_c008022 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sip_user ADD CONSTRAINT sys_c008233 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table SPECIFIC_OBU
-- ----------------------------
ALTER TABLE specific_obu ADD CONSTRAINT sys_c0034659 PRIMARY KEY (id);

-- ----------------------------
-- Checks structure for table SPECIFIC_OBU
-- ----------------------------
ALTER TABLE specific_obu ADD CONSTRAINT sys_c0034657 CHECK (id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE specific_obu ADD CONSTRAINT sys_c0034658 CHECK (obu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE specific_obu ADD CONSTRAINT sys_c007804 CHECK (id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE specific_obu ADD CONSTRAINT sys_c007805 CHECK (obu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE specific_obu ADD CONSTRAINT sys_c008234 CHECK (id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE specific_obu ADD CONSTRAINT sys_c008235 CHECK (obu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SPECIFIC_OBU
-- ----------------------------
CREATE TRIGGER specific_obu_bir BEFORE INSERT ON specific_obu REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.ID IS NULL THEN
    SELECT SPECIFIC_OBU_SEQ.NEXTVAL INTO :new.ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Checks structure for table STAFF
-- ----------------------------
ALTER TABLE staff ADD CONSTRAINT sys_c0033521 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE staff ADD CONSTRAINT sys_c007806 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE staff ADD CONSTRAINT sys_c008236 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE staff ADD CONSTRAINT sys_c008237 CHECK (staff_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table STAFF
-- ----------------------------
CREATE TRIGGER staff_bir BEFORE INSERT ON staff REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.STAFF_ID IS NULL THEN
    SELECT staff_seq.NEXTVAL INTO :new.STAFF_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_DICT_DATA
-- ----------------------------
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_dict_data_pk PRIMARY KEY (dict_data_id);

-- ----------------------------
-- Uniques structure for table SYS_DICT_DATA
-- ----------------------------
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_dict_data_uniq UNIQUE (dict_type, dict_data_value) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table SYS_DICT_DATA
-- ----------------------------
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c0030260 CHECK (dict_data_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c0030261 CHECK (dict_data_label IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c0030262 CHECK (dict_data_value IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c0030263 CHECK (dict_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c0030264 CHECK (order_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c007807 CHECK (dict_data_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c007808 CHECK (dict_data_label IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c007809 CHECK (dict_data_value IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c007810 CHECK (dict_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c007811 CHECK (order_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c008238 CHECK (dict_data_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c008239 CHECK (dict_data_label IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c008240 CHECK (dict_data_value IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c008241 CHECK (dict_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_data ADD CONSTRAINT sys_c008242 CHECK (order_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_DICT_DATA
-- ----------------------------
CREATE TRIGGER sys_dict_data_bir BEFORE INSERT ON sys_dict_data REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN   
  IF :new.DICT_DATA_ID IS NULL THEN
    SELECT sys_dict_data_seq.NEXTVAL INTO :new.DICT_DATA_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_DICT_TYPE
-- ----------------------------
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_dict_type_pk PRIMARY KEY (dict_type_id);

-- ----------------------------
-- Uniques structure for table SYS_DICT_TYPE
-- ----------------------------
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_dict_type_uniq UNIQUE (dict_type) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table SYS_DICT_TYPE
-- ----------------------------
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c0030254 CHECK (dict_type_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c0030255 CHECK (dict_type_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c0030256 CHECK (dict_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c0030257 CHECK (dict_type_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c007812 CHECK (dict_type_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c007813 CHECK (dict_type_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c007814 CHECK (dict_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c007815 CHECK (dict_type_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c008243 CHECK (dict_type_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c008244 CHECK (dict_type_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c008245 CHECK (dict_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_dict_type ADD CONSTRAINT sys_c008246 CHECK (dict_type_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_DICT_TYPE
-- ----------------------------
CREATE TRIGGER sys_dict_type_bir BEFORE INSERT ON sys_dict_type REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN   
  IF :new.DICT_TYPE_ID IS NULL THEN
    SELECT sys_dict_type_seq.NEXTVAL INTO :new.DICT_TYPE_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_LOGIN_INFO
-- ----------------------------
ALTER TABLE sys_login_info ADD CONSTRAINT sys_login_info_pk PRIMARY KEY (login_info_id);

-- ----------------------------
-- Checks structure for table SYS_LOGIN_INFO
-- ----------------------------
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c0030249 CHECK (login_info_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c0030250 CHECK (user_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c0030251 CHECK (login_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c0030252 CHECK (login_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c007816 CHECK (login_info_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c007817 CHECK (user_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c007818 CHECK (login_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c007819 CHECK (login_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c008247 CHECK (login_info_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c008248 CHECK (user_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c008249 CHECK (login_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_login_info ADD CONSTRAINT sys_c008250 CHECK (login_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_LOGIN_INFO
-- ----------------------------
CREATE TRIGGER sys_login_info_bir BEFORE INSERT ON sys_login_info REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN   
  IF :new.LOGIN_INFO_ID IS NULL THEN
    SELECT sys_login_info_seq.NEXTVAL INTO :new.LOGIN_INFO_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_MENU
-- ----------------------------
ALTER TABLE sys_menu ADD CONSTRAINT sys_menu_pk PRIMARY KEY (menu_id);

-- ----------------------------
-- Checks structure for table SYS_MENU
-- ----------------------------
ALTER TABLE sys_menu ADD CONSTRAINT sys_c0030243 CHECK (menu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c0030244 CHECK (parent_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c0030245 CHECK (order_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c0030246 CHECK (menu_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c0030247 CHECK (title IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c007820 CHECK (menu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c007821 CHECK (parent_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c007822 CHECK (order_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c007823 CHECK (menu_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c007824 CHECK (title IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c008251 CHECK (menu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c008252 CHECK (parent_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c008253 CHECK (order_num IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c008254 CHECK (menu_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_menu ADD CONSTRAINT sys_c008255 CHECK (title IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_MENU
-- ----------------------------
CREATE TRIGGER sys_menu_bir BEFORE INSERT ON sys_menu REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.MENU_ID IS NULL THEN
    SELECT sys_menu_seq.NEXTVAL INTO :new.MENU_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_OPER_LOG
-- ----------------------------
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c0030239 PRIMARY KEY (oper_id);

-- ----------------------------
-- Checks structure for table SYS_OPER_LOG
-- ----------------------------
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c0030235 CHECK (title IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c0030236 CHECK (business_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c0030237 CHECK (oper_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c0030238 CHECK (oper_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c007825 CHECK (oper_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c007826 CHECK (title IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c007827 CHECK (business_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c007828 CHECK (oper_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c007829 CHECK (oper_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c008256 CHECK (oper_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c008257 CHECK (title IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c008258 CHECK (business_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c008259 CHECK (oper_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_oper_log ADD CONSTRAINT sys_c008260 CHECK (oper_time IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_OPER_LOG
-- ----------------------------
CREATE TRIGGER sys_oper_log_bir BEFORE INSERT ON sys_oper_log REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN   
  IF :new.OPER_ID IS NULL THEN
    SELECT sys_oper_log_seq.NEXTVAL INTO :new.OPER_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE sys_role ADD CONSTRAINT sys_c0030234 PRIMARY KEY (role_id);

-- ----------------------------
-- Checks structure for table SYS_ROLE
-- ----------------------------
ALTER TABLE sys_role ADD CONSTRAINT sys_c0030232 CHECK (role_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c0030233 CHECK (role_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c007830 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c007831 CHECK (role_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c007832 CHECK (role_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c008261 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c008262 CHECK (role_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role ADD CONSTRAINT sys_c008263 CHECK (role_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_ROLE
-- ----------------------------
CREATE TRIGGER sys_role_bir BEFORE INSERT ON sys_role REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN   
  IF :new.ROLE_ID IS NULL THEN
    SELECT sys_role_seq.NEXTVAL INTO :new.ROLE_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_role_menu_pk PRIMARY KEY (role_id, menu_id);

-- ----------------------------
-- Checks structure for table SYS_ROLE_MENU
-- ----------------------------
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_c0030240 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_c0030241 CHECK (menu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_c007833 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_c007834 CHECK (menu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_c008264 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_role_menu ADD CONSTRAINT sys_c008265 CHECK (menu_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table SYS_USER
-- ----------------------------
ALTER TABLE sys_user ADD CONSTRAINT sys_user_pk PRIMARY KEY (user_id);

-- ----------------------------
-- Uniques structure for table SYS_USER
-- ----------------------------
ALTER TABLE sys_user ADD CONSTRAINT user_name_uk UNIQUE (user_name) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Checks structure for table SYS_USER
-- ----------------------------
ALTER TABLE sys_user ADD CONSTRAINT sys_c0030221 CHECK (password IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c0030222 CHECK (user_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c0030223 CHECK (nick_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c0030224 CHECK (user_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c0030225 CHECK (user_source_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c0030226 CHECK (user_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007835 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007836 CHECK (password IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007837 CHECK (user_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007838 CHECK (nick_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007839 CHECK (user_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007840 CHECK (user_source_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c007841 CHECK (user_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008266 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008267 CHECK (password IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008268 CHECK (user_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008269 CHECK (nick_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008270 CHECK (user_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008271 CHECK (user_source_type IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user ADD CONSTRAINT sys_c008272 CHECK (user_status IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table SYS_USER
-- ----------------------------
CREATE TRIGGER sys_user_bir BEFORE INSERT ON sys_user REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN   
  IF :new.USER_ID IS NULL THEN
    SELECT sys_user_seq.NEXTVAL INTO :new.USER_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c0030231 PRIMARY KEY (user_id, role_id);

-- ----------------------------
-- Checks structure for table SYS_USER_ROLE
-- ----------------------------
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c0030229 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c0030230 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c007842 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c007843 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c008273 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE sys_user_role ADD CONSTRAINT sys_c008274 CHECK (role_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table USER_AUDIT
-- ----------------------------
ALTER TABLE user_audit ADD CONSTRAINT sys_c0035226 PRIMARY KEY (level_id);

-- ----------------------------
-- Checks structure for table USER_AUDIT
-- ----------------------------
ALTER TABLE user_audit ADD CONSTRAINT sys_c0035225 CHECK (level_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE user_audit ADD CONSTRAINT sys_c0035227 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE user_audit ADD CONSTRAINT sys_c007844 CHECK (level_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE user_audit ADD CONSTRAINT sys_c007845 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE user_audit ADD CONSTRAINT sys_c008275 CHECK (level_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE user_audit ADD CONSTRAINT sys_c008276 CHECK (user_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table USER_AUDIT
-- ----------------------------
CREATE TRIGGER user_audit_bir BEFORE INSERT ON user_audit REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.LEVEL_ID IS NULL THEN
    SELECT user_audit_seq.NEXTVAL INTO :new.LEVEL_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Checks structure for table VISITOR
-- ----------------------------
ALTER TABLE visitor ADD CONSTRAINT sys_c008277 CHECK (visitor_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE visitor ADD CONSTRAINT sys_c008278 CHECK (visitor_name IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE visitor ADD CONSTRAINT sys_c008279 CHECK (card_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Triggers structure for table VISITOR
-- ----------------------------
CREATE TRIGGER visitor_bir BEFORE INSERT ON visitor REFERENCING OLD AS old NEW AS new FOR EACH ROW 
BEGIN
  IF :new.VISITOR_ID IS NULL THEN
    SELECT VISITOR_SEQ.NEXTVAL INTO :new.VISITOR_ID FROM dual;
  END IF;
END;
/

-- ----------------------------
-- Primary Key structure for table ZONE
-- ----------------------------
ALTER TABLE zone ADD CONSTRAINT sys_c0032328 PRIMARY KEY (zone_id);

-- ----------------------------
-- Checks structure for table ZONE
-- ----------------------------
ALTER TABLE zone ADD CONSTRAINT sys_c0032327 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone ADD CONSTRAINT sys_c007846 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone ADD CONSTRAINT sys_c008280 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table ZONE_CONTROL
-- ----------------------------
ALTER TABLE zone_control ADD CONSTRAINT sys_c009921 PRIMARY KEY (zone_id);

-- ----------------------------
-- Checks structure for table ZONE_CONTROL
-- ----------------------------
ALTER TABLE zone_control ADD CONSTRAINT sys_c009920 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table ZONE_copy1
-- ----------------------------
ALTER TABLE zone_copy1 ADD CONSTRAINT sys_c009760 PRIMARY KEY (zone_id);

-- ----------------------------
-- Checks structure for table ZONE_copy1
-- ----------------------------
ALTER TABLE zone_copy1 ADD CONSTRAINT sys_c008281 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone_copy1 ADD CONSTRAINT sys_c009757 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone_copy1 ADD CONSTRAINT sys_c009758 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone_copy1 ADD CONSTRAINT sys_c009759 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

-- ----------------------------
-- Primary Key structure for table ZONE_copy2_11-25
-- ----------------------------
ALTER TABLE zone_copy2_11-25 ADD CONSTRAINT sys_c009764 PRIMARY KEY (zone_id);

-- ----------------------------
-- Checks structure for table ZONE_copy2_11-25
-- ----------------------------
ALTER TABLE zone_copy2_11-25 ADD CONSTRAINT sys_c008282 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone_copy2_11-25 ADD CONSTRAINT sys_c009761 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone_copy2_11-25 ADD CONSTRAINT sys_c009762 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;
ALTER TABLE zone_copy2_11-25 ADD CONSTRAINT sys_c009763 CHECK (zone_id IS NOT NULL) NOT DEFERRABLE INITIALLY IMMEDIATE NORELY VALITIMESTAMP;

CREATE INDEX idx_audit_order_id ON audit_record(order_id);
CREATE INDEX idx_audit_sticker ON audit_record(sticker);
CREATE INDEX idx_audit_pass_id ON audit_record(pass_id);
