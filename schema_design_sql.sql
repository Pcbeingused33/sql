-- join table == table where connection between 2 tables or else is made

-- <?xml version="1.0" encoding="utf-8" ?>
-- <!-- SQL XML created by WWW SQL Designer, https://github.com/ondras/wwwsqldesigner/ -->
-- <!-- Active URL: https://kitt.lewagon.com/db/98635 -->
-- <sql>
-- <datatypes db="postgresql">
--   <group label="Numeric" color="rgb(238,238,170)">
--     <type label="Integer" length="0" sql="INTEGER" re="INT" quote=""/>
--     <type label="Small Integer" length="0" sql="SMALLINT" quote=""/>
--     <type label="Big Integer" length="0" sql="BIGINT" quote=""/>
--     <type label="Decimal" length="1" sql="DECIMAL" re="numeric" quote=""/>
--     <type label="Serial" length="0" sql="SERIAL" re="SERIAL4" fk="Integer" quote=""/>
--     <type label="Big Serial" length="0" sql="BIGSERIAL" re="SERIAL8" fk="Big Integer" quote=""/>
--     <type label="Real" length="0" sql="BIGINT" quote=""/>
--     <type label="Single precision" length="0" sql="FLOAT" quote=""/>
--     <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
--   </group>

--   <group label="Character" color="rgb(255,200,200)">
--     <type label="Char" length="1" sql="CHAR" quote="'"/>
--     <type label="Varchar" length="1" sql="VARCHAR" re="CHARACTER VARYING" quote="'"/>
--     <type label="Text" length="0" sql="TEXT" quote="'"/>
--     <type label="Binary" length="1" sql="BYTEA" quote="'"/>
--     <type label="Boolean" length="0" sql="BOOLEAN" quote="'"/>
--   </group>

--   <group label="Date &amp; Time" color="rgb(200,255,200)">
--     <type label="Date" length="0" sql="DATE" quote="'"/>
--     <type label="Time" length="1" sql="TIME" quote="'"/>
--     <type label="Time w/ TZ" length="0" sql="TIME WITH TIME ZONE" quote="'"/>
--     <type label="Interval" length="1" sql="INTERVAL" quote="'"/>
--     <type label="Timestamp" length="1" sql="TIMESTAMP" quote="'"/>
--     <type label="Timestamp w/ TZ" length="0" sql="TIMESTAMP WITH TIME ZONE" quote="'"/>
--     <type label="Timestamp wo/ TZ" length="0" sql="TIMESTAMP WITHOUT TIME ZONE" quote="'"/>
--   </group>

--   <group label="Miscellaneous" color="rgb(200,200,255)">
--     <type label="XML" length="1" sql="XML" quote="'"/>
--     <type label="Bit" length="1" sql="BIT" quote="'"/>
--     <type label="Bit Varying" length="1" sql="VARBIT" re="BIT VARYING" quote="'"/>
--     <type label="Inet Host Addr" length="0" sql="INET" quote="'"/>
--     <type label="Inet CIDR Addr" length="0" sql="CIDR" quote="'"/>
--     <type label="Geometry" length="0" sql="GEOMETRY" quote="'"/>
--   </group>
-- </datatypes><table x="93" y="22" name="cities">
-- <row name="id" null="1" autoincrement="1">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="area" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <key type="PRIMARY" name="">
-- <part>id</part>
-- </key>
-- </table>
-- <table x="257" y="28" name="inhabitants">
-- <row name="id" null="1" autoincrement="1">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="first_name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="last_name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="age" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="city_id" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default><relation table="cities" row="id" />
-- </row>
-- <key type="PRIMARY" name="">
-- <part>id</part>
-- </key>
-- </table>
-- <table x="70" y="381" name="patients">
-- <row name="id" null="1" autoincrement="1">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="first_name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="last_name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="age" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <key type="PRIMARY" name="">
-- <part>id</part>
-- </key>
-- </table>
-- <table x="389" y="374" name="doctors">
-- <row name="id" null="1" autoincrement="1">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="first_name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="last_name" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="specialty" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <key type="PRIMARY" name="">
-- <part>id</part>
-- </key>
-- </table>
-- <table x="219" y="255" name="consultations">
-- <row name="id" null="1" autoincrement="1">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="date" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default></row>
-- <row name="doctor_id" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default><relation table="doctors" row="id" />
-- </row>
-- <row name="patient_id" null="1" autoincrement="0">
-- <datatype>INTEGER</datatype>
-- <default>NULL</default><relation table="patients" row="id" />
-- </row>
-- <key type="PRIMARY" name="">
-- <part>id</part>
-- </key>
-- </table>
-- </sql>


-- Give all patients names
SELECT first_name, last_name FROM patients

-- Give me all doctor names
SELECT first_name, last_name FROM doctors

-- Give me all you got about patients
SELECT * FROM patients

-- Give me all patients  of age 21
SELECT * FROM patients WHERE age = 21

-- Seen so far
SELECT column_1, column_2, (*)
FROM table_name
WHERE column = value

-- Give me all doctors of cardiac surgery specialty
SELECT * FROM doctors WHERE specialty = 'Cardiac Surgery'

-- Give me all surgery doctors
SELECT * FROM doctors WHERE specialty LIKE '%Surgery'

-- Give me all cardiac surgery doctors named Steve
SELECT * FROM doctors WHERE specialty = 'Cardiac Surgery'
AND first_name = 'Steve'

-- Give me all patients ordered by age
SELECT * FROM patients ORDER BY age ASC
SELECT * FROM patients ORDER BY age DESC

-- How many doctors do I have?
SELECT COUNT(*) FROM doctors

-- How many doctors with name Steve do I have?
SELECT COUNT(*) FROM doctors WHERE first_name = 'Steve'

-- Count cardiac surgery doctors
SELECT COUNT(*) FROM doctors WHERE specialty = 'Cardiac Surgery'

-- Count all doctors per specialty
SELECT COUNT(*), specialty
FROM doctors
GROUP BY specialty

-- Count all doctors per specialty, order by specialty
SELECT COUNT(*) AS c, specialty
FROM doctors
GROUP BY specialty
ORDER BY c DESC

-- Give me all inhabitants from Paris
SELECT * FROM inhabitants WHERE city_id = 2

--

SELECT * FROM inhabitants i 
JOIN cities c ON c.id = i.city_id
WHERE c.name = 'Paris'

-- Give me all the adults living in Paris
SELECT * FROM inhabitants
JOIN cities ON cities.id = inhabitants.city_id
WHERE inhabitants.age >= 18
AND cities.name = 'Paris'

-- For each consultation, give me its date, patient and doctor names
SELECT c.date, p.first_name, p.last_name, d.first_name, d.last_name
FROM consultations c
JOIN patients p ON p.id = c.patient_id
JOIN doctors d ON d.id = c.doctor_id
WHERE c.date >= '2022-12-01'
AND c.date < '2023-01-01'
ORDER BY c.date ASC