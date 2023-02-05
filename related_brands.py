import pandas as pd

data = pd.read_csv("brands.csv")
df = pd.DataFrame(
    {
        "brand": [],
        "related_id": [],
    }
)

related_brands_data = data["RELATED_BRAND_IDS"]
brand_name = data["ID"]

for index, related_brand in enumerate(related_brands_data):
    if pd.notna(related_brand):
        b = related_brand.split(":")
        for entry in b:
            entry = entry.strip()
            temp = {"brand": brand_name[index], "related_id": entry}
            df = df.append(temp, ignore_index=True)
    else:
        continue

print(df)
df.to_csv("related_brands.csv", sep=",", encoding="utf-8")
