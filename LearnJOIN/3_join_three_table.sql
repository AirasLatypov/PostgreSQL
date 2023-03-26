SELECT
  classman.name,
  classman.age,
  university.faculty,
  -- classman.city_id,
  from_city.city

FROM classman

INNER JOIN university
  ON classman.university_id = university.university_id

INNER JOIN from_city
  ON classman.city_id = from_city.city_id

LIMIT 20;