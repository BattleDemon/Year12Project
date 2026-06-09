import json

# Load original file
with open("country_data.json", "r", encoding="utf-8") as f:
    data = json.load(f)

transformed = {}

for original_key, value in data.items():
    # Ensure country_code exists
    if "county_code" not in value:
        raise KeyError(f"Missing 'county_code' in entry: {original_key}")

    new_key = value["county_code"]

    # Copy object so we do not mutate original reference
    new_entry = value.copy()

    # Add former key as color_code
    new_entry["color_code"] = original_key

    # Assign under new key
    transformed[new_key] = new_entry

# Save transformed file
with open("country_data_transformed.json", "w", encoding="utf-8") as f:
    json.dump(transformed, f, indent=4)

print("Transformation complete.")
