www.airbnb.com/flats/52
www.github.com/users/Mim1991
# Read All
SELECT * FROM flats

# Read One
SELECT * FROM flats
WHERE id = 52

SELECT * FROM users
WHERE username = 'Mim1991'

# Create
INSERT INTO doctors (id, name, age, specialty)
VALUES (10, "Jerry", 40, "GP")

# Update
UPDATE doctors SET age = 30, specialty = "Cardiologist"
WHERE id = 4

# Delete
DELETE FROM doctors
WHERE id = 3

UPDATE photos
SET deleted = true
WHERE id = 10

#SQL conditions with OR
DELETE FROM doctors
WHERE specialty = "Dentist"
OR specialty = "Cardiologist"