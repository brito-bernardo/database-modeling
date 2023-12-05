-- RELATIONAL MODEL BELOW

--DISTRICTS(CODE, NAME, REGION)
--MUNICIPALITIES(CODE, NAME, DISTRICT -> DISTRICTS)
--PARTICIPATIONS(DISTRICT -> DISTRICTS, REGISTERED_VOTERS, VOTERS, ABSTENTIONS, BLANK_VOTES, NULL_VOTES)
--PARTIES(ACRONYM, DESIGNATION)
--LISTS(DISTRICT -> DISTRICTS, PARTY -> PARTIES, SEATS)
--PARISHES(CODE, NAME, MUNICIPALITY -> MUNICIPALITIES)
--VOTINGS(PARISH -> PARISHES, PARTY -> PARTIES, VOTES)

-- ATENTION 
--( registered_voters = voters + abstentions)
--( voters = sum of votes in the district + blank_votes + null_votes)


-- What is the code of the parish named "Mancelos"?

SELECT code FROM parishes WHERE name = 'Mancelos';

-- What were the results obtained by each party in the parish of Mancelos? List the acronym of each party and the number of votes it obtained, ordering descendently on the number of votes.

SELECT party, votes from votings WHERE parish IN(SELECT code from parishes WHERE name = "Mancelos") ORDER BY 2 DESC, 1 DESC;

-- What are the parishes of the municipality of Espinho? List the code and name of each parish, order ascendantly by the code.

SELECT code,name FROM parishes WHERE municipality IN ( SELECT code FROM municipalities WHERE name = "Espinho") ORDER BY 1;

-- What is the code and the name of the district of the parish of Mancelos?

SELECT code,name FROM districts WHERE code IN (SELECT district FROM municipalities WHERE code IN (SELECT municipality FROM parishes WHERE name = "Mancelos"));

-- How many seats obtained each party on the district of the parish of Mancelos, in decreasing order of the number of seats? List the acronym and the number of seats.

SELECT party, seats FROM lists WHERE district IN (SELECT district FROM municipalities WHERE code IN (SELECT municipality FROM parishes WHERE name = "Mancelos")) ORDER BY 2 DESC, 2 DESC;

-- List the district name, the number of voters and the number of abstentions, but only in the case where the number of abstentions in the district is higher than 75% of the number of voters. Order by district name

SELECT name, voters, abstentions FROM districts, participations WHERE participations.district = districts.code AND abstentions > 0.75 * voters;

-- What are the parishes of region 'M' where the party 'PSN' obtained zero votes? List the code and name of the parish, in ascending order on the code.

-- BLANK

-- What were the parties that did not compete in the district of Lisboa? List the acronym and the designation, in increasing order of the acronym.

SELECT acronym, designation FROM parties WHERE acronym NOT IN (SELECT party FROM lists WHERE district IN (SELECT code FROM districts WHERE name = "Lisboa")) ORDER BY 1;

-- How many parishes have 'Vilar' on the name?

SELECT COUNT(*) FROM parishes WHERE name LIKE "%Vilar%";

--How many votes had each party in each muncipality? List the code and the name of the municipality, the acronym of the party and the number of votes (name this column as 'VOTES'), by incresing order on the code of the municipality and the acronym of the party. Show only the first 40 lines.

SELECT municipalities.code, municipalities.name, party SUM(votes) AS VOTES FROM municipalities, votings, parishes WHERE parishes.municipality = muniipality.code AND votings.parish = parishes.code GROUP BY 1, 2, 3 ORDER BY 1 LIMIT 40;


-- How many votes had each party per district? List the code of the district, the name of the district, the acronym of the party and the number of votes, named as 'VOTES'. Order ascendantly on the code of the district and the acronym of the party.

SELECT districts.code, districts.name, party, SUM(votes) AS VOTES FROM districts, votings, parishes WHERE districts.code = parishes.district AND votings.parish = parishes.code GROUP BY 1, 2, 3 ORDER BY 1, 3;

--This is wrong, but I don't know how to do it
--Make the corrections, please!
SELECT municipalities.code, municipalities.name, party, votes FROM votings, parties, municipalities WHERE votings.party = parties.acronym AND votings.parish IN (SELECT code FROM parishes WHERE municipality = municipalities.code) ORDER BY 1, 3 LIMIT 40;




-- How many votes had each party globally? As we want the global result, the administrative division is irrelevant. List the acronym of the party and the total number of votes, name 'VOTES'. Order ascendantly by the acronym. Sum votes for each party.

SELECT party, SUM(votes) AS VOTES FROM votings GROUP BY party ORDER BY 1; -- CORRECT

-- What ARE the name of the municipalities of the district with the higher number of voters? Order ascendantly by the name of the municipality. Hint: use group in SQL. Try another solution without using group.




-- What was the party that had the highest number of votes in a single parish? List the acronym of the party, the name of the parish and the number of votes it obtained in that parish. Remember it's the HIGHEST, so it's only one party. SO PARTY, NAME AND VOTES.

SELECT party, name, votes FROM votings, parishes WHERE votings.parish = parishes.code AND votes = (SELECT MAX(votes) FROM votings); -- CORRECT



-- Which parties had zero votes on all parishes of a municipality? List the acronym and the name of the municipality. Order ascendantly by the acronym and the name of the municipality. Show only "PARTY" and "name" of the municipality.




