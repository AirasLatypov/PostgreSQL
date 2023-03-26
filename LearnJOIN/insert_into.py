from faker import Faker
import random

fake = Faker()



# method = dir(fake)
# search = "name"
# for element in method:
#     if search in element:
#         print(element)





# INSERT INTO university(faculty) VALUES('{university}');
count = 1
while count <= 5:
    university = fake.country()
    print(f"INSERT INTO university(faculty) VALUES('{university}');")
    count += 1


# INSERT INTO from_city(city) VALUES('{city}');
count = 1
while count <= 7:
    city = fake.city()
    print(f"INSERT INTO from_city(city) VALUES('{city}');")
    count += 1

# INSERT INTO university(name, age, university_id, city_id) VALUES('{name}', {age}, {university_id}, {city_id});
count = 1
while count <= 100:
    name = fake.name()
    age = random.randint(18, 25)
    university_id = random.randint(1, 5)
    city_id = random.randint(1, 7)
    print(f"INSERT INTO classman(name, age, university_id, city_id) VALUES('{name}', {age}, {university_id}, {city_id});")
    count += 1


