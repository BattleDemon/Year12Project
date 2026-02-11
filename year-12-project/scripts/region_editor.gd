extends PanelContainer

var current_hex = ""

func load_region(hex, data):
	current_hex = hex
	
	$CountyCode.text = data["county_code"]
	$Culture.text = data["culture"]
	$Faith.text = data["faith"]
	$MaxInfra.value = int(data["max_infrastrucure"])
	$Coastal.button_pressed = data["coastal"]
	$River.button_pressed = data["river"]
	$NaturalResource.text = data["natural_resource"]
