
-- You can define factions in the factions/ folder. You need to have at least one faction that is the default faction - i.e the
-- faction that will always be available without any whitelists and etc.

FACTION.name = "5th Flottensicherheit"
FACTION.description = "Die 5th Flottensicherheit sorgt für Sicherheit auf der Basis."
FACTION.isDefault = false
FACTION.color = Color(100, 60, 60)
FACTION.models = {
    "models/cadet_fin/cadet_fin.mdl"
}

FACTION.pay = 10


FACTION.charImage = "materials/karman/ui/medic2.png"
FACTION.backgroundMusic = "karman/kamino2.mp3"

function FACTION:OnSpawn(client)
    client:SetMaxHealth(200)
    client:SetHealth(200)
end

FACTION.ranks = {

    [1] =  {
        ["shortname"] = "rekrut",
        ["longname"] ="Rekrut",
       -- ["img"] = "materials/jojo/501.png" Bilder und Texte überschneiden mit dem "ranksystem" aufgeschoben bis später
    },
    [2] =  {
        ["shortname"] = "TRP",
        ["longname"] ="Trooper",
      --  ["img"] = "starwars_content/derma/custom/trp.png"
    },
    [3] =  {
        ["shortname"] = "PVT",
        ["longname"] ="Private",
       -- ["img"] = "starwars_content/derma/custom/trp.png"
    },
    [4] =  {
        ["shortname"] = "PFC",
        ["longname"] ="Private First Class",
       -- ["img"] = "starwars_content/derma/custom/trp.png"
    },
    [5] =  {
        ["shortname"] = "SPC",
        ["longname"] ="Specialist",
       -- ["img"] = "starwars_content/derma/custom/cpl.png"
    },
    [6] =  {
        ["shortname"] = "LCPL",
        ["longname"] ="Lance Coporal",
       -- ["img"] = "starwars_content/derma/custom/cpl.png"
    },
    [7] =  {
        ["shortname"] = "CPL",
        ["longname"] ="Coporal",
       -- ["img"] = "starwars_content/derma/custom/cpl.png"
    },
    [8] =  { 
        ["shortname"] = "SGT",
        ["longname"] ="Sergeant",
       -- ["img"] = "starwars_content/derma/custom/sgt.png",
        ["canPromote"] = true
        },
        [9] =  { 
            ["shortname"] = "SSGT",
            ["longname"] ="Staff Sergeant",
           -- ["img"] = "starwars_content/derma/custom/sgt.png",
            ["canPromote"] = true
            },

            [10] =  { 
                ["shortname"] = "SGT MJR",
                ["longname"] ="Sergeant Major",
                --["img"] = "starwars_content/derma/custom/sgt.png",
                ["canPromote"] = true
                },
    [11] =  {
        ["shortname"] = "LT",
        ["longname"] ="Leutenant",
        --["img"] = "starwars_content/derma/custom/lt.png",
        ["canPromote"] = true
    },
    [12] =  {
        ["shortname"] = "FLT",
        ["longname"] ="First Leutenant",
       -- ["img"] = "starwars_content/derma/custom/lt.png",
        ["canPromote"] = true
    },
    [13] =  {
        ["shortname"] = "CPT",
        ["longname"] ="Captain",
       -- ["img"] = "starwars_content/derma/custom/cpt.png",
        ["canPromote"] = true
    },
    [14] =  {
        ["shortname"] = "MJR",
        ["longname"] ="Major",
        --["img"] = "starwars_content/derma/custom/mjr.png",
        ["canPromote"] = true
    },
    [15] =  {
        ["shortname"] = "CMD",
        ["longname"] ="Commander",
        --["img"] = "starwars_content/derma/custom/mcmd.png",
        ["canPromote"] = true

    },

}

-- You should define a global variable for this faction's index for easy access wherever you need. FACTION.index is
-- automatically set, so you can simply assign the value.

-- Note that the player's team will also have the same value as their current character's faction index. This means you can use
-- client:Team() == FACTION_CITIZEN to compare the faction of the player's current character.
FACTION_5TH = FACTION.index
