## Copyright (C) 2024 lazar
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} get_b (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: lazar <lazar@MAIN_PC>
## Created: 2024-02-02

function b = get_b (N)
    b = zeros(N, 1);
    b(1) = N;
    for i = 2:N
        b(i) = (i ^ N - 1) / (i - 1);
    endfor
endfunction
