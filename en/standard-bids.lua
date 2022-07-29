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
		"Bid of~Shame",
		0,
		1,
		"no",
		"see $\\rightarrow$",
		"The declarer must not bring home the greatest amount of tricks---not even if this amount is shared with another player.",
	},

	{
		"Approximate",
		1,
		1,
		"no",
		"see $\\rightarrow$",
		"The declarer guesses, before the beginning of the game, two possible amounts of tricks they think they could bring home. They must bring home one of the amounts of tricks they guessed.",
	},

	{
		"Trump",
		1,
		1,
		"yes",
		"min 5",
		"The declarer decides trump suit.",
	},

	{
		"Grill",
		1,
		2,
		"yes",
		"min 5",
		"The declarer begins by deciding trump suit. This trump suit only applies to the first trick. After that trick, the new trump suit is the suit which was led in the previous trick, and this procedure is repeated until the game is finished.",
	},

	{
		"Block Trump",
		2,
		1,
		"yes",
		"min 5",
		"The declarer decides trump suit. The declarer is not allowed to play any trump card until any other player plays trump (unless the declarer holds only trump cards).",
	},

	{
		"Limbo",
		2,
		1,
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home fewer tricks of the 7 first tricks than of the 6 last.",
	},

	{
		"Game",
		2,
		2,
		"no",
		"min 5",
		"---",
	},

	{
		"Master's Bid of~Shame",
		3,
		2,
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home the least amount of tricks. If no one brings home fewer tricks than the declerer, the bid is completed.",
	},

	{
		"Precise",
		3,
		2,
		"no",
		"see $\\rightarrow$",
		"The declarer guesses, before the start of the game, how many tricks they think they will bring home. They must bring home the number of tricks they guessed.",
	},

	{
		"Max Trump",
		3,
		3,
		"yes",
		"min 7",
		"The declarer chooses trump suit.",
	},

	{
		"Sub Trump",
		3,
		3,
		"yes",
		"min 5",
		"The declarer chooses trump suit. They must not choose one of the suits in which they have the most cards.",
	},

	{
		"Rank Trump",
		3,
		4,
		"yes",
		"min 5",
		"All players choose one card each and put them face-down on the table. The cards are then revealed and the declarer switches their card with a card of one of the opponent's which has the highest rank. If there are multiple cards with the highest rank, the declarer chooses one of them. The chosen card's suit is the trump suit.",
	},

	{
		"Master's Game",
		4,
		3,
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home the solitary greatest amount of tricks.",
	},

	{
		"Zero",
		4,
		4,
		"no",
		0,
		"---",
	},

	{
		"Master's Trump",
		6,
		6,
		"yes",
		"min 5",
		"The player to the left of the declarer decides trump suit, but first the other non-declarer players may say what trump suit they prefer and how much they prefer it on a scale from 1 to 5 (without motivation).",
	},

	{
		"Taintless Master's Game",
		8,
		"*",
		"no",
		"min 12",
		"*If the bid is completed, the declarer scores as many points as the combo bid's worth. Furthermore, in case the combo bid's worth is 13 or higher, the declarer immediately wins the game regardless of previous scores. When this occurs the declarer also earns the right to the title, \\emph{Taintless Master of~Combo~Whist}, for the rest of their life.",
	}
}
