-- Copyright 2021-2024 Joakim Nilsson
--
-- This file is part of Combo Whist.
--
-- Combo Whist is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- Combo Whist is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Combo Whist.  If not, see <http://www.gnu.org/licenses/>.

standard_bids = {
	{
		"Misär",
		0,
		1,
		"nej",
		"se $\\rightarrow$",
		"Spelföraren får varken ta hem flest eller delat flest stick.",
	},

	{
		"Osäkerhet",
		1,
		1,
		"nej",
		"se $\\rightarrow$",
		"Före handens början gissar spelföraren på två möjliga mängder stick denne kommer att ta hem. Spelföraren måste ta hem en av de gissade stickmängderna.",
	},

	{
		"Trumf",
		1,
		1,
		"ja",
		"min. 5",
		"Spelföraren bestämmer trumffärg.",
	},

	{
		"Grill",
		1,
		2,
		"ja",
		"min. 5",
		"Spelföraren börjar med att bestämma trumffärg. Denna trumffärg gäller dock bara under det första sticket. Därefter blir den färg som spelades ut i föregående stick ny trumffärg och så fortsätter det fram till handens slut.",
	},

	{
		"Blocktrumf",
		2,
		1,
		"ja",
		"min. 5",
		"Spelföraren bestämmer trumffärg. Såvida spelföraren inte enbart besitter trumfkort får denne inte spela trumf förrän en annan spelare har spelat trumf.",
	},

	{
		"Limbo",
		2,
		1,
		"nej",
		"se $\\rightarrow$",
		"Spelföraren måste ta hem färre av de 7 första sticken än av de 6 sista.",
	},

	{
		"Överflöd",
		2,
		2,
		"nej",
		"min. 5",
		" -- ",
	},

	{
		"Mästarmisär",
		3,
		2,
		"nej",
		"se $\\rightarrow$",
		"Spelföraren måste ta hem färst eller delat färst stick.",
	},

	{
		"Säkerhet",
		3,
		2,
		"nej",
		"se $\\rightarrow$",
		"Före handens början gissar spelföraren på en möjlig mängd stick denne kommer att ta hem. Spelföraren måste ta hem den gissade stickmängden.",
	},

	{
		"Maxtrumf",
		3,
		3,
		"ja",
		"min. 7",
		"Spelföraren väljer trumffärg.",
	},

	{
		"Subtrumf",
		3,
		3,
		"ja",
		"min. 5",
		"Spelföraren väljer trumffärg. Denne får dock inte välja en trumffärg som denne har flest eller delat flest kort i.",
	},

	{
		"Mästaröverflöd",
		4,
		3,
		"nej",
		"se $\\rightarrow$",
		"Spelföraren måste ta hem enskilt flest stick.",
	},

	{
		"Noll",
		4,
		4,
		"nej",
		0,
		" -- ",
	},

	{
		"Rangtrumf",
		4,
		4,
		"ja",
		"min. 5",
		"Icke-spelförarna väljer ett kort var och lägger dem på bordet med bildsidan nedåt. Korten vänds sedan upp och spelföraren byter ut ett av sina kort mot ett av motspelarnas som är högst eller delat högst. Det valda kortets färg är trumffärgen.",
	},

	{
		"Mästartrumf",
		6,
		6,
		"ja",
		"min. 5",
		"Spelaren till höger om spelföraren bestämmer trumffärg, men först får de andra icke-spelförarna säga vilken trumffärg de föredrar och hur mycket de föredrar denna på en skala från 1 till 5 (utan motivering).",
	},

	{
		"Obesudlat Bud",
		8,
		"*",
		"nej",
		"se $\\rightarrow$",
		"Spelföraren måste ta hem alla 2:or. Alla 2:or måste visas till samtliga spelare under handens gång och får inte ingå i en ateljé. *Om budet går hem får spelföraren lika många poäng som kombinationsbudets rang. Skulle dessutom kombinationsbudets rang vara 13 eller högre vinner spelföraren spelet omedelbart, oavsett poängställning. När detta inträffar erhåller spelföraren rätten att titulera sig \\emph{Obesudlad Mästare av~Kombinations-Whist} under resten av sitt liv.",
	}
}
