DROP TABLE IF EXISTS mental_health_survey;

CREATE TABLE mental_health_survey (
    "Timestamp" TIMESTAMP,
    "Choose your gender" TEXT,
    "Age" INTEGER,
    "What is your course?" TEXT,
    "Your current year of Study" TEXT,
    "What is your CGPA?" TEXT, -- ← Міне, осылай
    "Marital status" TEXT,
    "Do you have Depression?" TEXT,
    "Do you have Anxiety?" TEXT,
    "Do you have Panic attack?" TEXT,
    "Did you seek any specialist for a treatment?" TEXT
);
SELECT * FROM mental_health_survey LIMIT 10;

-- Подсчёт количества студентов по возрасту, с сортировкой по возрасту
SELECT "Age", COUNT(*) 
FROM mental_health_survey
GROUP BY "Age"
ORDER BY "Age"; 

-- Подсчёт количества студентов с тревожностью (Anxiety)
SELECT "Do you have Anxiety?", COUNT(*) 
FROM Mental_Health_Survey
GROUP BY "Do you have Anxiety?";

 -- Подсчёт количества студентов по полу
SELECT "Choose your gender", COUNT(*) AS count
FROM Mental_Health_Survey
GROUP BY "Choose your gender"; 

-- Подсчёт количества студентов по наличию панических атак и депрессии
SELECT 
  "Do you have Panic attack?", 
  "Do you have Depression?", 
  COUNT(*) 
FROM Mental_Health_Survey
GROUP BY 1, 2;




