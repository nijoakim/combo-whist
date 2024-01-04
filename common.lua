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

-- 'require' would do a relative import originating from this file's directory, which is undesired
dofile('../special-bids.lua')
dofile('../standard-bids.lua')

--========
-- Tables
--========

function tableItemsStandardBids()
	for _, bid in ipairs(standard_bids) do
		tex.print("\\\\ \\midrule")                           -- Caption rule
		tex.print("\\raggedright \\textsc{".. bid[1] .."} &") -- Designation
		tex.print(bid[2] .." &")                              -- Rank
		tex.print(bid[3] .." &")                              -- Score
		tex.print(bid[4] .." &")                              -- Trump
		tex.print(bid[5] .." &")                              -- Tricks
		tex.print("\\small ".. bid[6])                        -- Rules
		tex.print("")                                         -- New line
	end
end

function tableItemsSpecialBids()
	for _, bid in ipairs(special_bids) do
		tex.print("\\\\ \\midrule")                           -- Caption rule
		tex.print("\\raggedright \\textsc{".. bid[1] .."} &") -- Designation
		tex.print(bid[2] .." &")                              -- Rank

		-- Order
		if bid[3] then
			tex.print(bid[3] .." &")
		else
			tex.print("{\\dash} &")
		end

		-- Incompatibility
		if bid[4] then
			tex.print{"\\raggedright\\textit{%"}
			for i, incompat in ipairs(bid[4]) do
				print_str = incompat
				if i < #(bid[4]) then
					print_str = print_str ..", \\newline"
				end
				tex.print(print_str)
			end
			tex.print{"}"}
			tex.print(" &")
		else
			tex.print("{\\dash} &")
		end

		tex.print("\\small ".. bid[5]) -- Rules
		tex.print("")                  -- New line
	end
end

--=======
-- Cards
--=======

num_cards = 0

function cardsStandardBids(numSeries)
	for _, bid in ipairs(standard_bids) do
		for series = 1, numSeries do
			tex.print("\\card")              -- Command
			tex.print("{\\standardBidText}") -- Bid type
			tex.print("{pink}")              -- Color
			tex.print("{".. bid[1] .."}")    -- Designation

			-- Rules
			if #bid[6] > 300 then
				tex.print("{\\scriptsize ".. bid[6] .."}")
			else
				tex.print("{".. bid[6] .."}")
			end

			tex.print("{".. bid[2] .."}") -- Rank

			tex.print("{%")
				tex.print("\\begin{tabular}{ll}")
					tex.print("\\textbf{\\scoreText:}  & ".. bid[3] .." \\\\") -- Score
					tex.print("\\textbf{\\trumpText:}  & ".. bid[4] .." \\\\") -- Trump
					tex.print("\\textbf{\\tricksText:} & ".. bid[5] .." \\\\") -- Tricks
				tex.print("\\end{tabular}")
			tex.print("}")

			tex.print("{".. series .."}") -- Series

			-- Line breaks every third card to avoid exceeding margins
			if num_cards % 3 == 2 then
				tex.print("\\\\[1.5em]")
			end
			num_cards = num_cards + 1
		end
	end
end

function cardsSpecialBids(numSeries)
	for _, bid in ipairs(special_bids) do
		for series = 1,numSeries do
			tex.print("\\card")             -- Command
			tex.print("{\\specialBidText}") -- Bid type
			tex.print("{lime}")             -- Color
			tex.print("{".. bid[1] .."}")   -- Designation

			-- Rules
			if #bid[5] > 400 then
				tex.print("{\\scriptsize ".. bid[5] .."}")
			else
				tex.print("{".. bid[5] .."}")
			end

			-- Rank
			tex.print("{")
			if type(bid[2]) == "number" then
				tex.print("$")
			end
			tex.print(bid[2])
			if type(bid[2]) == "number" then
				tex.print("$")
			end
			tex.print("}")

			tex.print("{%")
				-- Priority
				if bid[3] then
					tex.print("\\textbf{\\priorityText:} ".. bid[3] .."\\\\[1em]")
				end

				-- Incompatibility
				if bid[4] then
					tex.print{"\\textbf{\\incompatibilityText:} \\raggedright\\textit{\\nobreak%"}
					for j, incompat in ipairs(bid[4]) do
						print_str = incompat
						if j < #(bid[4]) then
							print_str = print_str ..", "
						end
						tex.print(print_str)
					end
					tex.print{"}"}
				end
			tex.print("}")

			tex.print("{".. series .."}") -- Series

			-- Line breaks every third card to avoid exceeding margins
			if num_cards % 3 == 2 then
				tex.print("\\\\[1.5em]")
			end
			num_cards = num_cards + 1
		end
	end
end
