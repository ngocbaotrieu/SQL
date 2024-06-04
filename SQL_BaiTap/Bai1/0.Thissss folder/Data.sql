-- Institution
INSERT INTO `institution` VALUES(NULL, 'University of Oxford', 'Oxford, England, United Kingdom', 'oxford@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'University of Cambridge', 'Cambridge, England, United Kingdom', 'cambridge@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'University of Sheffield', 'Sheffield, South Yorkshire, England', 'sheffield@gmail.com', '123456');

INSERT INTO `institution` VALUES(NULL, 'Massachusetts Institute of Technology', 'Cambridge, Massachusetts, United States', 'mit@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'Harvard University', 'Cambridge, Massachusetts, United States', 'harvard@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'Stanford University', 'Stanford, California, United States', 'stanford@gmail.com', '123456');

INSERT INTO `institution` VALUES(NULL, 'The University of Tokyo', 'Bunkyoo, Tokyo, Japan', 'todai@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'Tsinghua University', 'Haidian District, Beijing, Peoples Republic of China', 'tsinghua@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'National University of Singapore', 'Singapore', 'nus@gmail.com', '123456');
INSERT INTO `institution` VALUES(NULL, 'HCMC University of Technology', '268 Ly Thuong Kiet St., Dist.10, Ho Chi Minh City, Vietnam', 'hcmut@gmail.com', '123456');
--

-- Lecturer
INSERT INTO `lecturer` VALUES(NULL, 'Jeff', 'Leek', 'Associate Professor', 1);
INSERT INTO `lecturer` VALUES(NULL, 'Brian', 'Caffo', 'Professor', 1);
INSERT INTO `lecturer` VALUES(NULL, 'Roger', 'Peng', 'Associate Professor', 1);
INSERT INTO `lecturer` VALUES(NULL, 'Tim', 'Roughgarden', 'Professor', 1);
INSERT INTO `lecturer` VALUES(NULL, 'Brent', 'Hecht', 'Assistant Professor', 1);

INSERT INTO `lecturer` VALUES(NULL, 'Jeff', 'Leek', 'Associate Professor', 3);
INSERT INTO `lecturer` VALUES(NULL, 'Brian', 'Caffo', 'Professor', 3);
INSERT INTO `lecturer` VALUES(NULL, 'Roger', 'Peng', 'Associate Professor', 3);
INSERT INTO `lecturer` VALUES(NULL, 'Tim', 'Roughgarden', 'Professor', 3);
INSERT INTO `lecturer` VALUES(NULL, 'Brent', 'Hecht', 'Assistant Professor', 3);

INSERT INTO `lecturer` VALUES(NULL, 'Tess', 'Wilkinson-Ryan', 'Associate Professor', 5);
INSERT INTO `lecturer` VALUES(NULL, 'Philip', 'Peck', 'Associate Professor', 5);
INSERT INTO `lecturer` VALUES(NULL, 'Alex', 'Aklson', 'Data Scientist', 5);
INSERT INTO `lecturer` VALUES(NULL, 'Nigel', 'Saul', 'Professor', 5);
INSERT INTO `lecturer` VALUES(NULL, 'Candy', 'Lee', 'Professor', 5);

INSERT INTO `lecturer` VALUES(NULL, 'Tess', 'Wilkinson-Ryan', 'Associate Professor', 6);
INSERT INTO `lecturer` VALUES(NULL, 'Philip', 'Peck', 'Associate Professor', 6);
INSERT INTO `lecturer` VALUES(NULL, 'Alex', 'Aklson', 'Data Scientist', 6);
INSERT INTO `lecturer` VALUES(NULL, 'Nigel', 'Saul', 'Professor', 6);
INSERT INTO `lecturer` VALUES(NULL, 'Candy', 'Lee', 'Professor', 6);

INSERT INTO `lecturer` VALUES(NULL, 'Chi', 'Truong Quynh', 'Lecturer', 10);
INSERT INTO `lecturer` VALUES(NULL, 'Phung', 'Nguyen Hua', 'Associate Professor', 10);
INSERT INTO `lecturer` VALUES(NULL, 'Nam', 'Thoai', 'Professor', 10);
INSERT INTO `lecturer` VALUES(NULL, 'Ty', 'Nguyen Huu Ky', 'Lecturer', 10);
INSERT INTO `lecturer` VALUES(NULL, 'Lai', 'Nguyen Le Duy', 'Lecturer', 10);

-- Specialization/Course
INSERT INTO `specialization` VALUES(NULL, 'Introduction to Data Mining', 'Learn to apply data science methods and techniques, and acquire analysis skills.', 6.0, 1, 4);
INSERT INTO `course` VALUES(NULL, 'Learn Python 3', NULL, 'We remains committed to providing certificate', 'Learn to use Python 3', 1, 7.5, 19.0, 1);
INSERT INTO `course` VALUES(NULL, 'Advanced Algorithms', NULL, 'We remains committed to providing certificate', 'Learn algorithms', 1, 7.5, 33.0, 1);
INSERT INTO `course` VALUES(NULL, 'DFS Hadoop', NULL, 'We remains committed to providing certificate', 'Learn hadoop', 1, 7.5, 15.0, 1);
INSERT INTO `course` VALUES(NULL, 'HIV/AIDS Victim Data Mining Project', NULL, 'We remains committed to providing certificate', 'Final project', 1, 9.5, 35.0, 1);

INSERT INTO `specialization` VALUES(NULL, 'Mathematics for Machine Learning', 'Learn about the prerequisite mathematics for applications in data science and machine learning.', 10.0, 1, 3);
INSERT INTO `course` VALUES(NULL, 'Linear Algebra', NULL, 'We remains committed to providing certificate', 'Learn linear algebra', 2, 5.0, 21.0, 1);
INSERT INTO `course` VALUES(NULL, 'Multivariable Calculus', NULL, 'We remains committed to providing certificate', 'Learn multivariable calculus', 2, 5.0, 19.0, 1);
INSERT INTO `course` VALUES(NULL, 'PCA', NULL, 'We remains committed to providing certificate', 'Learn principal component analysis', 2, 8.0, 30.0, 1);

INSERT INTO `specialization` VALUES(NULL, 'Introduction to Deep Learning', 'Neural Networks for Computer Vision, Time Series Forecasting, NLP, GANs', 13.0, 1, 4);
INSERT INTO `course` VALUES(NULL, 'Introduction to Neural Networks', NULL, 'We remains committed to providing certificate', 'Learn neural networks', 3, 7.0, 25.0, 1);
INSERT INTO `course` VALUES(NULL, 'Introduction to Computer Vision', NULL, 'We remains committed to providing certificate', 'Learn Python OpenCV', 3, 9.0, 27.0, 1);
INSERT INTO `course` VALUES(NULL, 'Decision Tree', NULL, 'We remains committed to providing certificate', 'Learn decision tree', 3, 9.0, 30.0, 1);
INSERT INTO `course` VALUES(NULL, 'Support Vector Machine', NULL, 'We remains committed to providing certificate', 'Learn SVM', 3, 9.0, 30.0, 1);

INSERT INTO `course` VALUES(NULL, 'Anh Van 1', NULL, 'We remains committed to providing certificate', 'Learn English', NULL, 5.0, 50.0, 1);
INSERT INTO `course` VALUES(NULL, 'Anh Van 2', NULL, 'We remains committed to providing certificate', 'Learn English', NULL, 5.0, 50.0, 1);
INSERT INTO `course` VALUES(NULL, 'Anh Van 3', NULL, 'We remains committed to providing certificate', 'Learn English', NULL, 5.0, 50.0, 1);
INSERT INTO `course` VALUES(NULL, 'Anh Van 4', NULL, 'We remains committed to providing certificate', 'Learn English', NULL, 5.0, 50.0, 1);
INSERT INTO `course` VALUES(NULL, 'Giai tich 1', NULL, 'We remains committed to providing certificate', 'Learn mathematical analysis', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Giai tich 2', NULL, 'We remains committed to providing certificate', 'Learn mathematical analysis', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Giai tich 3', NULL, 'We remains committed to providing certificate', 'Learn mathematical analysis', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Vat Ly 1', NULL, 'We remains committed to providing certificate', 'Learn physics', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Vat Ly 2', NULL, 'We remains committed to providing certificate', 'Learn physics', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Hoa Dai cuong', NULL, 'We remains committed to providing certificate', 'Learn chemistry', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'Nhap mon Dien toan', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'Cau truc roi rac cho Khoa hoc May tinh', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Dai so tuyen tinh', NULL, 'We remains committed to providing certificate', 'Learn linear algebra', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'He thong so', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Ky thuat lap trinh', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Thi nghiem Vat Ly', NULL, 'We remains committed to providing certificate', 'Learn physics', NULL, 5.0, 25.0, 1);
INSERT INTO `course` VALUES(NULL, 'Phuong phap tinh', NULL, 'We remains committed to providing certificate', 'Learn calculus method', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'Cau truc du lieu va Giai thuat', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Lap trinh Huong doi tuong', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Kien truc May tinh', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Mo hinh hoa Toan hoc', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'He dieu hanh', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'Cong nghe phan mem', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'Xac suat va Thong ke', NULL, 'We remains committed to providing certificate', 'Learn probability and statistics', NULL, 5.0, 75.0, 1);
INSERT INTO `course` VALUES(NULL, 'Nguyen ly ngon ngu lap trinh', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Tinh toan song song', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'He co so du lieu', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);
INSERT INTO `course` VALUES(NULL, 'Mang may tinh', NULL, 'We remains committed to providing certificate', 'Learn computer science', NULL, 5.0, 100.0, 1);

-- course create by
INSERT INTO `course_created_by` VALUES(NULL, 10, 12);
INSERT INTO `course_created_by` VALUES(NULL, 10, 13);
INSERT INTO `course_created_by` VALUES(NULL, 10, 14);
INSERT INTO `course_created_by` VALUES(NULL, 10, 15);
INSERT INTO `course_created_by` VALUES(NULL, 10, 16);
INSERT INTO `course_created_by` VALUES(NULL, 10, 17);
INSERT INTO `course_created_by` VALUES(NULL, 10, 18);
INSERT INTO `course_created_by` VALUES(NULL, 10, 19);
INSERT INTO `course_created_by` VALUES(NULL, 10, 20);
INSERT INTO `course_created_by` VALUES(NULL, 10, 21);
INSERT INTO `course_created_by` VALUES(NULL, 10, 22);
INSERT INTO `course_created_by` VALUES(NULL, 10, 23);
INSERT INTO `course_created_by` VALUES(NULL, 10, 24);
INSERT INTO `course_created_by` VALUES(NULL, 10, 25);
INSERT INTO `course_created_by` VALUES(NULL, 10, 26);
INSERT INTO `course_created_by` VALUES(NULL, 10, 27);
INSERT INTO `course_created_by` VALUES(NULL, 10, 28);
INSERT INTO `course_created_by` VALUES(NULL, 10, 29);
INSERT INTO `course_created_by` VALUES(NULL, 10, 30);
INSERT INTO `course_created_by` VALUES(NULL, 10, 31);
INSERT INTO `course_created_by` VALUES(NULL, 10, 32);
INSERT INTO `course_created_by` VALUES(NULL, 10, 33);
INSERT INTO `course_created_by` VALUES(NULL, 10, 34);
INSERT INTO `course_created_by` VALUES(NULL, 10, 35);
INSERT INTO `course_created_by` VALUES(NULL, 10, 36);
INSERT INTO `course_created_by` VALUES(NULL, 10, 37);
INSERT INTO `course_created_by` VALUES(NULL, 10, 38);
INSERT INTO `course_created_by` VALUES(NULL, 10, 39);

INSERT INTO `course_created_by` VALUES(NULL, 1, 1);
INSERT INTO `course_created_by` VALUES(NULL, 1, 2);
INSERT INTO `course_created_by` VALUES(NULL, 1, 3);
INSERT INTO `course_created_by` VALUES(NULL, 1, 4);

INSERT INTO `course_created_by` VALUES(NULL, 3, 5);
INSERT INTO `course_created_by` VALUES(NULL, 3, 6);
INSERT INTO `course_created_by` VALUES(NULL, 3, 7);

INSERT INTO `course_created_by` VALUES(NULL, 5, 8);
INSERT INTO `course_created_by` VALUES(NULL, 5, 9);
INSERT INTO `course_created_by` VALUES(NULL, 5, 10);
INSERT INTO `course_created_by` VALUES(NULL, 5, 11);

-- specialization create by
INSERT INTO `specialization_created_by` VALUES(NULL, 1, 1);
INSERT INTO `specialization_created_by` VALUES(NULL, 3, 2);
INSERT INTO `specialization_created_by` VALUES(NULL, 5, 3);

-- on course
INSERT INTO `on_course` VALUES(NULL, 21, 12);
INSERT INTO `on_course` VALUES(NULL, 21, 13);
INSERT INTO `on_course` VALUES(NULL, 21, 14);
INSERT INTO `on_course` VALUES(NULL, 21, 15);
INSERT INTO `on_course` VALUES(NULL, 22, 16);
INSERT INTO `on_course` VALUES(NULL, 22, 17);
INSERT INTO `on_course` VALUES(NULL, 22, 18);
INSERT INTO `on_course` VALUES(NULL, 22, 19);
INSERT INTO `on_course` VALUES(NULL, 22, 20);
INSERT INTO `on_course` VALUES(NULL, 22, 21);
INSERT INTO `on_course` VALUES(NULL, 23, 22);
INSERT INTO `on_course` VALUES(NULL, 23, 23);
INSERT INTO `on_course` VALUES(NULL, 23, 24);
INSERT INTO `on_course` VALUES(NULL, 23, 25);
INSERT INTO `on_course` VALUES(NULL, 23, 26);
INSERT INTO `on_course` VALUES(NULL, 23, 27);
INSERT INTO `on_course` VALUES(NULL, 24, 28);
INSERT INTO `on_course` VALUES(NULL, 24, 29);
INSERT INTO `on_course` VALUES(NULL, 24, 30);
INSERT INTO `on_course` VALUES(NULL, 24, 31);
INSERT INTO `on_course` VALUES(NULL, 25, 32);
INSERT INTO `on_course` VALUES(NULL, 25, 33);
INSERT INTO `on_course` VALUES(NULL, 25, 34);
INSERT INTO `on_course` VALUES(NULL, 25, 35);
INSERT INTO `on_course` VALUES(NULL, 25, 36);
INSERT INTO `on_course` VALUES(NULL, 25, 37);
INSERT INTO `on_course` VALUES(NULL, 25, 38);
INSERT INTO `on_course` VALUES(NULL, 25, 39);

INSERT INTO `on_course` VALUES(NULL, 21, 31);
INSERT INTO `on_course` VALUES(NULL, 21, 32);
INSERT INTO `on_course` VALUES(NULL, 21, 33);
INSERT INTO `on_course` VALUES(NULL, 21, 34);
INSERT INTO `on_course` VALUES(NULL, 21, 35);
INSERT INTO `on_course` VALUES(NULL, 21, 36);
INSERT INTO `on_course` VALUES(NULL, 21, 37);
INSERT INTO `on_course` VALUES(NULL, 21, 38);
INSERT INTO `on_course` VALUES(NULL, 21, 39);

INSERT INTO `on_course` VALUES(NULL, 22, 24);
INSERT INTO `on_course` VALUES(NULL, 22, 25);
INSERT INTO `on_course` VALUES(NULL, 22, 26);
INSERT INTO `on_course` VALUES(NULL, 22, 27);
INSERT INTO `on_course` VALUES(NULL, 22, 28);
INSERT INTO `on_course` VALUES(NULL, 22, 29);
INSERT INTO `on_course` VALUES(NULL, 22, 30);
INSERT INTO `on_course` VALUES(NULL, 22, 31);
INSERT INTO `on_course` VALUES(NULL, 22, 32);
INSERT INTO `on_course` VALUES(NULL, 22, 33);
INSERT INTO `on_course` VALUES(NULL, 22, 34);
INSERT INTO `on_course` VALUES(NULL, 22, 35);

-- chapter
INSERT INTO `chapter` VALUES(NULL, 38, 1, 'Introduction to Database Systems');
INSERT INTO `chapter` VALUES(NULL, 38, 2, 'Database System Concepts And Architecture');
INSERT INTO `chapter` VALUES(NULL, 38, 3, 'Entity Relationship Model');
INSERT INTO `chapter` VALUES(NULL, 38, 4, 'Extended Entity Relationship Model');
INSERT INTO `chapter` VALUES(NULL, 38, 5, 'Relational Data Model And Relational Mapping');
INSERT INTO `chapter` VALUES(NULL, 38, 6, 'Relational Algebra');
INSERT INTO `chapter` VALUES(NULL, 38, 7, 'SQL');
INSERT INTO `chapter` VALUES(NULL, 38, 8, 'FD1');
INSERT INTO `chapter` VALUES(NULL, 38, 9, 'DBS');

INSERT INTO `chapter` VALUES(NULL, 36, 1, 'Introduction');
INSERT INTO `chapter` VALUES(NULL, 36, 2, 'Lexical Analysis');
INSERT INTO `chapter` VALUES(NULL, 36, 3, 'Syntax Analysis');
INSERT INTO `chapter` VALUES(NULL, 36, 4, 'OOP and Scala');
INSERT INTO `chapter` VALUES(NULL, 36, 5, 'Functional Programming');
INSERT INTO `chapter` VALUES(NULL, 36, 6, 'Abstract Syntax Tree');
INSERT INTO `chapter` VALUES(NULL, 36, 7, 'Name');
INSERT INTO `chapter` VALUES(NULL, 36, 8, 'Type');
INSERT INTO `chapter` VALUES(NULL, 36, 9, 'Sequence Control');
INSERT INTO `chapter` VALUES(NULL, 36, 10, 'Control Abstraction');
INSERT INTO `chapter` VALUES(NULL, 36, 11, 'JVM');
INSERT INTO `chapter` VALUES(NULL, 36, 12, 'JVM Code Generation');

-- material type
INSERT INTO `material_type` VALUES(NULL, 'Video');
INSERT INTO `material_type` VALUES(NULL, 'Slide');
INSERT INTO `material_type` VALUES(NULL, 'Tutorial');
INSERT INTO `material_type` VALUES(NULL, 'Lab');
INSERT INTO `material_type` VALUES(NULL, 'Exercise');
INSERT INTO `material_type` VALUES(NULL, 'Assignment');
INSERT INTO `material_type` VALUES(NULL, 'Quiz');
INSERT INTO `material_type` VALUES(NULL, 'Survey');
INSERT INTO `material_type` VALUES(NULL, 'Outline');

-- materal
INSERT INTO `material` VALUES(NULL, 10, 1, 8, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 10, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 10, 3, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

INSERT INTO `material` VALUES(NULL, 11, 1, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 11, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 11, 3, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 11, 4, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 11, 5, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

INSERT INTO `material` VALUES(NULL, 12, 1, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 12, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 12, 3, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 12, 4, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 12, 5, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 12, 6, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

INSERT INTO `material` VALUES(NULL, 13, 1, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 13, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 13, 3, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 13, 4, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 13, 5, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 13, 6, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 13, 7, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 13, 8, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 13, 9, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

INSERT INTO `material` VALUES(NULL, 15, 1, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 15, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 15, 3, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 15, 4, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 15, 5, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 15, 6, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

INSERT INTO `material` VALUES(NULL, 16, 1, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 16, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 16, 3, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 16, 4, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 16, 5, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

INSERT INTO `material` VALUES(NULL, 17, 1, 1, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 17, 2, 2, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 0, 0);
INSERT INTO `material` VALUES(NULL, 17, 3, 3, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 17, 4, 5, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);
INSERT INTO `material` VALUES(NULL, 17, 5, 7, 'http://e-learning.hcmut.edu.vn/mod/feedback/view.php?id=347990', 1, 10);

-- status
INSERT INTO `status` VALUES(NULL, 'achieving');
INSERT INTO `status` VALUES(NULL, 'achieved');

-- student
INSERT INTO `student` VALUES(NULL, 'An', 'Nguyen Pham Duy', NULL, 'nguyenphamduyan430@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Anh', 'Nguyen Cong', NULL, 'nguyenconganh477@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Tai', 'Duong Van', NULL, 'duongvantai001@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Hoa', 'Pham', NULL, 'phamhoa440@gmail.com', '12345678', 'HCMC');

INSERT INTO `student` VALUES(NULL, 'An', 'Nguyen Thanh Khanh', NULL, 'nguyenthanhkhanhan433@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Anh', 'Bui Ba', NULL, 'buibaanh447@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Anh', 'La Quoc', NULL, 'laquocanh465@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Anh', 'Nguyen Trong', NULL, 'nguyentronganh500@gmail.com', '12345678', 'HCMC');

INSERT INTO `student` VALUES(NULL, 'Dat', 'Phan Thanh', NULL, 'phanthanhdat984@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Dang', 'Nguyen Tran Minh Dang', NULL, 'nguyentranminhdang014@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Dang', 'Tran Hai Dang', NULL, 'tranhaidang016@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'De', 'Chung Minh', NULL, 'chungminhde020@gmail.com', '12345678', 'HCMC');

INSERT INTO `student` VALUES(NULL, 'Phu', 'Huynh Quoc', NULL, 'huynhquocphu638@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Phu', 'Nguyen Duc', NULL, 'nguyenducphu234@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Phuc', 'Dang Hoang', NULL, 'danghoangphuc657@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Quang', 'Tran Thanh', NULL, 'tranthanhquang802@gmail.com', '12345678', 'HCMC');

INSERT INTO `student` VALUES(NULL, 'Truong', 'Dang Cao Xuan', NULL, 'dangcaoxuantruong737@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Truong', 'Trinh Duc', NULL, 'trinhductruong759@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Van', 'Dang Anh', NULL, 'danganhvan913@gmail.com', '12345678', 'HCMC');
INSERT INTO `student` VALUES(NULL, 'Vy', 'Lam Chi', NULL, 'lamchivi993@gmail.com', '12345678', 'HCMC');

-- course session

INSERT INTO `course_session` VALUES(NULL, 12, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 12, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 12, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 13, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 13, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 13, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 14, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 14, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 14, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 15, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 15, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 15, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 16, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 16, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 16, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 17, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 17, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 17, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 18, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 18, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 18, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 19, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 19, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 19, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 20, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 20, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 20, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 21, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 21, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 21, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 22, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 22, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 22, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 23, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 23, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 23, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 24, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 24, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 24, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 25, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 25, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 25, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 26, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 26, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 26, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 27, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 27, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 27, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 28, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 28, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 28, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 29, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 29, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 29, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 30, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 30, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 30, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 31, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 31, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 31, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 32, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 32, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 32, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 33, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 33, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 33, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 34, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 34, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 34, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 35, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 35, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 35, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 36, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 36, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 36, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 37, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 37, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 37, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 38, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 38, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 38, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

INSERT INTO `course_session` VALUES(NULL, 39, '2019-01-01 00:00:00', '2019-03-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 39, '2019-04-01 00:00:00', '2019-06-01 00:00:00', NULL);
INSERT INTO `course_session` VALUES(NULL, 39, '2019-08-01 00:00:00', '2019-10-01 00:00:00', NULL);

-- specialization session
INSERT INTO `specialization_session` VALUES(NULL, 1, '2018-01-01 00:00:00', '2018-09-01 00:00:00');
INSERT INTO `specialization_session` VALUES(NULL, 1, '2019-01-01 00:00:00', '2019-09-01 00:00:00');

INSERT INTO `specialization_session` VALUES(NULL, 2, '2018-01-01 00:00:00', '2018-09-01 00:00:00');
INSERT INTO `specialization_session` VALUES(NULL, 2, '2019-01-01 00:00:00', '2019-09-01 00:00:00');

INSERT INTO `specialization_session` VALUES(NULL, 3, '2018-01-01 00:00:00', '2018-09-01 00:00:00');
INSERT INTO `specialization_session` VALUES(NULL, 3, '2019-01-01 00:00:00', '2019-09-01 00:00:00');
--
INSERT INTO `course_session` VALUES(NULL, 1, '2018-01-01 00:00:00', '2018-03-01 00:00:00', 1);
INSERT INTO `course_session` VALUES(NULL, 1, '2019-01-01 00:00:00', '2019-03-01 00:00:00', 2);

INSERT INTO `course_session` VALUES(NULL, 2, '2018-03-01 00:00:00', '2018-05-01 00:00:00', 1);
INSERT INTO `course_session` VALUES(NULL, 2, '2019-03-01 00:00:00', '2019-05-01 00:00:00', 2);

INSERT INTO `course_session` VALUES(NULL, 3, '2018-05-01 00:00:00', '2018-07-01 00:00:00', 1);
INSERT INTO `course_session` VALUES(NULL, 3, '2019-05-01 00:00:00', '2019-07-01 00:00:00', 2);

INSERT INTO `course_session` VALUES(NULL, 4, '2018-07-01 00:00:00', '2018-09-01 00:00:00', 1);
INSERT INTO `course_session` VALUES(NULL, 4, '2019-07-01 00:00:00', '2019-09-01 00:00:00', 2);

-- enrolled course
INSERT INTO `enrolled_course` VALUES(NULL, 2, 75, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 2, 78, '2019-08-15 00:00:00', 2, NULL, 9.5, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 2, 81, '2019-08-15 00:00:00', 2, NULL, 9.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 2, 84, '2019-08-15 00:00:00', 2, NULL, 9.5, NULL, NULL);

INSERT INTO `enrolled_course` VALUES(NULL, 3, 75, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 3, 78, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 3, 81, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 3, 84, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);

INSERT INTO `enrolled_course` VALUES(NULL, 4, 75, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 4, 78, '2019-08-15 00:00:00', 2, NULL, 9.5, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 4, 81, '2019-08-15 00:00:00', 2, NULL, 9.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 4, 84, '2019-08-15 00:00:00', 2, NULL, 10.0, NULL, NULL);

INSERT INTO `enrolled_course` VALUES(NULL, 2, 85, '2018-01-14 00:00:00', 2, NULL, 10.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 2, 87, '2018-03-01 00:00:00', 2, NULL, 9.5, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 2, 89, '2018-05-07 00:00:00', 2, NULL, 9.0, NULL, NULL);
INSERT INTO `enrolled_course` VALUES(NULL, 2, 91, '2018-07-13 00:00:00', 2, NULL, 9.5, NULL, NULL);

-- enrolled specialization
INSERT INTO `enrolled_specialization` VALUES(NULL, 2, 1, '2018-02-15 00:00:00', 2, NULL, 5.0, NULL, NULL);
INSERT INTO `enrolled_specialization` VALUES(NULL, 2, 2, '2019-01-23 00:00:00', 2, NULL, 8.0, NULL, NULL);
INSERT INTO `enrolled_specialization` VALUES(NULL, 2, 3, '2018-02-15 00:00:00', 2, NULL, 6.5, NULL, NULL);
INSERT INTO `enrolled_specialization` VALUES(NULL, 2, 4, '2019-01-23 00:00:00', 2, NULL, 9.5, NULL, NULL);
INSERT INTO `enrolled_specialization` VALUES(NULL, 2, 5, '2018-02-15 00:00:00', 2, NULL, 9.0, NULL, NULL);
INSERT INTO `enrolled_specialization` VALUES(NULL, 2, 6, '2019-01-23 00:00:00', 2, NULL, 10.0, NULL, NULL);

-- comment
INSERT INTO `comment` VALUES(NULL, 38, 2, 'hello world', '2019-09-23 14:02:30');
INSERT INTO `comment` VALUES(NULL, 38, 3, 'học xong chưa ông?', '2019-09-23 14:04:30');
INSERT INTO `comment` VALUES(NULL, 38, 2, 'chưa nữa', '2019-09-23 14:10:30');
INSERT INTO `comment` VALUES(NULL, 38, 2, 'tui thấy chương 6 hơi khó hiểu', '2019-09-23 14:11:30');
INSERT INTO `comment` VALUES(NULL, 38, 3, 'ừ, chương 6 khá là khó đấy', '2019-09-23 14:12:30');
INSERT INTO `comment` VALUES(NULL, 38, 4, 'đồng ý kiến với Tài', '2019-09-23 14:22:30');
INSERT INTO `comment` VALUES(NULL, 38, 2, 'chán', '2019-09-23 14:23:30');
INSERT INTO `comment` VALUES(NULL, 38, 2, 'muốn bỏ học', '2019-09-23 14:24:30');
INSERT INTO `comment` VALUES(NULL, 38, 3, 'tui thấy cô Chi dạy hay mà', '2019-09-23 14:25:30');
INSERT INTO `comment` VALUES(NULL, 38, 3, 'cô dễ tính nữa, cho điểm cao', '2019-09-23 14:25:40');
INSERT INTO `comment` VALUES(NULL, 38, 4, 'đồng ý kiến', '2019-09-23 14:30:30');
INSERT INTO `comment` VALUES(NULL, 38, 2, 'chì ý kiến', '2019-09-23 14:31:30');
INSERT INTO `comment` VALUES(NULL, 38, 2, 'bài tập lớn 1 hơi toang, không biết điểm thế nào', '2019-09-23 15:01:30');

INSERT INTO `comment` VALUES(NULL, 36, 2, 'môn này dễ nè, 10.0 ez', '2019-09-23 14:22:30');
INSERT INTO `comment` VALUES(NULL, 36, 4, 'gáy sớm làm gì', '2019-09-23 14:23:30');
INSERT INTO `comment` VALUES(NULL, 36, 2, 'xời', '2019-09-23 14:24:30');
INSERT INTO `comment` VALUES(NULL, 36, 3, 'mấy ông đóng góp ý kiến cho khóa học đi kìa', '2019-09-23 14:25:30');
INSERT INTO `comment` VALUES(NULL, 36, 2, 'thầy khó tính chết đi được', '2019-09-23 14:25:40');
INSERT INTO `comment` VALUES(NULL, 36, 2, 'bắt làm quiz mỗi ngày, học cũng áp lực', '2019-09-23 14:30:30');
INSERT INTO `comment` VALUES(NULL, 36, 4, 'ừm', '2019-09-23 14:31:30');
INSERT INTO `comment` VALUES(NULL, 36, 2, 'đánh giá thầy 1 sao đi mấy ông', '2019-09-23 15:01:30');
