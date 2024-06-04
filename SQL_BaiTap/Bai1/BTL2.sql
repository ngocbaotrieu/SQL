-- Table: chapter
CREATE TABLE chapter(
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    course_id int NOT NULL,
    chapter_no int NOT NULL,
    description text NOT NULL,
    CONSTRAINT chapter_ak_1 UNIQUE (course_id, chapter_no)
);

-- Table: course
CREATE TABLE course (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    image_url text NULL,
    commitment varchar(255) NOT NULL,
    description text NOT NULL,
    specialization_id int NULL,
    min_grade decimal(5,2) NOT NULL,
    course_price decimal(8,2) NOT NULL,
    active bit NOT NULL,
    CONSTRAINT course_ak_1 UNIQUE (name)
);

-- Table: course_created_by
CREATE TABLE course_created_by (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    institution_id int NOT NULL,
    course_id int NOT NULL,
    CONSTRAINT course_created_by_ak_1 UNIQUE (institution_id, course_id)
);

-- Table: course_session
CREATE TABLE course_session (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    course_id int NOT NULL,
    start_date datetime NOT NULL,
    end_date datetime NOT NULL,
    specialization_session_id int NULL,
    CONSTRAINT course_session_ak_1 UNIQUE (course_id, start_date)
);

-- Table: enrolled_course
CREATE TABLE enrolled_course (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id int NOT NULL,
    course_session_id int NOT NULL,
    enrollment_date datetime NOT NULL,
    status_id int NULL,
    status_date datetime NULL,
    final_grade decimal(5,2) NULL,
    certificate_ID text NULL,
    certificate_location text NULL,
    CONSTRAINT enrolled_course_ak_1 UNIQUE (student_id, course_session_id)
);

-- Table: enrolled_specialization
CREATE TABLE enrolled_specialization (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id int NOT NULL,
    specialization_session_id int NOT NULL,
    enrollment_date datetime NOT NULL,
    status_id int NULL,
    status_date datetime NULL,
    final_grade decimal(5,2) NULL,
    certificate_ID text NULL,
    certificate_location text NULL,
    CONSTRAINT enrolled_specialization_ak_1 UNIQUE (student_id, specialization_session_id)
);

-- Table: institution
CREATE TABLE institution (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    location varchar(255) NOT NULL,
    uname varchar(255) NOT NULL,
    pass varchar(255) NOT NULL
);

-- Table: lecturer
CREATE TABLE lecturer (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(64) NOT NULL,
    last_name varchar(64) NOT NULL,
    title varchar(32) NOT NULL,
    institution_id int NOT NULL
);

-- Table: material
CREATE TABLE material (
    id int  NOT NULL PRIMARY KEY AUTO_INCREMENT,
    chapter_id int NOT NULL,
    material_no int NOT NULL,
    material_type_id int NULL, 
    material_link text NOT NULL,
    mandatroy bit NOT NULL,
    max_points int NOT NULL,
    CONSTRAINT material_ak_1 UNIQUE (chapter_id, material_no)
);

-- Table: material_type
CREATE TABLE material_type (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type_name varchar(64) NOT NULL,
    CONSTRAINT material_type_ak_1 UNIQUE (type_name)
);

-- Table: on_course
CREATE TABLE on_course (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    lecturer_id int NOT NULL,
    course_id int NOT NULL,
    CONSTRAINT on_course_ak_1 UNIQUE (lecturer_id, course_id)
);

-- Table: on_specialization
CREATE TABLE on_specialization (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    lecturer_id int NOT NULL,
    specialization_id int NOT NULL,
    CONSTRAINT on_specialization_ak_1 UNIQUE (lecturer_id, specialization_id)
);

-- Table: specialization
CREATE TABLE specialization (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    description text NOT NULL,
    specialization_discount decimal(8,2)  NOT NULL,
    active bit NOT NULL,
    num_of_courses INT NOT NULL
);

-- Table: specialization_created_by
CREATE TABLE specialization_created_by (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    institution_id int NOT NULL,
    specialization_id int NOT NULL,
    CONSTRAINT specialization_created_by_ak_1 UNIQUE (institution_id, specialization_id)
);

-- Table: specialization_session
CREATE TABLE specialization_session (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    specialization_id int NOT NULL,
    start_date datetime NOT NULL,
    end_date datetime NOT NULL,
    CONSTRAINT specialization_session_ak_1 UNIQUE (specialization_id, start_date)
);

-- Table: status
CREATE TABLE status (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    status_name varchar(255) NOT NULL,
    CONSTRAINT status_ak_1 UNIQUE (status_name)
);

-- Table: student
CREATE TABLE student (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name varchar(64) NOT NULL,
    last_name varchar(64) NOT NULL,
    image_url text NULL,
    uname varchar(255) NOT NULL,
    pass varchar(255) NOT NULL,
    location text NOT NULL,
    CONSTRAINT student_ak_1 UNIQUE (uname)
);

-- Table: student_results
CREATE TABLE student_results (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    material_id int NOT NULL,
    enrolled_course_id int NOT NULL,
    attempt int NOT NULL,
    attempt_link text NULL,
    started datetime(6) NOT NULL,
    ended datetime(6) NULL,
    score int NULL,
    CONSTRAINT student_results_ak_1 UNIQUE (material_id, enrolled_course_id, attempt)
);

-- Table: comment
CREATE TABLE comment
(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	course_id int NOT NULL,
	student_id int NOT NULL,
	content text NOT NULL,
    cmmt_time datetime NOT NULL
);

-- Table: update_comment
CREATE TABLE update_comment
(
	id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	comment_id int NOT NULL,
	content text NOT NULL,
    cmmt_time datetime NOT NULL
);

-- foreign keys
-- Reference: chapter_course (table: chapter)
ALTER TABLE chapter ADD CONSTRAINT chapter_course
    FOREIGN KEY (course_id)
    REFERENCES course (id)
    ON DELETE CASCADE ;

-- Reference: course_created_by_course (table: course_created_by)
ALTER TABLE course_created_by ADD CONSTRAINT course_created_by_course
    FOREIGN KEY (course_id)
    REFERENCES course (id)
    ON DELETE CASCADE ;

-- Reference: course_created_by_institution (table: course_created_by)
ALTER TABLE course_created_by ADD CONSTRAINT course_created_by_institution
    FOREIGN KEY (institution_id)
    REFERENCES institution (id)
    ON DELETE CASCADE ;

-- Reference: course_session_course (table: course_session)
ALTER TABLE course_session ADD CONSTRAINT course_session_course
    FOREIGN KEY (course_id)
    REFERENCES course (id)
    ON DELETE CASCADE ;

-- Reference: course_session_specialization_session (table: course_session)
ALTER TABLE course_session ADD CONSTRAINT course_session_specialization_session
    FOREIGN KEY (specialization_session_id)
    REFERENCES specialization_session (id)
    ON DELETE SET NULL ;

-- Reference: course_specialization (table: course)
ALTER TABLE course ADD CONSTRAINT course_specialization
    FOREIGN KEY (specialization_id)
    REFERENCES specialization (id)
    ON DELETE SET NULL ;

-- Reference: enrolled_course_course_session (table: enrolled_course)
ALTER TABLE enrolled_course ADD CONSTRAINT enrolled_course_course_session
    FOREIGN KEY (course_session_id)
    REFERENCES course_session (id) 
    ON DELETE CASCADE ;

-- Reference: enrolled_course_status (table: enrolled_course)
ALTER TABLE enrolled_course ADD CONSTRAINT enrolled_course_status
    FOREIGN KEY (status_id)
    REFERENCES status (id)
    ON DELETE SET NULL ;

-- Reference: enrolled_course_student (table: enrolled_course)
ALTER TABLE enrolled_course ADD CONSTRAINT enrolled_course_student
    FOREIGN KEY (student_id)
    REFERENCES student (id)
    ON DELETE CASCADE ;

-- Reference: enrolled_specialization_specialization_session (table: enrolled_specialization)
ALTER TABLE enrolled_specialization ADD CONSTRAINT enrolled_specialization_specialization_session
    FOREIGN KEY (specialization_session_id)
    REFERENCES specialization_session (id)  
    ON DELETE CASCADE ;

-- Reference: enrolled_specialization_status (table: enrolled_specialization)
ALTER TABLE enrolled_specialization ADD CONSTRAINT enrolled_specialization_status
    FOREIGN KEY (status_id)
    REFERENCES status (id)  
    ON DELETE SET NULL ;

-- Reference: enrolled_specialization_student (table: enrolled_specialization)
ALTER TABLE enrolled_specialization ADD CONSTRAINT enrolled_specialization_student
    FOREIGN KEY (student_id)
    REFERENCES student (id)
    ON DELETE CASCADE ;

-- Reference: lecturer_institution (table: lecturer)
ALTER TABLE lecturer ADD CONSTRAINT lecturer_institution
    FOREIGN KEY (institution_id)
    REFERENCES institution (id)
    ON DELETE CASCADE ;

-- Reference: material_chapter (table: material)
ALTER TABLE material ADD CONSTRAINT material_chapter
    FOREIGN KEY (chapter_id)
    REFERENCES chapter (id)  
    ON DELETE CASCADE ;

-- Reference: material_material_type (table: material)
ALTER TABLE material ADD CONSTRAINT material_material_type
    FOREIGN KEY (material_type_id)
    REFERENCES material_type (id)
    ON DELETE SET NULL ;

-- Reference: on_course_course (table: on_course)
ALTER TABLE on_course ADD CONSTRAINT on_course_course
    FOREIGN KEY (course_id)
    REFERENCES course (id)
    ON DELETE CASCADE ;

-- Reference: on_course_lecturer (table: on_course)
ALTER TABLE on_course ADD CONSTRAINT on_course_lecturer
    FOREIGN KEY (lecturer_id)
    REFERENCES lecturer (id)
    ON DELETE CASCADE ;

-- Reference: on_specialization_lecturer (table: on_specialization)
ALTER TABLE on_specialization ADD CONSTRAINT on_specialization_lecturer
    FOREIGN KEY (lecturer_id)
    REFERENCES lecturer (id)
    ON DELETE CASCADE ;

-- Reference: on_specialization_specialization (table: on_specialization)
ALTER TABLE on_specialization ADD CONSTRAINT on_specialization_specialization
    FOREIGN KEY (specialization_id)
    REFERENCES specialization (id)  
    ON DELETE CASCADE ;

-- Reference: specialization_created_by_institution (table: specialization_created_by)
ALTER TABLE specialization_created_by ADD CONSTRAINT specialization_created_by_institution
    FOREIGN KEY (institution_id)
    REFERENCES institution (id)  
    ON DELETE CASCADE ;

-- Reference: specialization_created_by_specialization (table: specialization_created_by)
ALTER TABLE specialization_created_by ADD CONSTRAINT specialization_created_by_specialization
    FOREIGN KEY (specialization_id)
    REFERENCES specialization (id)  
    ON DELETE CASCADE ;

-- Reference: specialization_session_specialization (table: specialization_session)
ALTER TABLE specialization_session ADD CONSTRAINT specialization_session_specialization
    FOREIGN KEY (specialization_id)
    REFERENCES specialization (id)  
    ON DELETE CASCADE ;

-- Reference: student_results_enrolled_course (table: student_results)
ALTER TABLE student_results ADD CONSTRAINT student_results_enrolled_course
    FOREIGN KEY (enrolled_course_id)
    REFERENCES enrolled_course (id)  
    ON DELETE CASCADE ;

-- Reference: student_results_material (table: student_results)
ALTER TABLE student_results ADD CONSTRAINT student_results_material
    FOREIGN KEY (material_id)
    REFERENCES material (id)  
    ON DELETE CASCADE ;

-- Reference:
ALTER TABLE comment ADD CONSTRAINT comment_in_course
    FOREIGN KEY (course_id)
    REFERENCES course(id)
    ON DELETE CASCADE ;

-- Reference:
ALTER TABLE comment ADD CONSTRAINT comment_of_student
    FOREIGN KEY (student_id)
    REFERENCES student(id)
    ON DELETE CASCADE ;

-- Reference:
ALTER TABLE update_comment ADD CONSTRAINT last_comments_of_comment
    FOREIGN KEY (comment_id)
    REFERENCES comment(id)
    ON DELETE CASCADE ;

-- End of file.