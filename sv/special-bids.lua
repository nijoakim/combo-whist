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

special_bids = {
	{
		"Rättvisa",
		-4,
		1,
		nil,
		"Spelföraren väljer ett valfritt kort innan spelet börjar. Detta kort blir \\emph{rättvisans kort}. Spelföraren bestämmer vem som tar sticket med rättvisans kort när detta stick tas hem."
	},

	{
		"Lättja",
		-3,
		nil,
		nil,
		"För de stick därvar spelföraren inte spelar ut, spelar spelföraren sist.",
	},

	{
		"Potential",
		-2,
		nil,
		nil,
		"Om budet går hem markeras det med ett P, en \\emph{potential}, i spelförarens kolumn. En spelare som innehar fler potentialer än en annan kan buda över den senares bud med ett bud värt lika mycket som det ledande budet.",
	},

	{
		"Brådska",
		-2,
		nil,
		nil,
		"Spelföraren spelar ut i första sticket.",
	},

	{
		"Järn",
		-1,
		nil,
		nil,
		"Essen rankas lägst istället för högst.",
	},

	{
		"Brev",
		-1,
		2,
		nil,
		"Före spelet börjar skickar alla spelare 3 kort i en riktning som spelföraren väljer (till höger, till vänster eller tvärs över).",
	},

	{
		"Girighet",
		0,
		nil,
		nil,
		"I slutet av spelet läggs ett virtuellt stick till eller dras bort från spelföraren så att det missgynnar denne. Om budet går hem får spelföraren 1 extra-poäng.",
	},

	{
		"Ateljé",
		1,
		nil,
		{"Öppen Hand"},
		"Spelföraren väljer 4 kort som denne lägger i \\emph{ateljén}. Dessa kort visas till samtliga spelare under spelets gång. Så fort det inte längre finns 4 kort i ateljen måste spelföraren, om möjligt, lägga dit ett nytt kort från handen.",
	},

	{
		"Mästarbrev",
		"{1 or 3}",
		3,
		nil,
		"Om budet budas i kombination med ett trumf-bud some inte är \\emph{Grill} är värdet 3, men annars endast 1. Före spelet börjar skickar alla utom spelföraren 3 kort till spelaren till höger (spelföraren hoppas över).",
	},

	{
		"Slut-Hund",
		1,
		nil,
		{"Noll"},
		"Spelföraren får inte ta hem det sista sticket.",
	},

	{
		"Öppen Trumf",
		1,
		nil,
		{"\\nonTrump", "Grill", "Öppen Hand"},
		"Spelföraren måste spela med öppna trumfkort. Det vill säga, spelförarens trumfkort måste visas till samtliga spelare under spelets gång. Om detta bud kombineras med \\emph{Ateljé} så får ateljén inte innehålla några trumfkort.",
	},

	{
		"Lås",
		2,
		nil,
		{"Noll"},
		"Spelföraren får inte ta hem något av de 3 första sticken.",
	},

	{
		"Straff",
		2,
		nil,
		nil,
		"Om budet inte går hem så dras 2 extra-poäng bort från spelförarens poängsumma.",
	},

	{
		"Pest",
		2,
		1,
		{"Skambud", "Mästarskambud", "Noll"},
		"Spelföraren väljer en färg som blir \\emph{pestfärgen}. Spelföraren får inte bli \\emph{förpestad}, det vill säga, får inte ta hem enskilt flest kort (observera: \\emph{ej} stick) i pestfärgen, såvida inte denne blir \\emph{hedervärt förpestad} och tar hem hela pestfärgen samt att budet i övrigt går hem, i vilket fall spelföraren får 1 hedervärt extra-poäng. Spelföraren får inte spela ut i pestfärgen före pestfärgen har spelats på annat sätt, såvida inte spelföraren enbart besitter pest-kort.",
	},

	{
		"Öppen Hand",
		3,
		nil,
		{"Ateljé", "Öppen Trumf"},
		"Spelföraren måste spela med öppen hand. Det vill säga, alla dennes kort måste visas för samtliga spelare under spelets gång.",
	},
}
