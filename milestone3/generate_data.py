import csv, random
from datetime import datetime, timedelta
from faker import Faker

fake = Faker()
random.seed(42)
Faker.seed(42)

OUTPUT = "/home/claude/csv"
import os; os.makedirs(OUTPUT, exist_ok=True)

# ── 1. food_categories ──────────────────────────────────────────────────────
categories = [
    (1, "Cooked",    "Fully prepared hot or cold meals"),
    (2, "Raw",       "Unprocessed fresh produce and meat"),
    (3, "Bakery",    "Breads, pastries, and baked goods"),
    (4, "Dairy",     "Milk, cheese, yogurt, and eggs"),
    (5, "Beverages", "Juices, water, and non-alcoholic drinks"),
    (6, "Canned",    "Tinned and preserved food items"),
    (7, "Frozen",    "Frozen meals and ingredients"),
    (8, "Snacks",    "Packaged chips, biscuits, and sweets"),
    (9, "Grains",    "Rice, flour, lentils, and pulses"),
    (10,"Condiments","Sauces, spices, and dressings"),
]
with open(f"{OUTPUT}/food_categories.csv", "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["category_id","category_name","description"])
    w.writerows(categories)
print("food_categories:", len(categories))

# ── 2. users ─────────────────────────────────────────────────────────────────
pk_cities = ["Karachi","Lahore","Islamabad","Rawalpindi","Peshawar","Quetta","Multan","Faisalabad"]
pk_areas  = ["Gulshan","DHA","Clifton","Johar Town","F-7","F-10","Saddar","Blue Area",
             "Hayatabad","Cantt","Model Town","Bahria Town","G-11","I-8"]

restaurant_names = [
    "Savour Restaurant","Spice Garden","Lahori Dhaba","Karachi Grill","Biryani House",
    "Desi Tadka","Frontier Foods","Meezan Kitchen","Al-Baik Karachi","Punjab da Dhaba",
    "Zaiqa Lounge","Masala Express","Naan & More","Pakwan Palace","Shandana Bakers",
    "Roshan Hotel","City Bites","Fast Bites Multan","Tandoor House","Faisal Kebab Corner",
    "Green Leaf Cafe","Silver Spoon","Shiraz Hotel","Nimco House","Bun Kebab Wala",
    "Murgh Mahal","Andaaz Restaurant","Star Foods","Golden Fork","Dilkusha Dhaba",
]
ngo_names = [
    "Edhi Foundation","Saylani Welfare","Akhuwat Foundation","JDC Foundation",
    "Rizvia Society","Umang NGO","Shaheen Foundation","Kiran Foundation",
    "Sungi Development","Rutba Welfare Trust","Layton Rahmatulla","Al-Khidmat Foundation",
    "Baitussalam Welfare","Ansar Burney Trust","Saiban NGO","Mera Ghar Foundation",
    "Hand in Hand","Insaaf Welfare","Amn Foundation","Naya Daur Trust",
]

users = []
uid = 1

# 3 admins
for _ in range(3):
    city = random.choice(pk_cities)
    users.append((uid, fake.name(), fake.unique.email(), "hashed_password_admin",
                  "admin", f"03{random.randint(100000000,999999999)}", 
                  fake.date_time_between("-2y","-6M"), city, random.choice(pk_areas)))
    uid += 1

# 30 restaurants
for name in restaurant_names:
    city = random.choice(pk_cities)
    users.append((uid, name, fake.unique.email(), "hashed_password_rest",
                  "restaurant", f"03{random.randint(100000000,999999999)}",
                  fake.date_time_between("-2y","-3M"), city, random.choice(pk_areas)))
    uid += 1

# 20 NGOs
for name in ngo_names:
    city = random.choice(pk_cities)
    users.append((uid, name, fake.unique.email(), "hashed_password_ngo",
                  "NGO", f"03{random.randint(100000000,999999999)}",
                  fake.date_time_between("-2y","-3M"), city, random.choice(pk_areas)))
    uid += 1

# extra users to reach 60
for i in range(7):
    role = random.choice(["restaurant","NGO"])
    city = random.choice(pk_cities)
    users.append((uid, fake.company() if role=="restaurant" else fake.company()+" Welfare",
                  fake.unique.email(), "hashed_password",
                  role, f"03{random.randint(100000000,999999999)}",
                  fake.date_time_between("-2y","-1M"), city, random.choice(pk_areas)))
    uid += 1

with open(f"{OUTPUT}/users.csv","w",newline="") as f:
    w = csv.writer(f)
    w.writerow(["user_id","name","email","password","role","phone","created_at","city","area"])
    w.writerows(users)
print("users:", len(users))

restaurant_ids = [u[0] for u in users if u[4]=="restaurant"]
ngo_ids        = [u[0] for u in users if u[4]=="NGO"]
user_id_map    = {u[0]: u for u in users}

# ── 3. food_listings ─────────────────────────────────────────────────────────
food_items = [
    ("Chicken Biryani","portions"),("Daal Chawal","kg"),("Samosas","pieces"),
    ("Naan Bread","pieces"),("Seekh Kebab","pieces"),("Mixed Salad","kg"),
    ("Milk","liters"),("Yogurt","kg"),("Eggs","pieces"),("White Rice","kg"),
    ("Vegetable Curry","kg"),("Chapati","pieces"),("Halwa Puri","portions"),
    ("Kheer","kg"),("Jalebi","kg"),("Fruit Chaat","kg"),("Pakora","kg"),
    ("Chicken Karahi","kg"),("Mutton Stew","kg"),("Potato Curry","kg"),
    ("Lentil Soup","liters"),("Bread Loaves","pieces"),("Pastries","pieces"),
    ("Orange Juice","liters"),("Mineral Water","bottles"),("Chips Packets","boxes"),
    ("Basmati Rice","kg"),("Flour","kg"),("Cooking Oil","liters"),("Tomato Sauce","kg"),
    ("Paneer","kg"),("Custard","liters"),("Cake Slices","pieces"),("Mango Lassi","liters"),
    ("Chickpea Curry","kg"),("Aloo Gosht","kg"),("Fish Curry","kg"),("Dal Makhani","kg"),
    ("Paratha","pieces"),("Shami Kebab","pieces"),
]

listings = []
lid = 1
base_date = datetime(2024, 8, 1)

for i in range(85):
    rest_id   = random.choice(restaurant_ids)
    rest_user = user_id_map[rest_id]
    food_name, unit = random.choice(food_items)
    qty      = random.randint(5, 150)
    cat_id   = random.randint(1, 10)
    created  = fake.date_time_between("-8M", "-1d")
    expiry   = (created + timedelta(days=random.randint(1, 5))).date()
    # distribute statuses realistically
    status   = random.choices(["available","claimed"], weights=[35,65])[0]
    listings.append((lid, rest_id, food_name, qty, unit, status, expiry, created, cat_id))
    lid += 1

with open(f"{OUTPUT}/food_listings.csv","w",newline="") as f:
    w = csv.writer(f)
    w.writerow(["food_id","user_id","food_name","quantity","unit","status","expiry_date","created_at","category_id"])
    w.writerows(listings)
print("food_listings:", len(listings))

claimed_listing_ids   = [l[0] for l in listings if l[5]=="claimed"]
available_listing_ids = [l[0] for l in listings if l[5]=="available"]
listing_created_map   = {l[0]: l[7] for l in listings}

# ── 4. claims ────────────────────────────────────────────────────────────────
claims = []
cid = 1
used_food_ids = set()

# confirmed/completed/cancelled for claimed listings
for food_id in claimed_listing_ids:
    ngo_id      = random.choice(ngo_ids)
    food_created= listing_created_map[food_id]
    claimed_at  = food_created + timedelta(hours=random.randint(1,12))
    pickup_time = claimed_at  + timedelta(hours=random.randint(2,24))
    status      = random.choices(
        ["confirmed","completed","cancelled"], weights=[20,60,20])[0]
    notes = random.choice([
        "Please pack separately.","Will arrive on time.","Cold storage needed.",
        "Large vehicle required.","NGO volunteer will collect.","","",""
    ])
    claims.append((cid, food_id, ngo_id, status, claimed_at, pickup_time, notes))
    used_food_ids.add(food_id)
    cid += 1

# a few pending claims on available listings
for food_id in random.sample(available_listing_ids, min(10, len(available_listing_ids))):
    ngo_id     = random.choice(ngo_ids)
    food_created= listing_created_map[food_id]
    claimed_at = food_created + timedelta(hours=random.randint(1,6))
    pickup_time= claimed_at   + timedelta(hours=random.randint(2,12))
    claims.append((cid, food_id, ngo_id, "pending", claimed_at, pickup_time, ""))
    cid += 1

with open(f"{OUTPUT}/claims.csv","w",newline="") as f:
    w = csv.writer(f)
    w.writerow(["claim_id","food_id","ngo_id","claim_status","claimed_at","pickup_time","notes"])
    w.writerows(claims)
print("claims:", len(claims))

confirmed_claims   = [c for c in claims if c[3] in ("confirmed","completed")]
completed_claims   = [c for c in claims if c[3]=="completed"]
all_non_pending    = [c for c in claims if c[3]!="pending"]

# ── 5. pickup_schedules ──────────────────────────────────────────────────────
schedules = []
sid = 1
for c in confirmed_claims:
    claim_id    = c[0]
    sched_time  = c[5]  # pickup_time from claim
    ps_status   = "completed" if c[3]=="completed" else "pending"
    schedules.append((sid, claim_id, sched_time, ps_status))
    sid += 1

with open(f"{OUTPUT}/pickup_schedules.csv","w",newline="") as f:
    w = csv.writer(f)
    w.writerow(["schedule_id","claim_id","scheduled_time","status"])
    w.writerows(schedules)
print("pickup_schedules:", len(schedules))

# ── 6. feedback ──────────────────────────────────────────────────────────────
feedback_comments = [
    "Excellent quality, very fresh!","Food was well packed and timely.",
    "Great coordination from the restaurant.","Slightly late but food was good.",
    "Everything was as expected, thank you.","Portions were generous.",
    "Will definitely claim again.","Good quality overall.",
    "Restaurant staff were very helpful.","Food was still warm on arrival.",
    "Packaging could be better but food was great.","Very clean and hygienic.",
    "Our community benefited greatly.","Quick and smooth process.",
    "","","",
]

feedbacks = []
fid = 1
# ~75% of completed claims get feedback
for c in completed_claims:
    if random.random() < 0.75:
        rating  = random.choices([3,4,4,5,5,5], k=1)[0]
        comment = random.choice(feedback_comments)
        submitted = c[4] + timedelta(hours=random.randint(2,48))
        feedbacks.append((fid, c[0], rating, comment, submitted))
        fid += 1

with open(f"{OUTPUT}/feedback.csv","w",newline="") as f:
    w = csv.writer(f)
    w.writerow(["feedback_id","claim_id","rating","comment","submitted_at"])
    w.writerows(feedbacks)
print("feedback:", len(feedbacks))

# ── 7. claim_logs ────────────────────────────────────────────────────────────
status_flow = {
    "pending":   [("pending","confirmed"), ("pending","cancelled")],
    "confirmed": [("confirmed","completed"), ("confirmed","cancelled")],
    "completed": [],
    "cancelled": [],
}

admin_ids  = [u[0] for u in users if u[4]=="admin"]
all_user_ids = [u[0] for u in users]

logs = []
log_id = 1

for c in claims:
    claim_id     = c[0]
    final_status = c[3]
    claimed_at   = c[4]

    # Build the status path
    if final_status == "pending":
        path = []
    elif final_status == "confirmed":
        path = [("pending","confirmed")]
    elif final_status == "completed":
        path = [("pending","confirmed"),("confirmed","completed")]
    elif final_status == "cancelled":
        # either direct cancel or via confirmed then cancel
        path = random.choice([
            [("pending","cancelled")],
            [("pending","confirmed"),("confirmed","cancelled")]
        ])

    t = claimed_at
    for (old_s, new_s) in path:
        t = t + timedelta(minutes=random.randint(10,120))
        changed_by = random.choice(admin_ids + all_user_ids[:5])
        logs.append((log_id, claim_id, changed_by, old_s, new_s, t))
        log_id += 1

with open(f"{OUTPUT}/claim_logs.csv","w",newline="") as f:
    w = csv.writer(f)
    w.writerow(["log_id","claim_id","changed_by","old_status","new_status","changed_at"])
    w.writerows(logs)
print("claim_logs:", len(logs))

print("\n✅ All CSVs generated successfully.")
