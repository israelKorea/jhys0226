[DB create sql]

CREATE TABLE `post_tbl` (
  `seq` int(11) NOT NULL COMMENT '인덱스 번호',
  `user_seq` int(11) NOT NULL COMMENT '게시글 작성자',
  `title` char(50) CHARACTER SET latin1 NOT NULL COMMENT '제목',
  `content` varchar(500) NOT NULL COMMENT '게시내용',
  `attach_file` varchar(100) DEFAULT NULL COMMENT '첨부파일경로',
  `reg_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '등록날짜',
  `hit_cnt` int(11) NOT NULL COMMENT '조회수',
  PRIMARY KEY (`seq`),
  KEY `user_seq_fk` (`user_seq`),
  CONSTRAINT `user_seq_fk` FOREIGN KEY (`user_seq`) REFERENCES `user_tbl` (`seq`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공지게시 테이블';


CREATE TABLE `user_tbl` (
  `seq` int(11) NOT NULL DEFAULT '0' COMMENT '사용자 인덱스번호',
  `usr_nm` char(15) CHARACTER SET latin1 DEFAULT NULL COMMENT '사용자명',
  `usr_tel` char(12) CHARACTER SET latin1 DEFAULT NULL COMMENT '사용자 전화번호',
  `usr_mail` char(25) CHARACTER SET latin1 DEFAULT NULL COMMENT '사용자 이메일',
  `usr_pw` char(50) CHARACTER SET latin1 DEFAULT NULL COMMENT '사용자 비밀번호',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '회원가입일자',
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사용자테이블';

