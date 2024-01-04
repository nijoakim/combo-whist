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

special_bids = {
	{
		"Rättvisa",
		-4,
		1,
		nil,
		"Innan handen börjar väljer spelföraren ett valfritt kort som blir \\emph{rättvisans kort}. När sticket som innehåller rättvisans kort har spelats bestämmer spelföraren vilken spelare som tar hem det.",
	},

	{
		"Lättja",
		-3,
		nil,
		nil,
		"För de stick där spelföraren inte spelar ut, spelar spelföraren sist.",
	},

	{
		"Potential",
		-2,
		nil,
		nil,
		"Om budet går hem markeras det med ett P, en \\emph{potential}, i spelförarens kolumn. En spelare som innehar fler potentialer än en annan kan buda över den senares bud med ett bud rankat lika högt som det ledande budet.",
	},

	{
		"Brådska",
		-2,
		nil,
		nil,
		"Spelföraren blir förhand och spelar därmed ut i första sticket.",
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
		"Före handens början skickar alla spelare 3 kort till höger.",
	},

	{
		"Girighet",
		0,
		nil,
		{"Obesudlat Bud"},
		"I slutet av handen läggs ett virtuellt stick till eller dras bort från spelföraren så att det missgynnar denne. Om budet går hem får spelföraren 1 extra-poäng.",
	},

	{
		"Ateljé",
		1,
		4,
		{"Öppen Hand"},
		"Spelföraren väljer 4 kort som denne lägger i \\emph{ateljén}. Dessa kort visas för samtliga spelare under handens gång. Så fort det inte längre finns 4 kort i ateljen måste spelföraren, om möjligt, lägga dit ett nytt kort från handen.",
	},

	{
		"Mästarbrev",
		"{1 el. 3}",
		3,
		nil,
		"Om budet budas i kombination med ett trumf-bud som inte är \\emph{Grill} är rangen 3, men annars endast 1. Före handen börjar skickar alla utom spelföraren 3 kort till spelaren till vänster (spelföraren hoppas över).",
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
		4,
		{
			"\\textnormal{\\nonTrumpText}",
			"Grill",
			"Öppen Hand",
		},
		"Spelföraren spelar med öppna trumfkort; Det vill säga spelförarens trumfkort måste visas för samtliga spelare under handens gång. Om detta bud kombineras med \\emph{Ateljé} så får ateljén inte innehålla några trumfkort.",
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
		"Om budet inte går hem så dras förlorar spelföraren ytterligare 2 poäng.",
	},

	{
		"Pest",
		2,
		1,
		{
			"Misär",
			"Mästarmisär",
			"Noll",
		},
		"Spelföraren väljer en färg som blir \\emph{pestfärgen}. Spelföraren får inte bli \\emph{förpestad}; det vill säga får inte ta hem enskilt flest pest-\\emph{kort}, såvida inte denne blir \\emph{hedervärt förpestad} och tar hem hela pestfärgen samt att budet i övrigt går hem, i vilket fall spelföraren tilldelas 1 hedervärt extra-poäng. Såvida spelföraren inte enbart besitter pestkort får denne inte spela ut i pestfärgen före pestfärgen har spelats på annat sätt.",
	},

	{
		"Öppen Hand",
		3,
		4,
		{
			"Ateljé",
			"Öppen Trumf",
		},
		"Spelföraren spelar med öppen hand. Det vill säga, alla dennes kort visas för samtliga spelare under handens gång.",
	},
}
