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

-- 'require' would do a relative import originating from this file's directory, which is undesired
dofile('../special-bids.lua')
dofile('../standard-bids.lua')

function tableItemsStandardBids()
	for _, bid in ipairs(standard_bids) do
		tex.print("\\\\ \\hline")
		tex.print("\\textsc{".. bid[1] .."} &")
		tex.print(bid[2] .." &")
		tex.print(bid[3] .." &")
		tex.print(bid[4] .." &")
		tex.print(bid[5] .." &")
		tex.print("\\small ".. bid[6])
		tex.print("")
	end
end

function tableItemsSpecialBids()
	for _, bid in ipairs(special_bids) do
		tex.print("\\\\ \\hline")
		tex.print("\\textsc{".. bid[1] .."} &")
		tex.print(bid[2] .." &")
		tex.print(bid[3] .." &")
		tex.print("\\raggedright\\textit{".. bid[4] .."} &")
		tex.print("\\small ".. bid[5])
		tex.print("")
	end
end
