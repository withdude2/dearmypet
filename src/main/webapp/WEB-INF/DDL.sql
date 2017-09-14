Create user 'b577b6dc64b6d5'@'localhost' identified by '4e88dc9d';
-- grant all privileges on *.* to 'userid'@'%';
Grant all privileges on *.* to 'b577b6dc64b6d5'@'localhost';

Create table heroku_93dd468daebac93
Use heroku_93dd468daebac93


-- 추가정보 입력회원
CREATE TABLE member (
	m_no           INT UNSIGNED NOT NULL COMMENT '회원번호', -- 회원번호
	m_id           VARCHAR(12)  NOT NULL COMMENT '아이디', -- 아이디
	m_name         VARCHAR(20)  NOT NULL COMMENT '이름/회사명', -- 이름/회사명
	m_tel          VARCHAR(12)  NOT NULL COMMENT '전화번호', -- 전화번호
	m_addr         VARCHAR(255) NOT NULL COMMENT '주소/사업장주소', -- 주소/사업장주소
	m_email        VARCHAR(255) NOT NULL COMMENT '이메일', -- 이메일
	m_bday         VARCHAR(20)  NOT NULL COMMENT '생년월일/사업자번호', -- 생년월일/사업자번호
	m_sex          VARCHAR(1)   NOT NULL COMMENT '성별', -- 성별
	m_joindatetime DATETIME     NULL     COMMENT '가입일시', -- 가입일시
	m_membertype   VARCHAR(1)   NOT NULL COMMENT '회원타입' -- 회원타입
)
COMMENT '추가정보 입력회원';

-- 추가정보 입력회원
ALTER TABLE member
	ADD CONSTRAINT PK_member -- 추가정보 입력회원 기본키
		PRIMARY KEY (
			m_no -- 회원번호
		);

ALTER TABLE member
	MODIFY COLUMN m_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '회원번호';

-- 자유게시판(일반게시판)
CREATE TABLE main_board (
	mb_no    INT UNSIGNED NOT NULL COMMENT '게시번호', -- 게시번호
	mb_sub   VARCHAR(20)  NOT NULL COMMENT '제목', -- 제목
	mb_date  DATETIME     NULL     COMMENT '작성일', -- 작성일
	mb_id    VARCHAR(20)  NOT NULL COMMENT '작성자', -- 작성자
	mb_con   TEXT         NOT NULL COMMENT '내용', -- 내용
	mb_count INT UNSIGNED NULL     COMMENT '조회수', -- 조회수
	lg_no    INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '자유게시판(일반게시판)';

-- 자유게시판(일반게시판)
ALTER TABLE main_board
	ADD CONSTRAINT PK_main_board -- 자유게시판(일반게시판) 기본키
		PRIMARY KEY (
			mb_no -- 게시번호
		);

ALTER TABLE main_board
	MODIFY COLUMN mb_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '게시번호';

-- 반려동물
CREATE TABLE pet (
	p_no      INT UNSIGNED     NOT NULL COMMENT '동물고유번호', -- 동물고유번호
	p_bun     INT(10) UNSIGNED NULL     COMMENT '등록번호(날짜+####)', -- 등록번호(날짜+####)
	p_name    VARCHAR(20)      NOT NULL COMMENT '이름', -- 이름
	p_pic     VARCHAR(20)      NULL     COMMENT '사진', -- 사진
	p_loc     VARCHAR(255)     NULL     COMMENT '구조장소', -- 구조장소
	p_rdate   DATE             NULL     COMMENT '구조월일', -- 구조월일
	p_age     VARCHAR(2)       NULL     COMMENT '추정나이', -- 추정나이
	p_pum     VARCHAR(20)      NULL     COMMENT '동물종류', -- 동물종류
	bd_id     INT UNSIGNED     NULL     COMMENT '품종', -- 품종
	p_sex     VARCHAR(1)       NULL     COMMENT '성별', -- 성별
	p_char    VARCHAR(255)     NULL     COMMENT '성격', -- 성격
	p_con     VARCHAR(255)     NULL     COMMENT '건강상태', -- 건강상태
	p_neu     BOOLEAN          NULL     COMMENT '중성화여부', -- 중성화여부
	p_shot    VARCHAR(20)      NULL     COMMENT '예방접종', -- 예방접종
	co_no     INT UNSIGNED     NULL     COMMENT '보호단체번호', -- 보호단체번호
	p_isAdopt BOOLEAN          NULL     COMMENT '입양여부' -- 입양여부
)
COMMENT '반려동물';

-- 반려동물
ALTER TABLE pet
	ADD CONSTRAINT PK_pet -- 반려동물 기본키
		PRIMARY KEY (
			p_no -- 동물고유번호
		);

ALTER TABLE pet
	MODIFY COLUMN p_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '동물고유번호';

-- 설문지
CREATE TABLE research (
	r_no INT UNSIGNED NOT NULL COMMENT '설문지 번호', -- 설문지 번호
	r_01 VARCHAR(255) NOT NULL COMMENT '입양사유', -- 입양사유
	r_02 BOOLEAN      NOT NULL COMMENT '가족동의', -- 가족동의
	r_03 BOOLEAN      NOT NULL COMMENT '반려동물 입양 경험', -- 반려동물 입양 경험
	r_04 VARCHAR(255) NOT NULL COMMENT '과거 입양했던 반려동물의 종류/수량', -- 과거 입양했던 반려동물의 종류/수량
	r_05 VARCHAR(255) NOT NULL COMMENT '입양했던 반려동물의 현재 상태', -- 입양했던 반려동물의 현재 상태
	r_06 BOOLEAN      NOT NULL COMMENT '반려동물 유무', -- 반려동물 유무
	r_07 VARCHAR(255) NOT NULL COMMENT '주거형태', -- 주거형태
	r_08 VARCHAR(255) NOT NULL COMMENT '장기 부재시 반려동물의 처우', -- 장기 부재시 반려동물의 처우
	r_09 VARCHAR(255) NOT NULL COMMENT '미혼의 경우 결혼 임신,출산시 반려동물 처우', -- 미혼의 경우 결혼 임신,출산시 반려동물 처우
	r_10 BOOLEAN      NOT NULL COMMENT '중성화 수술 동의 여부' -- 중성화 수술 동의 여부
)
COMMENT '설문지';

-- 설문지
ALTER TABLE research
	ADD CONSTRAINT PK_research -- 설문지 기본키
		PRIMARY KEY (
			r_no -- 설문지 번호
		);

ALTER TABLE research
	MODIFY COLUMN r_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '설문지 번호';

-- 실종신고(이미지 게시판)
CREATE TABLE notice_missing (
	mb_no    INT UNSIGNED NOT NULL COMMENT '게시물 번호', -- 게시물 번호
	p_no     INT UNSIGNED NULL     COMMENT '동물고유번호', -- 동물고유번호
	mb_sub   VARCHAR(255) NOT NULL COMMENT '제목', -- 제목
	mb_date  DATETIME     NULL     COMMENT '작성일', -- 작성일
	mb_id    VARCHAR(20)  NOT NULL COMMENT '작성자', -- 작성자
	mb_con   TEXT         NOT NULL COMMENT '내용', -- 내용
	mb_count INT          NULL     COMMENT '조회수', -- 조회수
	lg_no    INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '실종신고(이미지 게시판)';

-- 실종신고(이미지 게시판)
ALTER TABLE notice_missing
	ADD CONSTRAINT PK_notice_missing -- 실종신고(이미지 게시판) 기본키
		PRIMARY KEY (
			mb_no -- 게시물 번호
		);

ALTER TABLE notice_missing
	MODIFY COLUMN mb_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '게시물 번호';

-- 입양 신청 테이블
CREATE TABLE adopt_pro (
	ap_no   INT UNSIGNED NOT NULL COMMENT '신청번호', -- 신청번호
	r_no    INT UNSIGNED NOT NULL COMMENT '설문지 번호', -- 설문지 번호
	p_no    INT UNSIGNED NOT NULL COMMENT '동물고유번호', -- 동물고유번호
	ap_date DATE         NULL     COMMENT '날짜', -- 날짜
	ap_yn   BOOLEAN      NULL     COMMENT '입양여부', -- 입양여부
	lg_no   INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '입양 신청 테이블';

-- 입양 신청 테이블
ALTER TABLE adopt_pro
	ADD CONSTRAINT PK_adopt_pro -- 입양 신청 테이블 기본키
		PRIMARY KEY (
			ap_no -- 신청번호
		);

ALTER TABLE adopt_pro
	MODIFY COLUMN ap_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '신청번호';

-- 임시보호 신청 테이블
CREATE TABLE tem_pro (
	tp_no   INT UNSIGNED NOT NULL COMMENT '신청번호', -- 신청번호
	r_no    INT UNSIGNED NOT NULL COMMENT '설문지 번호', -- 설문지 번호
	p_no    INT UNSIGNED NOT NULL COMMENT '동물고유번호', -- 동물고유번호
	tp_name VARCHAR(20)  NULL     COMMENT '이름', -- 이름
	tp_date DATE         NULL     COMMENT '날짜', -- 날짜
	tp_yn1  BOOLEAN      NULL     COMMENT '임보 가족동의', -- 임보 가족동의
	tp_yn2  BOOLEAN      NULL     COMMENT '임보 여부', -- 임보 여부
	lg_no   INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '임시보호 신청 테이블';

-- 임시보호 신청 테이블
ALTER TABLE tem_pro
	ADD CONSTRAINT PK_tem_pro -- 임시보호 신청 테이블 기본키
		PRIMARY KEY (
			tp_no -- 신청번호
		);

ALTER TABLE tem_pro
	MODIFY COLUMN tp_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '신청번호';

-- 보호신고(이미지 게시판)
CREATE TABLE notice_care (
	mb_no    INT UNSIGNED NOT NULL COMMENT '게시물 번호', -- 게시물 번호
	p_no     INT UNSIGNED NULL     COMMENT '동물고유번호', -- 동물고유번호
	mb_sub   VARCHAR(20)  NOT NULL COMMENT '제목', -- 제목
	mb_date  DATETIME     NULL     COMMENT '작성일', -- 작성일
	mb_id    VARCHAR(20)  NOT NULL COMMENT '작성자', -- 작성자
	mb_con   TEXT         NOT NULL COMMENT '내용', -- 내용
	mb_count INT          NULL     COMMENT '조회수', -- 조회수
	lg_no    INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '보호신고(이미지 게시판)';

-- 보호신고(이미지 게시판)
ALTER TABLE notice_care
	ADD CONSTRAINT PK_notice_care -- 보호신고(이미지 게시판) 기본키
		PRIMARY KEY (
			mb_no -- 게시물 번호
		);

ALTER TABLE notice_care
	MODIFY COLUMN mb_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '게시물 번호';

-- 분양 관리 테이블
CREATE TABLE adopt (
	ad_no   INT UNSIGNED NOT NULL COMMENT '관리번호', -- 관리번호
	p_no    INT UNSIGNED NOT NULL COMMENT '동물고유번호', -- 동물고유번호
	ad_date DATE         NULL     COMMENT '분양완료일', -- 분양완료일
	r_no    INT UNSIGNED NOT NULL COMMENT '설문지 번호', -- 설문지 번호
	tp_no   INT UNSIGNED NULL     COMMENT '임보신청번호', -- 임보신청번호
	ap_no   INT UNSIGNED NULL     COMMENT '입양신청번호', -- 입양신청번호
	lg_no   INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '분양 관리 테이블';

-- 분양 관리 테이블
ALTER TABLE adopt
	ADD CONSTRAINT PK_adopt -- 분양 관리 테이블 기본키
		PRIMARY KEY (
			ad_no -- 관리번호
		);

ALTER TABLE adopt
	MODIFY COLUMN ad_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '관리번호';

-- 댓글
CREATE TABLE reply (
	re_no        INT UNSIGNED NOT NULL COMMENT '댓글번호', -- 댓글번호
	re_id        VARCHAR(20)  NOT NULL COMMENT '작성자', -- 작성자
	re_date      DATETIME     NULL     COMMENT '작성일', -- 작성일
	re_con       TEXT         NULL     COMMENT '내용', -- 내용
	re_ref_step  INT UNSIGNED NOT NULL COMMENT '댓글순서', -- 댓글순서
	re_ref_level INT UNSIGNED NOT NULL COMMENT '댓글 들여쓰기', -- 댓글 들여쓰기
	lg_no        INT UNSIGNED NULL     COMMENT '유저 번호', -- 유저 번호
	mb_no        INT UNSIGNED NULL     COMMENT '자유게시판 게시번호', -- 자유게시판 게시번호
	mb_no3       INT UNSIGNED NULL     COMMENT '실종신고 게시번호', -- 실종신고 게시번호
	mb_no2       INT UNSIGNED NULL     COMMENT '보호신고 게시번호', -- 보호신고 게시번호
	re_typeno    VARCHAR(10)  NOT NULL COMMENT '게시판타입번호' -- 게시판타입번호
)
COMMENT '댓글';

-- 댓글
ALTER TABLE reply
	ADD CONSTRAINT PK_reply -- 댓글 기본키
		PRIMARY KEY (
			re_no -- 댓글번호
		);

ALTER TABLE reply
	MODIFY COLUMN re_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '댓글번호';

-- 로그인 히스토리(자동 출석게시판)
CREATE TABLE logHis (
	l_no   INT UNSIGNED NOT NULL COMMENT '히스토리번호', -- 히스토리번호
	l_ip   VARCHAR(15)  NULL     COMMENT '접속 IP', -- 접속 IP
	l_date DATETIME     NULL     COMMENT '날짜', -- 날짜
	lg_no  INT UNSIGNED NULL     COMMENT '유저 번호' -- 유저 번호
)
COMMENT '로그인 히스토리(자동 출석게시판)';

-- 로그인 히스토리(자동 출석게시판)
ALTER TABLE logHis
	ADD CONSTRAINT PK_logHis -- 로그인 히스토리(자동 출석게시판) 기본키
		PRIMARY KEY (
			l_no -- 히스토리번호
		);

ALTER TABLE logHis
	MODIFY COLUMN l_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '히스토리번호';

-- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
CREATE TABLE login (
	lg_no         INT UNSIGNED NOT NULL COMMENT '유저 번호', -- 유저 번호
	lg_id         VARCHAR(40)  NOT NULL COMMENT '사용자 유니크ID', -- 사용자 유니크ID
	lg_profile    VARCHAR(255) NULL     COMMENT '프로필이미지', -- 프로필이미지
	lg_password   VARCHAR(20)  NULL     COMMENT '비밀번호', -- 비밀번호
	lg_email      VARCHAR(255) NULL     COMMENT '이메일', -- 이메일
	lg_nickname   VARCHAR(40)  NULL     COMMENT '닉네임', -- 닉네임
	lgfb_no       INT UNSIGNED NULL     COMMENT '페이스북', -- 페이스북
	lgka_no       INT UNSIGNED NULL     COMMENT '카카오', -- 카카오
	m_no          INT UNSIGNED NULL     COMMENT '회원번호', -- 회원번호
	lg_login_type TINYINT(2)   NOT NULL COMMENT '로그인 뭘로했지' -- 로그인 뭘로했지
)
COMMENT '로그인(세션)(일반회원저장 + 카카오 + 페이스북)';

-- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
ALTER TABLE login
	ADD CONSTRAINT PK_login -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) 기본키
		PRIMARY KEY (
			lg_no -- 유저 번호
		);

ALTER TABLE login
	MODIFY COLUMN lg_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '유저 번호';

-- 품종
CREATE TABLE breed (
	bd_id      INT UNSIGNED NOT NULL COMMENT '품종번호', -- 품종번호
	bd_species VARCHAR(255) NULL     COMMENT '종(개,고양이)', -- 종(개,고양이)
	bd_breed   VARCHAR(255) NULL     COMMENT '브리드(브르티쉬숏헤어, 푸들 등)' -- 브리드(브르티쉬숏헤어, 푸들 등)
)
COMMENT '품종';

-- 품종
ALTER TABLE breed
	ADD CONSTRAINT PK_breed -- 품종 기본키
		PRIMARY KEY (
			bd_id -- 품종번호
		);

ALTER TABLE breed
	MODIFY COLUMN bd_id INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '품종번호';

-- 페이스북 로그인(저장)
CREATE TABLE login_facebook (
	lgfb_no           INT UNSIGNED NOT NULL COMMENT '번호', -- 번호
	lgfb_id           VARCHAR(255) NOT NULL COMMENT '아이디', -- 아이디
	lgfb_picture      TEXT         NULL     COMMENT '프로필사진', -- 프로필사진
	lgfb_name         VARCHAR(100) NULL     COMMENT '이름', -- 이름
	lgfb_age_range    VARCHAR(100) NULL     COMMENT '나이대', -- 나이대
	lgfb_gender       VARCHAR(6)   NULL     COMMENT '성별', -- 성별
	lgfb_email        VARCHAR(255) NULL     COMMENT '이메일', -- 이메일
	lgfb_birthday     VARCHAR(10)  NULL     COMMENT '생년월일', -- 생년월일
	lgfb_verified     BOOLEAN      NULL     COMMENT '인증정보', -- 인증정보
	lgfb_joindatetime DATETIME     NULL     COMMENT '가입일시' -- 가입일시
)
COMMENT '페이스북 로그인(저장)';

-- 페이스북 로그인(저장)
ALTER TABLE login_facebook
	ADD CONSTRAINT PK_login_facebook -- 페이스북 로그인(저장) 기본키
		PRIMARY KEY (
			lgfb_no -- 번호
		);

ALTER TABLE login_facebook
	MODIFY COLUMN lgfb_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '번호';

-- 카카오 로그인(저장)
CREATE TABLE login_kakao (
	lgka_no              INT UNSIGNED NOT NULL COMMENT '번호', -- 번호
	lgka_id              INT(64)      NOT NULL COMMENT '아이디', -- 아이디
	lgka_email           VARCHAR(255) NULL     COMMENT '이메일', -- 이메일
	lgka_email_verified  BOOLEAN      NULL     COMMENT '인증정보', -- 인증정보
	lgka_nickname        VARCHAR(255) NULL     COMMENT '닉네임', -- 닉네임
	lgka_thumbnail_image TEXT         NULL     COMMENT '프로필사진', -- 프로필사진
	lgka_joindatetime    DATETIME     NULL     COMMENT '가입일시' -- 가입일시
)
COMMENT '카카오 로그인(저장)';

-- 카카오 로그인(저장)
ALTER TABLE login_kakao
	ADD CONSTRAINT PK_login_kakao -- 카카오 로그인(저장) 기본키
		PRIMARY KEY (
			lgka_no -- 번호
		);

ALTER TABLE login_kakao
	MODIFY COLUMN lgka_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '번호';

-- 보호단체 정보
CREATE TABLE care_organization (
	co_no       INT UNSIGNED NOT NULL COMMENT '보호단체번호', -- 보호단체번호
	co_name     VARCHAR(255) NOT NULL COMMENT '단체명', -- 단체명
	co_addr     VARCHAR(255) NULL     COMMENT '단체주소', -- 단체주소
	co_tel      VARCHAR(12)  NULL     COMMENT '연락처', -- 연락처
	co_homepage VARCHAR(255) NULL     COMMENT '홈페이지' -- 홈페이지
)
COMMENT '보호단체 정보';

-- 보호단체 정보
ALTER TABLE care_organization
	ADD CONSTRAINT PK_care_organization -- 보호단체 정보 기본키
		PRIMARY KEY (
			co_no -- 보호단체번호
		);

ALTER TABLE care_organization
	MODIFY COLUMN co_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '보호단체번호';

-- 주소
CREATE TABLE addr (
	a_zip   INT(6) UNSIGNED NOT NULL COMMENT '우편번호', -- 우편번호
	a_addr1 VARCHAR(255)    NULL     COMMENT '주소', -- 주소
	a_addr2 VARCHAR(255)    NULL     COMMENT '주소2', -- 주소2
	a_addr3 VARCHAR(255)    NULL     COMMENT '주소3' -- 주소3
)
COMMENT '주소';

-- 주소
ALTER TABLE addr
	ADD CONSTRAINT PK_addr -- 주소 기본키
		PRIMARY KEY (
			a_zip -- 우편번호
		);

ALTER TABLE addr
	MODIFY COLUMN a_zip INT(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '우편번호';

-- 동물병원 정보(API)
CREATE TABLE veterinary_clinic (
	vc_no   INT UNSIGNED NOT NULL COMMENT '병원넘버', -- 병원넘버
	vc_addr VARCHAR(255) NULL     COMMENT '병원주소', -- 병원주소
	vc_tel  VARCHAR(12)  NULL     COMMENT '병원전화번호', -- 병원전화번호
	vc_loc  VARCHAR(255) NULL     COMMENT '지역명' -- 지역명
)
COMMENT '동물병원 정보(API)';

-- 동물병원 정보(API)
ALTER TABLE veterinary_clinic
	ADD CONSTRAINT PK_veterinary_clinic -- 동물병원 정보(API) 기본키
		PRIMARY KEY (
			vc_no -- 병원넘버
		);

ALTER TABLE veterinary_clinic
	MODIFY COLUMN vc_no INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '병원넘버';

-- 자유게시판(일반게시판)
ALTER TABLE main_board
	ADD CONSTRAINT FK_login_TO_main_board -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 자유게시판(일반게시판)
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 반려동물
ALTER TABLE pet
	ADD CONSTRAINT FK_breed_TO_pet -- 품종 -> 반려동물
		FOREIGN KEY (
			bd_id -- 품종
		)
		REFERENCES breed ( -- 품종
			bd_id -- 품종번호
		);

-- 반려동물
ALTER TABLE pet
	ADD CONSTRAINT FK_care_organization_TO_pet -- 보호단체 정보 -> 반려동물
		FOREIGN KEY (
			co_no -- 보호단체번호
		)
		REFERENCES care_organization ( -- 보호단체 정보
			co_no -- 보호단체번호
		);

-- 실종신고(이미지 게시판)
ALTER TABLE notice_missing
	ADD CONSTRAINT FK_pet_TO_notice_missing -- 반려동물 -> 실종신고(이미지 게시판)
		FOREIGN KEY (
			p_no -- 동물고유번호
		)
		REFERENCES pet ( -- 반려동물
			p_no -- 동물고유번호
		);

-- 실종신고(이미지 게시판)
ALTER TABLE notice_missing
	ADD CONSTRAINT FK_login_TO_notice_missing -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 실종신고(이미지 게시판)
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 입양 신청 테이블
ALTER TABLE adopt_pro
	ADD CONSTRAINT FK_research_TO_adopt_pro -- 설문지 -> 입양 신청 테이블
		FOREIGN KEY (
			r_no -- 설문지 번호
		)
		REFERENCES research ( -- 설문지
			r_no -- 설문지 번호
		);

-- 입양 신청 테이블
ALTER TABLE adopt_pro
	ADD CONSTRAINT FK_pet_TO_adopt_pro -- 반려동물 -> 입양 신청 테이블
		FOREIGN KEY (
			p_no -- 동물고유번호
		)
		REFERENCES pet ( -- 반려동물
			p_no -- 동물고유번호
		);

-- 입양 신청 테이블
ALTER TABLE adopt_pro
	ADD CONSTRAINT FK_login_TO_adopt_pro -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 입양 신청 테이블
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 임시보호 신청 테이블
ALTER TABLE tem_pro
	ADD CONSTRAINT FK_research_TO_tem_pro -- 설문지 -> 임시보호 신청 테이블
		FOREIGN KEY (
			r_no -- 설문지 번호
		)
		REFERENCES research ( -- 설문지
			r_no -- 설문지 번호
		);

-- 임시보호 신청 테이블
ALTER TABLE tem_pro
	ADD CONSTRAINT FK_pet_TO_tem_pro -- 반려동물 -> 임시보호 신청 테이블
		FOREIGN KEY (
			p_no -- 동물고유번호
		)
		REFERENCES pet ( -- 반려동물
			p_no -- 동물고유번호
		);

-- 임시보호 신청 테이블
ALTER TABLE tem_pro
	ADD CONSTRAINT FK_login_TO_tem_pro -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 임시보호 신청 테이블
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 보호신고(이미지 게시판)
ALTER TABLE notice_care
	ADD CONSTRAINT FK_pet_TO_notice_care -- 반려동물 -> 보호신고(이미지 게시판)
		FOREIGN KEY (
			p_no -- 동물고유번호
		)
		REFERENCES pet ( -- 반려동물
			p_no -- 동물고유번호
		);

-- 보호신고(이미지 게시판)
ALTER TABLE notice_care
	ADD CONSTRAINT FK_login_TO_notice_care -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 보호신고(이미지 게시판)
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 분양 관리 테이블
ALTER TABLE adopt
	ADD CONSTRAINT FK_pet_TO_adopt -- 반려동물 -> 분양 관리 테이블
		FOREIGN KEY (
			p_no -- 동물고유번호
		)
		REFERENCES pet ( -- 반려동물
			p_no -- 동물고유번호
		);

-- 분양 관리 테이블
ALTER TABLE adopt
	ADD CONSTRAINT FK_research_TO_adopt -- 설문지 -> 분양 관리 테이블
		FOREIGN KEY (
			r_no -- 설문지 번호
		)
		REFERENCES research ( -- 설문지
			r_no -- 설문지 번호
		);

-- 분양 관리 테이블
ALTER TABLE adopt
	ADD CONSTRAINT FK_tem_pro_TO_adopt -- 임시보호 신청 테이블 -> 분양 관리 테이블
		FOREIGN KEY (
			tp_no -- 임보신청번호
		)
		REFERENCES tem_pro ( -- 임시보호 신청 테이블
			tp_no -- 신청번호
		);

-- 분양 관리 테이블
ALTER TABLE adopt
	ADD CONSTRAINT FK_adopt_pro_TO_adopt -- 입양 신청 테이블 -> 분양 관리 테이블
		FOREIGN KEY (
			ap_no -- 입양신청번호
		)
		REFERENCES adopt_pro ( -- 입양 신청 테이블
			ap_no -- 신청번호
		);

-- 분양 관리 테이블
ALTER TABLE adopt
	ADD CONSTRAINT FK_login_TO_adopt -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 분양 관리 테이블
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 댓글
ALTER TABLE reply
	ADD CONSTRAINT FK_main_board_TO_reply -- 자유게시판(일반게시판) -> 댓글
		FOREIGN KEY (
			mb_no -- 자유게시판 게시번호
		)
		REFERENCES main_board ( -- 자유게시판(일반게시판)
			mb_no -- 게시번호
		);

-- 댓글
ALTER TABLE reply
	ADD CONSTRAINT FK_login_TO_reply -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 댓글
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

-- 댓글
ALTER TABLE reply
	ADD CONSTRAINT FK_notice_missing_TO_reply -- 실종신고(이미지 게시판) -> 댓글
		FOREIGN KEY (
			mb_no3 -- 실종신고 게시번호
		)
		REFERENCES notice_missing ( -- 실종신고(이미지 게시판)
			mb_no -- 게시물 번호
		);

-- 댓글
ALTER TABLE reply
	ADD CONSTRAINT FK_notice_care_TO_reply -- 보호신고(이미지 게시판) -> 댓글
		FOREIGN KEY (
			mb_no2 -- 보호신고 게시번호
		)
		REFERENCES notice_care ( -- 보호신고(이미지 게시판)
			mb_no -- 게시물 번호
		);

-- 로그인 히스토리(자동 출석게시판)
ALTER TABLE logHis
	ADD CONSTRAINT FK_login_TO_logHis -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북) -> 로그인 히스토리(자동 출석게시판)
		FOREIGN KEY (
			lg_no -- 유저 번호
		)
		REFERENCES login ( -- 로그인(세션)(일반회원저장 + 카카오 + 페이스북)
			lg_no -- 유저 번호
		);

