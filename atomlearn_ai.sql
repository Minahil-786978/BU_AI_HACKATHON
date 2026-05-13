-- =========================================================
-- ATOMLEARN AI DATABASE
-- SMART ADAPTIVE LMS DATABASE
-- =========================================================

CREATE DATABASE atomlearn_ai;
USE atomlearn_ai;

-- =========================================================
-- STUDENTS TABLE
-- =========================================================

CREATE TABLE students (

    id INT AUTO_INCREMENT PRIMARY KEY,

    student_id VARCHAR(10),

    student_name VARCHAR(100),

    email VARCHAR(100),

    password VARCHAR(100),

    learning_style VARCHAR(50),

    career_goal VARCHAR(100),

    focus_score FLOAT,

    learning_streak INT,

    completion_rate FLOAT,

    burnout_risk VARCHAR(20),

    ai_recommendation TEXT,

    overall_gpa FLOAT,

    overall_performance VARCHAR(30)

);

-- =========================================================
-- COURSES TABLE
-- =========================================================

CREATE TABLE courses (

    course_id INT AUTO_INCREMENT PRIMARY KEY,

    course_name VARCHAR(150),

    category VARCHAR(100),

    difficulty_level VARCHAR(30),

    instructor_name VARCHAR(100),

    duration_weeks INT

);

-- =========================================================
-- STUDENT PERFORMANCE TABLE
-- =========================================================

CREATE TABLE student_performance (

    performance_id INT AUTO_INCREMENT PRIMARY KEY,

    student_id VARCHAR(10),

    course_name VARCHAR(150),

    quiz_score FLOAT,

    assignment_score FLOAT,

    project_score FLOAT,

    attendance FLOAT,

    ai_engagement FLOAT,

    completion_percentage FLOAT,

    gpa FLOAT,

    performance_level VARCHAR(30),

    weak_topics TEXT,

    recommended_action TEXT

);

-- =========================================================
-- AI LEARNING DNA TABLE
-- =========================================================

CREATE TABLE ai_learning_dna (

    dna_id INT AUTO_INCREMENT PRIMARY KEY,

    student_id VARCHAR(10),

    strongest_skill VARCHAR(100),

    weakest_skill VARCHAR(100),

    preferred_learning_time VARCHAR(50),

    attention_span_minutes INT,

    recommended_path TEXT,

    predicted_success_rate FLOAT

);

-- =========================================================
-- INSERT COURSES
-- =========================================================

INSERT INTO courses
(course_name, category, difficulty_level, instructor_name, duration_weeks)

VALUES

('Python for Data Science','Programming','Beginner','Atomcamp Mentor',8),

('Machine Learning Bootcamp','Artificial Intelligence','Intermediate','Atomcamp AI Team',12),

('Deep Learning with TensorFlow','Artificial Intelligence','Advanced','Atomcamp DL Expert',10),

('SQL for Data Analytics','Database','Beginner','Atomcamp SQL Mentor',6),

('Power BI Analytics','Data Visualization','Intermediate','Atomcamp BI Team',5),

('Natural Language Processing','Artificial Intelligence','Advanced','Atomcamp NLP Expert',8),

('Computer Vision Fundamentals','Artificial Intelligence','Advanced','Atomcamp CV Mentor',8),

('Prompt Engineering Masterclass','Generative AI','Intermediate','Atomcamp GPT Mentor',4),

('Freelancing for AI Professionals','Career Development','Beginner','Atomcamp Career Coach',3),

('AI Interview Preparation','Career Development','Intermediate','Atomcamp HR Team',4);

-- =========================================================
-- INSERT STUDENTS
-- =========================================================

INSERT INTO students
(student_id, student_name, email, password,
learning_style, career_goal,
focus_score, learning_streak,
completion_rate, burnout_risk,
ai_recommendation,
overall_gpa, overall_performance)

VALUES

-- =========================================================
-- STUDENT 1
-- =========================================================

(
'S001',
'Ali Khan',
'ali@atomlearn.com',
'12345',

'Visual + Hands-On',
'Machine Learning Engineer',

92,
15,

88,
'Low',

'Recommended advanced ML projects and Kaggle competitions.',

3.9,
'Excellent'
),

-- =========================================================
-- STUDENT 2
-- =========================================================

(
'S002',
'Ahmed Raza',
'ahmed@atomlearn.com',
'12345',

'Practical Learning',
'Data Analyst',

80,
9,

72,
'Medium',

'Needs improvement in deep learning concepts and SQL optimization.',

3.2,
'Good'
),

-- =========================================================
-- STUDENT 3
-- =========================================================

(
'S003',
'Usman Tariq',
'usman@atomlearn.com',
'12345',

'Slow Paced Learning',
'AI Engineer',

65,
4,

54,
'High',

'AI detected weak engagement and recommends beginner revision modules.',

2.4,
'Average'
),

-- =========================================================
-- STUDENT 4
-- =========================================================

(
'S004',
'Bilal Ahmed',
'bilal@atomlearn.com',
'12345',

'Fast Adaptive Learning',
'Research Scientist',

98,
30,

96,
'Low',

'Eligible for advanced AI research mentorship and leadership track.',

4.0,
'Excellent'
),

-- =========================================================
-- STUDENT 5
-- =========================================================

(
'S005',
'Fatima Noor',
'fatima@atomlearn.com',
'12345',

'Collaborative Learning',
'Prompt Engineer',

90,
18,

86,
'Low',

'Strong in NLP and Prompt Engineering. Recommended GenAI specialization.',

3.8,
'Excellent'
);

-- =========================================================
-- INSERT PERFORMANCE DATA
-- =========================================================

INSERT INTO student_performance
(student_id, course_name,
quiz_score, assignment_score,
project_score, attendance,
ai_engagement,
completion_percentage,
gpa, performance_level,
weak_topics,
recommended_action)

VALUES

-- =========================================================
-- ALI KHAN
-- =========================================================

('S001','Python for Data Science',92,94,96,95,90,100,4.0,'Excellent',
'None',
'Move to advanced AI projects'),

('S001','Machine Learning Bootcamp',90,91,95,94,92,95,4.0,'Excellent',
'Minor confusion in SVM',
'Provide advanced ML case studies'),

('S001','Deep Learning with TensorFlow',82,85,88,90,86,82,3.7,'Good',
'CNN optimization',
'Recommend GPU practical labs'),

('S001','SQL for Data Analytics',94,92,96,97,91,100,4.0,'Excellent',
'None',
'Eligible for mentor assistant role'),

-- =========================================================
-- AHMED RAZA
-- =========================================================

('S002','Python for Data Science',78,75,72,84,80,70,3.0,'Good',
'Functions and loops',
'Recommend coding practice'),

('S002','Machine Learning Bootcamp',68,70,65,80,72,60,2.7,'Average',
'Regression models',
'Assign beginner ML roadmap'),

('S002','Power BI Analytics',88,85,90,92,87,95,3.8,'Excellent',
'None',
'Recommend dashboard competitions'),

-- =========================================================
-- USMAN TARIQ
-- =========================================================

('S003','Python for Data Science',55,52,50,70,58,45,2.0,'Poor',
'Python basics',
'Activate AI tutor support'),

('S003','Machine Learning Bootcamp',48,45,40,66,50,35,0.0,'Fail',
'Complete ML concepts',
'Notify instructor for intervention'),

('S003','SQL for Data Analytics',62,60,58,74,64,55,2.3,'Average',
'Joins and subqueries',
'Recommend SQL revision'),

-- =========================================================
-- BILAL AHMED
-- =========================================================

('S004','Deep Learning with TensorFlow',99,98,100,100,99,100,4.0,'Excellent',
'None',
'Eligible for AI research scholarship'),

('S004','Computer Vision Fundamentals',98,97,99,100,98,100,4.0,'Excellent',
'None',
'Recommend hackathon leadership'),

('S004','Prompt Engineering Masterclass',96,95,98,98,97,100,4.0,'Excellent',
'None',
'Eligible for GenAI ambassador'),

-- =========================================================
-- FATIMA NOOR
-- =========================================================

('S005','Natural Language Processing',94,95,96,97,95,100,4.0,'Excellent',
'None',
'Recommend NLP specialization'),

('S005','Prompt Engineering Masterclass',98,97,99,98,99,100,4.0,'Excellent',
'None',
'Recommend advanced GenAI track'),

('S005','Freelancing for AI Professionals',88,90,92,94,89,95,3.8,'Excellent',
'Client communication',
'Recommend Upwork optimization workshops');

-- =========================================================
-- INSERT AI LEARNING DNA
-- =========================================================

INSERT INTO ai_learning_dna
(student_id,
strongest_skill,
weakest_skill,
preferred_learning_time,
attention_span_minutes,
recommended_path,
predicted_success_rate)

VALUES

(
'S001',
'Machine Learning',
'Deep Learning Theory',
'8PM - 11PM',
40,
'Advanced AI Engineer Path',
95
),

(
'S002',
'Dashboard Analytics',
'Neural Networks',
'6PM - 9PM',
30,
'Data Analyst Roadmap',
80
),

(
'S003',
'Basic SQL',
'Machine Learning',
'10PM - 12AM',
18,
'Beginner AI Recovery Track',
55
),

(
'S004',
'Deep Learning',
'None',
'5AM - 8AM',
60,
'AI Research Scientist Track',
99
),

(
'S005',
'NLP + Prompt Engineering',
'Public Speaking',
'7PM - 10PM',
45,
'Generative AI Specialist',
96
);

-- =========================================================
-- MAIN DASHBOARD QUERY
-- =========================================================

SELECT
student_name,
career_goal,
focus_score,
learning_streak,
completion_rate,
burnout_risk,
overall_gpa,
overall_performance

FROM students;

-- =========================================================
-- STUDENT LOGIN QUERY
-- =========================================================

SELECT *
FROM students
WHERE email = 'ali@atomlearn.com'
AND password = '12345';

-- =========================================================
-- AI LEARNING DNA QUERY
-- =========================================================

SELECT *
FROM ai_learning_dna
WHERE student_id = 'S001';

-- =========================================================
-- STUDENT PERFORMANCE QUERY
-- =========================================================

SELECT *
FROM student_performance
WHERE student_id = 'S001';

-- =========================================================
-- TOP STUDENTS
-- =========================================================

SELECT
student_name,
overall_gpa,
completion_rate

FROM students
ORDER BY overall_gpa DESC;

-- =========================================================
-- HIGH BURNOUT RISK STUDENTS
-- =========================================================

SELECT
student_name,
burnout_risk,
completion_rate

FROM students
WHERE burnout_risk = 'High';

-- =========================================================
-- AI RECOMMENDATION QUERY
-- =========================================================

SELECT
student_name,
ai_recommendation

FROM students;