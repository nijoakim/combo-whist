-- Copyright 2021 Joakim Nilsson
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
		"Skambud",
		0,
		1,
		"no",
		"varies",
		"Spelföraren får inte ta hem flest stick---inte ens om nån annan spelare har tagit hem lika många stick.",
	},

	{
		"Ungefär",
		1,
		1,
		"no",
		"varies",
		"Före spelets början gissar spelföraren på två möjliga mängder stick denne kommer att ta hem. Spelföraren måste ta hem en av de möjliga mängderna stick som gissades.",
	},

	{
		"Trumf",
		1,
		1,
		"yes",
		"min 5",
		"Spelföraren bestämmer trumffärg.",
	},

	{
		"Grill",
		1,
		2,
		"yes",
		"min 5",
		"Spelföraren börjar med att bestämma trumffärg. Denna trumffärg gäller bara första sticket. Därefter blir den färg som spelades ut i föregångde stick ny trumffärg och så fortsätter det till spelets slut.",
	},

	{
		"Blocktrumf",
		2,
		1,
		"yes",
		"min 5",
		"Spelföraren bestämmer trumffärg. Spelföraren får inte spela något trumfkort förrän någon annan splare spelar trumf (såvida inte spelföraren enbart besitter trumfkort).",
	},

	{
		"Limbo",
		2,
		1,
		"no",
		"varies",
		"Spelföraren måste ta hem färre stick av de 7 första sticken än av de 6 sista.",
	},

	{
		"Spel",
		2,
		2,
		"no",
		"min 5",
		"---",
	},

	{
		"Mästarskambud",
		3,
		2,
		"no",
		"varies",
		"Spelföraren måste ta hem färst stick. Om ingen tar hem färre stick än spelföraren går budet hem.",
	},

	{
		"Precis",
		3,
		2,
		"no",
		"varies",
		"Före spelets början gissar spelföraren på en möjlig mängd stick denne kommer att ta hem. Spelföraren måste ta hem den mängd stick som gissades.",
	},

	{
		"Maxtrumf",
		3,
		3,
		"yes",
		"min 7",
		"Spelföraren väljer trumffärg.",
	},

	{
		"Subtrumf",
		3,
		3,
		"yes",
		"min 5",
		"Spelföraren väljer trumffärg. Denne får dock inte välja en trumffärg som denne har flest kort i.",
	},

	{
		"Rangtrumf",
		3,
		4,
		"yes",
		"min 5",
		"Alla spelare väljer ett kort var och lägger det på bordet med bildsidan nedåt. Korten vänds sedan upp och spelföraren byter ut sitt kort med det av motspelarnas som är högst. Skulle det finnas flera högsta kort väljer spelföraren ett av dem. Det valda kortets färg är trumffärgen.",
	},

	{
		"Mästarspel",
		4,
		3,
		"no",
		"varies",
		"Spelföraren måste ta hem enskilt flest stick.",
	},

	{
		"Noll",
		4,
		4,
		"no",
		0,
		"---",
	},

	{
		"Mästartrumf",
		6,
		6,
		"yes",
		"min 5",
		"Spelaren till vänster om spelföraren bestämmer trumffärg, men först får de andra icke-spelförarna säga vilken trumffärg de föredrar och hur mycket de föredrar denna på en skala från 1 till 5 (utan motivering).",
	},

	{
		"Obesudlat Mästarspel",
		8,
		"*",
		"no",
		"min 12",
		"*Om budet går hem får spelföraren lika många poäng som kombinationsbudets värde. Skulle dessutom kombinationsbudets värde vara 13 eller högre vinner spelföraren spelet omedelbart, oavsett poängställning. När detta inträffar erhåller dessutom spelföraren rätten att titulera sig \\emph{Obesudlad~Mästare~av~Kombinations-Whist} under resten av sitt liv.",
	}
}
