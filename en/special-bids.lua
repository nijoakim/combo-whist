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
		"Justice",
		-4,
		1,
		nil,
		"Before the hand begins, the declarer selects any card to be become the \\emph{card of justice}. When the trick containing the card of justice has been played, the declarer decides which player brings it home.",
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
		"If the bid is completed, a P---a \\emph{potential}---is marked in the declarer's column. A player who has more potentials than another can over-bid the latter's combo bid with a combo bid ranking as high the leading bid.",
	},

	{
		"Hurry",
		-2,
		nil,
		nil,
		"The declarer becomes forehand and thus leads the first trick.",
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
		"Before the hand begins, all players send 3 cards in a direction the declarer chooses (to the right, to the left or across).",
	},

	{
		"Greed",
		0,
		nil,
		{"Taintless bid"},
		"At the end of the hand, one virtual trick is added to or subtracted from the declarer's stick count in such a way that it disfavors them. If the bid is completed, the declarer scores 1 extra point.",
	},

	{
		"Atelier",
		1,
		4,
		{"Open Hand"},
		"The declarer chooses 4 cards that they put in \\emph{the atelier}. These cards must be shown to all players during the hand. As soon as the atelier no longer holds 4 cards, if possible, the declarer must add one card to it.",
	},

	{
		"Ending Dog",
		1,
		nil,
		{"Zero"},
		"The declarer must not bring home the last trick.",
	},

	{
		"Master Mail",
		"{1 or 3}",
		3,
		nil,
		"If this bid is combined with a trump bid that is not \\emph{Grill}, its rank is 3, but otherwise it is 1. Before the hand starts, all players but the declarer send 3 cards to the player to the right, skipping over the declarer.",
	},

	{
		"Open Trump",
		1,
		4,
		{"\\nonTrump", "Grill", "Open Hand"},
		"The declarer must play with open trump cards; That is, all of the declarer’s trump cards must be shown to all players during the hand. If combined with \\emph{Atelier}, the atelier must not hold trump cards.",
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
		"If the declarer does not complete the bid, 2 additional points are subtracted from their score.",
	},

	{
		"Plague",
		2,
		1,
		{
			"Misery",
			"Master Misery",
			"Zero",
		},
		"The declarer chooses a suit to be the \\emph{plague suit}. The declarer must not become \\emph{beplagued}; That is, they must not bring home the solitary greatest amount of plague cards (note: \\emph{not} tricks), unless they bring home the whole plague suit as well as fulfill all the other requirements of the combo bid, in which case they become \\emph{honorably beplagued} and score 1 honorable extra point. Unless the declarer holds only plague cards, they must not lead in the plague suit before the plague suit has been played in some other way.",
	},

	{
		"Open Hand",
		3,
		4,
		{
			"Atelier",
			"Open Trump",
		},
		"The declarer must play with an open hand; That is, all of the their cards must be shown to all players during the hand.",
	},
}
