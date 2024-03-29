PLUGIN.name = "Weight"
PLUGIN.author = "Vex"
PLUGIN.description = "Allows for weight to be added to items."

ix.weight = ix.weight or {}

ix.config.Add("maxWeight", 30, "The maximum weight in Kilograms someone can carry in their inventory.", nil, {
	data = {min = 1, max = 100},
	category = "Weight"
})

ix.config.Add("maxOverWeight", 20, "The maximum amount of weight in Kilograms they can go over their weight limit, this should be less than maxWeight to prevent issues.", nil, {
	data = {min = 1, max = 100},
	category = "Weight"
})

ix.util.Include("sh_meta.lua")
ix.util.Include("sv_plugin.lua")

function ix.weight.WeightString(weight, imperial)
	if (imperial) then
		if (weight < 0.453592) then -- Filthy imperial system; Why do I allow their backwards thinking?
			return math.Round(weight * 35.274, 2).." oz"
		else
			return math.Round(weight * 2.20462, 2).." lbs"
		end
	else
		if (weight < 1) then -- The superior units of measurement.
			return math.Round(weight * 1000, 2).." t"
		else
			return "Gewicht "..math.Round(weight, 2).." kg"
		end
	end
end

function ix.weight.CanCarry(weight, carry) -- Calculate if you are able to carry something.
	local max = ix.config.Get("maxWeight", 30) + ix.config.Get("maxOverWeight", 20)

	return (weight + carry) <= max
end

if (CLIENT) then
	ix.option.Add("imperial", ix.type.bool, false, {
		category = "Weight"
	})

	function PLUGIN:PopulateItemTooltip(tooltip, item)
		local weight = item:GetWeight()

		if (weight) then
			local row = tooltip:AddRowAfter("description", "weight")
				row:SetText(ix.weight.WeightString(weight, ix.option.Get("imperial", false)))
				row:SetExpensiveShadow(1, color_black)
				row:SizeToContents()
		end
	end

end
