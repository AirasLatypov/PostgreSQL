from faker import Faker
import random

fake = Faker()

# methods = dir(fake)
#
# for element in methods:
#     if element[0:4] == "city":
#         print(element)


count = 1
while count <= 10:
    company_name = fake.company()
    city = fake.city()
    print(f"INSERT INTO Company (Name, City) VALUES ('{company_name}', '{city}');")
    count += 1


while count <= 100:
    firstname = fake.first_name()
    lastname = fake.last_name()
    age = random.randint(19, 54)
    salare = random.randint(50000, 120000)
    company_id = random.randint(1, 10)
    print(f"INSERT INTO employee (Firstname, Lastname, Age, Salare, Company_id) VALUES ('{firstname}', '{lastname}', {age}, {salare}, {company_id});")
    count += 1

