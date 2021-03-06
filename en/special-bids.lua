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
		"Justice",
		-4,
		1,
		nil,
		"The declarer selects any card before the game begins. This card becomes the \\emph{card of justice}. The declarer decides who takes a trick containing the card of justice when this trick is brought home.",
	},

	{
		"Sloth",
		-3,
		nil,
		nil,
		"For the tricks in which the declarer does not lead, the declarer plays last.",
	},

	{
		"Potential",
		-2,
		nil,
		nil,
		"If this bid is completed it is marked by a P, a \\emph{potential}, in the declarer's column. A player who has more potentials than another can over-bid the latter's bid with a bid worth as much as the leading bid.",
	},

	{
		"Hurry",
		-2,
		nil,
		nil,
		"The declarer leads the first trick.",
	},

	{
		"Iron",
		-1,
		nil,
		nil,
		"The aces rank the lowest instead of the highest.",
	},

	{
		"Mail",
		-1,
		2,
		nil,
		"Before the game starts, all players send 3 cards in a direction the declarer chooses (to the right, to the left or across)."
	},

	{
		"Greed",
		0,
		nil,
		nil,
		"At the end of the game, one virtual trick is added to or subtracted from the declarer's stick count in such a way that it disfavors them. If the bid is completed, the declarer scores 1 extra point.",
	},

	{
		"Atelier",
		1,
		nil,
		{"Open Hand"},
		"The declarer chooses 4 cards that they put in \\emph{the atelier}. These cards must be shown to all players during the game. As soon as the atelier no longer consists of 4 cards, the declarer must add a card to it, if possible.",
	},

	{
		"Ending Dog",
		1,
		nil,
		{"Zero"},
		"The declarer must not bring home the last trick.",
	},

	{
		"Master's Mail",
		"{1\\text{ or }3}",
		3,
		nil,
		"If the bid is combined with a trump bid that is not \\emph{Grill}, its worth is 3, but otherwise merely 1. Before the game starts, all players but the declarer sends 3 cards to the player to the right (skipping the declarer).",
	},

	{
		"Open Trump",
		1,
		nil,
		{"\\nonTrump", "Grill", "Open Hand"},
		"The declarer must play with open trump cards. That is, all of the declarer’s trump cards must be shown to all players during the game. If combined with \\emph{Atelier}, the atelier must not contain any trump cards.",
	},

	{
		"Lock",
		2,
		nil,
		{"Zero"},
		"The declarer must not bring home any of the first 3 tricks.",
	},

	{
		"Penalty",
		2,
		nil,
		nil,
		"If the declarer does not complete their bid, 2 extra points are subtracted from their score.",
	},

	{
		"Plague",
		2,
		1,
		{"Bid of Shame", "Master's Bid of Shame", "Zero"},
		"The declarer chooses a suit to be the \\emph{plague suit}. The declarer must not become \\emph{beplagued}; that is, must not bring home the solitary greatest amount of plague cards (note: \\emph{not} tricks), unless they become \\emph{honorably beplagued} and bring home the whole plague suit as well as fulfill all the other requirements of the combo bid, in which case they also score 1 honorable extra point. The declarer must not lead in the plague suit before the plague suit has been played in some other way, provided the declarer does not hold only plague cards.",
	},

	{
		"Open Hand",
		3,
		nil,
		{"Atelier", "Open Trump"},
		"The declarer must play with an open hand. That is, all of the their cards must be shown to all players during the game.",
	},
}
