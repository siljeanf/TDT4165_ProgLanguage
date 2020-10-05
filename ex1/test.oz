functor
import
    Application(exit:Exit)
    System

define

{System.showInfo 'Hello World'}

%%test task7

%declare
L=[1 2 3 5 6 7 8]
%declare
G=[9 8 7]

\insert task7.oz

{System.showInfo {Take L 1}}
{System.showInfo {Length L}}
{System.showInfo {Drop L 3}}
{System.showInfo {Append L G}}
{System.showInfo {Member L 10}}
{System.showInfo {Position L 5}}
{Exit 0}
end



