/* 유저 */
CREATE TABLE users (
	no NUMBER NOT NULL, /* 유저번호 */
	id VARCHAR2(20 CHAR) NOT NULL, /* 아이디 */
	password VARCHAR2(25 CHAR) NOT NULL, /* 비밀번호 */
	name VARCHAR2(5 CHAR) NOT NULL, /* 사용자 이름 */
	email VARCHAR2(35 CHAR) NOT NULL, /* 이메일 */
	phone_num VARCHAR2(18 CHAR) NOT NULL /* 핸드폰번호 */
);

COMMENT ON TABLE users IS '유저';

COMMENT ON COLUMN users.no IS '유저번호';

COMMENT ON COLUMN users.id IS '아이디';

COMMENT ON COLUMN users.password IS '비밀번호';

COMMENT ON COLUMN users.name IS '사용자 이름';

COMMENT ON COLUMN users.email IS '이메일';

COMMENT ON COLUMN users.phone_num IS '핸드폰번호';

CREATE UNIQUE INDEX PK_users
	ON users (
		no ASC
	);

CREATE UNIQUE INDEX UIX_users
	ON users (
		id ASC
	);

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			no
		);

ALTER TABLE users
	ADD
		CONSTRAINT UK_users
		UNIQUE (
			id
		);

--------------------------------------------------------
/* 반 정보 */

CREATE TABLE class (
	class_no NUMBER NOT NULL, /* 반 번호 */
	class_url VARCHAR2(20 CHAR) NOT NULL, /* 반 주소 */
	class_name VARCHAR2(15 CHAR) NOT NULL, /* 반 이름 */
	logo_file VARCHAR2(80 CHAR), /* 블로그 배너 */
	start_date DATE NOT NULL, /* 반 시작일 */
	end_date DATE NOT NULL, /* 반 종료일 */
	hidden VARCHAR2(4 CHAR) NOT NULL /* 노출여부 */
);

COMMENT ON TABLE class IS '반 정보';

COMMENT ON COLUMN class.class_no IS '반 번호';

COMMENT ON COLUMN class.class_url IS '반 주소';

COMMENT ON COLUMN class.class_name IS '반 이름';

COMMENT ON COLUMN class.logo_file IS '블로그 배너';

COMMENT ON COLUMN class.start_date IS '반 시작일';

COMMENT ON COLUMN class.end_date IS '반 종료일';

COMMENT ON COLUMN class.hidden IS '노출여부';

CREATE UNIQUE INDEX PK_class
	ON class (
		class_no ASC
	);

CREATE UNIQUE INDEX UIX_class
	ON class (
		class_url ASC
	);

ALTER TABLE class
	ADD
		CONSTRAINT PK_class
		PRIMARY KEY (
			class_no
		);

ALTER TABLE class
	ADD
		CONSTRAINT UK_class
		UNIQUE (
			class_url
		);

-----------------------------------------------------------

/* 반에 가입한 유저 */

CREATE TABLE join_users (
	join_no NUMBER NOT NULL, /* 가입회원번호 */
	class_no NUMBER NOT NULL, /* 반 번호 */
	user_no NUMBER NOT NULL, /* 학생유저번호 */
	approval VARCHAR2(3 CHAR) NOT NULL, /* 승인여부 */
	type VARCHAR2(5 CHAR), /* 구분 */
	join_date DATE /* 가입일 */
);

COMMENT ON TABLE join_users IS '반에 가입한 유저';

COMMENT ON COLUMN join_users.join_no IS '가입회원번호';

COMMENT ON COLUMN join_users.class_no IS '반 번호';

COMMENT ON COLUMN join_users.user_no IS '학생유저번호';

COMMENT ON COLUMN join_users.approval IS '승인, 대기, 탈퇴';

COMMENT ON COLUMN join_users.type IS '운영자, 일반';

COMMENT ON COLUMN join_users.join_date IS '가입일';

CREATE UNIQUE INDEX PK_join_users
	ON join_users (
		join_no ASC
	);

ALTER TABLE join_users
	ADD
		CONSTRAINT PK_join_users
		PRIMARY KEY (
			join_no
		);

ALTER TABLE join_users
	ADD
		CONSTRAINT FK_users_TO_join_users
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			no
		)
        on delete set null;

ALTER TABLE join_users
	ADD
		CONSTRAINT FK_class_TO_join_users
		FOREIGN KEY (
			class_no
		)
		REFERENCES class (
			class_no
		)
        on delete set null;
        
--------------------------------------------------        
        
/* 문제 카테고리 */
CREATE TABLE category (
	cate_no NUMBER NOT NULL, /* 카테고리 번호 */
	user_no NUMBER NOT NULL, /* 유저번호 */
	cate_name VARCHAR2(20 CHAR) NOT NULL, /* 카테고리 이름 */
	group_no NUMBER NOT NULL, /* 그룹번호 */
	order_no NUMBER NOT NULL, /* 그룹내 글순서 */
	depth NUMBER NOT NULL /* 깊이 */
);

COMMENT ON TABLE category IS '문제 카테고리';

COMMENT ON COLUMN category.cate_no IS '카테고리 번호';

COMMENT ON COLUMN category.user_no IS '유저번호';

COMMENT ON COLUMN category.cate_name IS '카테고리 이름';

COMMENT ON COLUMN category.group_no IS '그룹번호';

COMMENT ON COLUMN category.order_no IS '그룹내 글순서';

COMMENT ON COLUMN category.depth IS '깊이';

CREATE UNIQUE INDEX PK_category
	ON category (
		cate_no ASC
	);

ALTER TABLE category
	ADD
		CONSTRAINT PK_category
		PRIMARY KEY (
			cate_no
		);

ALTER TABLE category
	ADD
		CONSTRAINT FK_users_TO_category
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			no
		)
        on delete cascade;
        
------------------------------------------------------------        
        
/* 문제 */
CREATE TABLE problem (
	problem_no NUMBER NOT NULL, /* 문제 번호 */
	cate_no NUMBER NOT NULL, /* 카테고리 번호 */
	type VARCHAR2(6 CHAR) NOT NULL, /* 문제 종류 */
	problem_title VARCHAR2(6 CHAR) NOT NULL, /* 문제 제목 */
	content VARCHAR2(200 CHAR), /* 문제 지문 */
	content_image VARCHAR2(100 CHAR), /* 이미지 */
	description VARCHAR2(400 CHAR), /* 정답 설명 */
	answer VARCHAR2(30 CHAR) NOT NULL, /* 정답 */
	reg_date DATE /* 문제 만든날짜 */
);

COMMENT ON TABLE problem IS '문제';

COMMENT ON COLUMN problem.problem_no IS '문제 번호';

COMMENT ON COLUMN problem.cate_no IS '카테고리 번호';

COMMENT ON COLUMN problem.type IS '문제 종류';

COMMENT ON COLUMN problem.problem_title IS '문제 제목';

COMMENT ON COLUMN problem.content IS '문제 지문';

COMMENT ON COLUMN problem.content_image IS '이미지';

COMMENT ON COLUMN problem.description IS '정답 설명';

COMMENT ON COLUMN problem.answer IS '정답';

COMMENT ON COLUMN problem.reg_date IS '문제 만든날짜';

CREATE UNIQUE INDEX PK_problem
	ON problem (
		problem_no ASC
	);

ALTER TABLE problem
	ADD
		CONSTRAINT PK_problem
		PRIMARY KEY (
			problem_no
		);

ALTER TABLE problem
	ADD
		CONSTRAINT FK_category_TO_problem
		FOREIGN KEY (
			cate_no
		)
		REFERENCES category (
			cate_no
		)
        on delete set null;        

--------------------------------------------------

/* 보기 */
CREATE TABLE choice (
	choice_no NUMBER NOT NULL, /* 보기번호 */
	problem_no NUMBER NOT NULL, /* 문제 번호 */
	choice_content VARCHAR2(50 CHAR), /* 보기 내용 */
	attachment_file VARCHAR2(100 CHAR), /* 첨부파일 */
	order_no NUMBER /* 번호 */
);

COMMENT ON TABLE choice IS '보기';

COMMENT ON COLUMN choice.choice_no IS '보기번호';

COMMENT ON COLUMN choice.problem_no IS '문제 번호';

COMMENT ON COLUMN choice.choice_content IS '보기 내용';

COMMENT ON COLUMN choice.attachment_file IS '첨부파일';

COMMENT ON COLUMN choice.order_no IS '번호';

CREATE UNIQUE INDEX PK_choice
	ON choice (
		choice_no ASC
	);

ALTER TABLE choice
	ADD
		CONSTRAINT PK_choice
		PRIMARY KEY (
			choice_no
		);

ALTER TABLE choice
	ADD
		CONSTRAINT FK_problem_TO_choice
		FOREIGN KEY (
			problem_no
		)
		REFERENCES problem (
			problem_no
		)
        on delete cascade; 
        
-------------------------------------------------
/* 시험출제 */

CREATE TABLE exam (
	exam_no NUMBER NOT NULL, /* 시험 번호 */
	class_no NUMBER NOT NULL, /* 반 번호 */
	exam_title VARCHAR2(20 CHAR) NOT NULL, /* 시험제목 */
	exam_type VARCHAR2(8 CHAR) NOT NULL, /* 시험 종류 */
	time VARCHAR2(15 CHAR), /* 시험 시간 */
	start_date DATE NOT NULL, /* 시험 시작 기간 */
	end_date DATE NOT NULL, /* 시험 종료 기간 */
	exam_regDate DATE /* 등록일 */
);

COMMENT ON TABLE exam IS '시험출제';

COMMENT ON COLUMN exam.exam_no IS '시험 번호';

COMMENT ON COLUMN exam.class_no IS '반 번호';

COMMENT ON COLUMN exam.exam_title IS '시험제목';

COMMENT ON COLUMN exam.exam_type IS '시험 종류';

COMMENT ON COLUMN exam.time IS '시험 시간';

COMMENT ON COLUMN exam.start_date IS '시험 시작 기간';

COMMENT ON COLUMN exam.end_date IS '시험 종료 기간';

COMMENT ON COLUMN exam.exam_regDate IS '등록일';

CREATE UNIQUE INDEX PK_exam
	ON exam (
		exam_no ASC
	);

ALTER TABLE exam
	ADD
		CONSTRAINT PK_exam
		PRIMARY KEY (
			exam_no
		);

ALTER TABLE exam
	ADD
		CONSTRAINT FK_class_TO_exam
		FOREIGN KEY (
			class_no
		)
		REFERENCES class (
			class_no
		)
        on delete set null;
        
------------------------------------------------

/* 출제문제 */
CREATE TABLE question (
	question_no NUMBER NOT NULL, /* 출제문제번호 */
	exam_no NUMBER NOT NULL, /* 시험 번호 */
	problem_no NUMBER NOT NULL, /* 문제 번호 */
	point NUMBER NOT NULL, /* 배점 */
	order_num NUMBER NOT NULL /* 순서 */
);

COMMENT ON TABLE question IS '출제문제';

COMMENT ON COLUMN question.question_no IS '출제문제번호';

COMMENT ON COLUMN question.exam_no IS '시험 번호';

COMMENT ON COLUMN question.problem_no IS '문제 번호';

COMMENT ON COLUMN question.point IS '배점';

COMMENT ON COLUMN question.order_num IS '순서';

CREATE UNIQUE INDEX PK_question
	ON question (
		question_no ASC
	);

ALTER TABLE question
	ADD
		CONSTRAINT PK_question
		PRIMARY KEY (
			question_no
		);

ALTER TABLE question
	ADD
		CONSTRAINT FK_exam_TO_question
		FOREIGN KEY (
			exam_no
		)
		REFERENCES exam (
			exam_no
		)
        on delete set null;

ALTER TABLE question
	ADD
		CONSTRAINT FK_problem_TO_question
		FOREIGN KEY (
			problem_no
		)
		REFERENCES problem (
			problem_no
		)
        on delete set null;
        
        
-----------------------------------------
/* 내가 푼 문제들 */
CREATE TABLE solve (
	solve_no NUMBER NOT NULL, /* 푼 문제 식별번호 */
	join_no NUMBER NOT NULL, /* 가입회원번호 */
	question_no NUMBER NOT NULL, /* 출제문제번호 */
	submit_answer VARCHAR2(50 CHAR), /* 제출정답 */
	attachment_file VARCHAR2(100 CHAR), /* 첨부파일 */
	mypoint NUMBER, /* 점수 */
	status VARCHAR2(4 CHAR) /* 상태 */
);

COMMENT ON TABLE solve IS '내가 푼 문제들';

COMMENT ON COLUMN solve.solve_no IS '푼 문제 식별번호';

COMMENT ON COLUMN solve.join_no IS '가입회원번호';

COMMENT ON COLUMN solve.question_no IS '출제문제번호';

COMMENT ON COLUMN solve.submit_answer IS '제출정답';

COMMENT ON COLUMN solve.attachment_file IS '첨부파일';

COMMENT ON COLUMN solve.mypoint IS '제출한 답에 대한 점수';

COMMENT ON COLUMN solve.status IS '출제  저장 제출  완료';

CREATE UNIQUE INDEX PK_solve
	ON solve (
		solve_no ASC
	);

ALTER TABLE solve
	ADD
		CONSTRAINT PK_solve
		PRIMARY KEY (
			solve_no
		);

ALTER TABLE solve
	ADD
		CONSTRAINT FK_question_TO_solve
		FOREIGN KEY (
			question_no
		)
		REFERENCES question (
			question_no
		)
        on delete set null;

ALTER TABLE solve
	ADD
		CONSTRAINT FK_join_users_TO_solve
		FOREIGN KEY (
			join_no
		)
		REFERENCES join_users (
			join_no
		)
        on delete set null;
        
----------------------------------------
/* 공지사항 */
CREATE TABLE notice (
	notice_no NUMBER NOT NULL, /* 글번호 */
	join_no NUMBER NOT NULL, /* 가입회원번호 */
	title VARCHAR2(30 CHAR) NOT NULL, /* 제목 */
	content VARCHAR2(500 CHAR), /* 내용 */
	hit NUMBER, /* 조회수 */
	reg_date DATE /* 등록일 */
);

COMMENT ON TABLE notice IS '공지사항';

COMMENT ON COLUMN notice.notice_no IS '글번호';

COMMENT ON COLUMN notice.join_no IS '가입회원번호';

COMMENT ON COLUMN notice.title IS '제목';

COMMENT ON COLUMN notice.content IS '내용';

COMMENT ON COLUMN notice.hit IS '조회수';

COMMENT ON COLUMN notice.reg_date IS '등록일';

CREATE UNIQUE INDEX PK_notice
	ON notice (
		notice_no ASC
	);

ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice
		PRIMARY KEY (
			notice_no
		);

ALTER TABLE notice
	ADD
		CONSTRAINT FK_join_users_TO_notice
		FOREIGN KEY (
			join_no
		)
		REFERENCES join_users (
			join_no
		)
        on delete cascade;

       