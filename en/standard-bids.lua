-- Copyright 2021-2023 Joakim Nilsson
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
		"Misery",
		0,
		1,
		"no",
		"see $\\rightarrow$",
		"The declarer must not bring home the greatest nor shared greatest number of tricks.",
	},

	{
		"Uncertainty",
		1,
		1,
		"no",
		"see $\\rightarrow$",
		"The declarer guesses two possible numbers of tricks they they could bring home. They must bring home one of the guessed numbers of tricks.",
	},

	{
		"Trump",
		1,
		1,
		"yes",
		"min. 5",
		"The declarer decides trump suit.",
	},

	{
		"Grill",
		1,
		2,
		"yes",
		"min. 5",
		"The declarer decides trump suit. However, said trump suit only applies to the first trick. After that trick, the new trump suit is the suit which was led in the previous trick, and this procedure is repeated until the hand is finished.",
	},

	{
		"Block Trump",
		2,
		1,
		"yes",
		"min. 5",
		"The declarer decides trump suit. Unless the declarer holds only trump, they are not allowed to play trump until a non-declarer has played trump.",
	},

	{
		"Limbo",
		2,
		1,
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home fewer of the first 7 tricks than of the last 6.",
	},

	{
		"Abundance",
		2,
		2,
		"no",
		"min. 5",
		"---",
	},

	{
		"Certainty",
		3,
		2,
		"no",
		"see $\\rightarrow$",
		"The declarer guesses how many tricks they will bring home. They must bring home the guessed number of tricks.",
	},

	{
		"Master Misery",
		3,
		2,
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home the least or shared least number of tricks.",
	},

	{
		"Max Trump",
		3,
		3,
		"yes",
		"min. 7",
		"The declarer chooses trump suit.",
	},

	{
		"Sub Trump",
		3,
		3,
		"yes",
		"min. 5",
		"The declarer chooses trump suit. They must not choose one of the suits in which they have the most cards.",
	},

	{
		"Rank Trump",
		3,
		4,
		"yes",
		"min. 5",
		"The non-declarers choose one card each and put them face-down on the table. The cards are then revealed and the declarer swaps one of their cards with one of the revealed cards that ranks the highest or shared highest. The trump suit is that of the chosen card.",
	},

	{
		"Master Abundance",
		4,
		3,
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home the solitary greatest number of tricks.",
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
		"Master Trump",
		6,
		6,
		"yes",
		"min. 5",
		"The player to the right of the declarer decides trump suit, but first the other non-declarer players may say what trump suit they prefer and how much they prefer it on a scale from 1 to 5 (without motivation).",
	},

	{
		"Taintless Bid",
		8,
		"*",
		"no",
		"see $\\rightarrow$",
		"The declarer must bring home all 2s. All 2s must be shown to all players during the hand and must not be included in an atelier. *If the bid is completed, the declarer scores as many points as the combo bid's rank. Furthermore, in case the combo bid's rank is 13 or higher, the declarer immediately wins the game regardless of previous scores. When this occurs, the declarer earns the right to the title, \\emph{Taintless Master of~Combo~Whist}, for the rest of their life.",
	}
}
