import json

# Load original file
with open("country_data.json", "r") as f:
    data = json.load(f)

# Create inverted dictionary
inverted = {}

for county_code, county_data in data.items():
    color = county_data.get("color_code")
    if color:
        if color in inverted:
            raise ValueError(f"Duplicate color detected: {color}")
        inverted[color] = county_code

# Save result
with open("color_to_county.json", "w") as f:
    json.dump(inverted, f, indent=4)

print("Done.")
