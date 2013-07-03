CREATE TABLE pr_user 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     password    VARCHAR(40) NOT NULL, 
     insert_date DATETIME NULL 
  ); 

CREATE TABLE pr_segment 
  ( 
     segment_id   INT NOT NULL, 
     segment_desc VARCHAR(40) NOT NULL, 
     insert_date  DATETIME NULL 
  ); 

CREATE TABLE pr_sales_change 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     segment_id  INT NOT NULL, 
     n5_val      DECIMAL(18, 3) NULL, 
     n4_val      DECIMAL(18, 3) NULL, 
     n3_val      DECIMAL(18, 3) NULL, 
     n2_val      DECIMAL(18, 3) NULL, 
     n1_val      DECIMAL(18, 3) NULL, 
     zed_val     DECIMAL(18, 3) NULL, 
     p5_val      DECIMAL(18, 3) NULL, 
     p4_val      DECIMAL(18, 3) NULL, 
     p3_val      DECIMAL(18, 3) NULL, 
     p2_val      DECIMAL(18, 3) NULL, 
     p1_val      DECIMAL(18, 3) NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_roi_goals 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     segment_id  INT NOT NULL, 
     n5_val      DECIMAL(18, 3) NULL, 
     n4_val      DECIMAL(18, 3) NULL, 
     n3_val      DECIMAL(18, 3) NULL, 
     n2_val      DECIMAL(18, 3) NULL, 
     n1_val      DECIMAL(18, 3) NULL, 
     zed_val     DECIMAL(18, 3) NULL, 
     p5_val      DECIMAL(18, 3) NULL, 
     p4_val      DECIMAL(18, 3) NULL, 
     p3_val      DECIMAL(18, 3) NULL, 
     p2_val      DECIMAL(18, 3) NULL, 
     p1_val      DECIMAL(18, 3) NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_roi_adj 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     n5_val      DECIMAL(18, 3) NULL, 
     n4_val      DECIMAL(18, 3) NULL, 
     n3_val      DECIMAL(18, 3) NULL, 
     n2_val      DECIMAL(18, 3) NULL, 
     n1_val      DECIMAL(18, 3) NULL, 
     zed_val     DECIMAL(18, 3) NULL, 
     p5_val      DECIMAL(18, 3) NULL, 
     p4_val      DECIMAL(18, 3) NULL, 
     p3_val      DECIMAL(18, 3) NULL, 
     p2_val      DECIMAL(18, 3) NULL, 
     p1_val      DECIMAL(18, 3) NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_purch_cycle_adj 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     segment_id  INT NOT NULL, 
     food        DECIMAL(18, 3) NULL, 
     drug        DECIMAL(18, 3) NULL, 
     gm          DECIMAL(18, 3) NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_index 
  ( 
     index_id    INT NOT NULL, 
     index_desc  VARCHAR(40) NOT NULL, 
     insert_date DATETIME NULL 
  ); 

CREATE TABLE pr_category_perf 
  ( 
     user_id         VARCHAR(40) NOT NULL, 
     index_id        INT NOT NULL, 
     bottom_quartile DECIMAL(18, 3) NULL, 
     top_quartile    DECIMAL(18, 3) NULL, 
     insert_date     DATETIME NULL, 
     update_date     DATETIME NULL 
  ); 

CREATE TABLE pr_hh_perform 
  ( 
     user_id         VARCHAR(40) NOT NULL, 
     index_id        INT NOT NULL, 
     bottom_quartile DECIMAL(18, 3) NULL, 
     top_quartile    DECIMAL(18, 3) NULL, 
     insert_date     DATETIME NULL, 
     update_date     DATETIME NULL 
  ); 

CREATE TABLE pr_guard_rails_metric 
  ( 
     metric_id   INT NOT NULL, 
     metric_desc VARCHAR(40) NOT NULL, 
     insert_date DATETIME NULL 
  ); 

CREATE TABLE pr_guard_rails 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     metric_id   INT NOT NULL, 
     minimum     INT NULL, 
     maximum     INT NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_metric 
  ( 
     metric_id   INT NOT NULL, 
     metric_desc VARCHAR(40) NOT NULL, 
     insert_date DATETIME NULL 
  ); 

CREATE TABLE pr_val_control_rule 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     metric_id   INT NOT NULL, 
     minimum     INT NULL, 
     maximum     INT NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_program_param 
  ( 
     user_id     VARCHAR(40) NOT NULL, 
     p_parameter VARCHAR(250) NULL, 
     p_value     VARCHAR(40) NULL, 
     insert_date DATETIME NULL, 
     update_date DATETIME NULL 
  ); 

CREATE TABLE pr_super_category 
  ( 
     super_category_id   INT NOT NULL, 
     super_category_desc VARCHAR(40) NOT NULL, 
     insert_date         DATETIME NULL 
  ); 

CREATE TABLE pr_product_category 
  ( 
     user_id               VARCHAR(40) NOT NULL, 
     super_category_id     INT NOT NULL, 
     product_category_code VARCHAR(40) NULL, 
     product_category_desc VARCHAR(250) NULL, 
     pc_value              VARCHAR(5) NULL, 
     insert_date           DATETIME NULL, 
     update_date           DATETIME NULL 
  ); 


CREATE TABLE pr_roi_program 
  ( 
     program_id   INT NOT NULL, 
     program_desc VARCHAR(100) NULL, 
     rep_flag     CHAR(1) NULL, 
     insert_date  DATETIME NULL 
  ); 

CREATE TABLE pr_roi_report 
  ( 
     user_id       VARCHAR(40) NOT NULL,     
     program_id    INT NOT NULL, 
	 enddate       DATE NOT NULL, 
     val_enddate   DECIMAL(18, 3) NULL,     
     insert_date   DATETIME NULL, 
     update_date   DATETIME NULL 
  ); 