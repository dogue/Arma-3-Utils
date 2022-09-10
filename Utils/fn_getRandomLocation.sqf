/*
	Author: Dogue

	Description:
		Returns a random BIS location from the map.

	Parameter(s):
		0: Array of location types (https://community.bistudio.com/wiki/Location#Location_Types)
			Recommend "NameCity" and "NameVillage" for most towns


	Returns:
		Location (https://community.bistudio.com/wiki/Location)

	Examples:
		["NameCity", "NameVillage"] call ERR_fnc_getRandomLocation
*/

_types = param [0, ["NameCity", "NameVillage"], [""]];

_center = [(worldSize / 2), (worldSize / 2)];

selectRandom nearestLocations [_center, _types, 100000]