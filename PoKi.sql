-- 1.
--SELECT grade.id, grade.[Name] AS 'Grades'
--FROM Grade grade

-- 2.
--SELECT emotion.Id, emotion.[Name] AS 'Emotions'
--FROM Emotion emotion

-- 3.
--SELECT COUNT(poem.id) AS 'Number of Poems'
--FROM Poem poem

-- 4,5,6
--SELECT TOP 76 author.[Name], grade.[Name], gender.[Name]
--FROM Author author
--JOIN Grade grade ON grade.Id = author.GradeId
--JOIN Gender gender ON gender.Id = author.GenderId
--ORDER BY author.[Name]

-- 7.
--SELECT SUM(poem.WordCount) AS 'Total Words - All Poems'
--FROM Poem poem

-- 8.
--using subquery
--SELECT poem.Title, poem.CharCount
--FROM Poem poem
--WHERE poem.CharCount = (SELECT MIN (poem.CharCount) FROM Poem)

--using order by
--SELECT TOP 1 poem.Title
--From Poem poem
--ORDER BY poem.CharCount

-- 9.
--SELECT COUNT(author.Id) AS '3rd Grade Authors'
--From Author
--JOIN Grade grade ON author.GradeId = grade.Id
--WHERE grade.[Name] = '3rd Grade'

-- 10.
--SELECT COUNT(author.Id) AS '1st, 2nd, and 3rd Grade Authors'
--From Author
--JOIN Grade grade ON author.GradeId = grade.Id
--WHERE grade.[Name] = '3rd Grade' OR grade.[Name] = '1st Grade' OR grade.[Name] = '2nd Grade'

-- 11.
--SELECT COUNT(poem.Id) AS '# of 4th Grade Poems'
--FROM Poem poem
--JOIN Author author ON poem.AuthorId = author.Id
--JOIN Grade grade ON grade.Id = author.GradeId
--WHERE grade.[Name] = '4th Grade'

-- 12.
--SELECT grade.[Name], COUNT(poem.id) AS '# of Poems'
--FROM Poem poem
--JOIN Author author ON poem.AuthorId = author.Id
--JOIN Grade grade ON grade.Id = author.GradeId
--GROUP BY (grade.[Name])

-- 13.
--SELECT grade.[Name], COUNT(author.id) AS '# of Authors'
--FROM Author author
--JOIN Grade grade ON grade.Id = author.GradeId
--GROUP BY(grade.[Name])
--ORDER BY grade.[Name]

-- 14.
--SELECT poem.Title AS 'Most Words Poem', poem.WordCount AS '# of Words'
--FROM Poem poem
--WHERE poem.WordCount = (SELECT MAX (poem.WordCount) FROM Poem poem)

-- 15.
--SELECT author.Id, author.[Name], COUNT(poem.Id) AS '# of Poems'
--FROM Poem poem
--JOIN Author author ON author.Id = poem.AuthorId
--GROUP BY author.[Name], author.Id
--ORDER BY COUNT(poem.Id) DESC

-- 16.
--SELECT COUNT(poem.Id) AS '# of Sad Poems'
--FROM Poem poem
--JOIN PoemEmotion pe ON pe.PoemId = poem.Id
--JOIN Emotion em ON em.Id = pe.EmotionId
--WHERE em.Name = 'Sadness'

-- 17.
--SELECT COUNT(poem.Id) AS '# of Emotionless Poems'
--FROM Poem poem
--LEFT JOIN PoemEmotion pe ON pe.PoemId = poem.Id
--LEFT JOIN Emotion em ON em.Id = pe.EmotionId
--WHERE em.Name IS NULL

-- 18.
--SELECT TOP 1 em.[Name] AS 'Emotion Least Written About', COUNT(poem.Id) AS '# of Poems'
--FROM Poem poem
--JOIN PoemEmotion pe ON pe.PoemId = poem.Id
--JOIN Emotion em ON em.Id = pe.EmotionId
--GROUP BY em.[Name]
--ORDER BY COUNT(poem.Id)

-- 19.
--SELECT TOP 1 grade.[Name],em.[Name], COUNT(poem.Id) AS 'Number of Joyfull Poems'
--FROM Grade grade
--JOIN Author author ON author.GradeId = grade.Id
--JOIN Poem poem ON poem.AuthorId = author.Id
--JOIN PoemEmotion pe ON pe.PoemId = poem.Id
--JOIN Emotion em ON em.Id = pe.EmotionId
--GROUP BY grade.[Name], em.[Name]
--HAVING em.[Name] = 'Joy'
--ORDER BY COUNT(poem.Id) DESC

-- 20.
--SELECT TOP 1 gender.[Name], em.[Name], COUNT(poem.Id) AS 'Number of Fearfull Poems'
--FROM Gender gender
--JOIN Author author ON author.GenderId = gender.Id
--JOIN Poem poem ON poem.AuthorId = author.Id
--JOIN PoemEmotion pe ON pe.PoemId = poem.Id
--JOIN Emotion em ON em.Id = pe.EmotionId
--GROUP BY gender.[Name], em.[Name]
--HAVING em.[Name] = 'Fear'
--ORDER BY COUNT(poem.Id)
