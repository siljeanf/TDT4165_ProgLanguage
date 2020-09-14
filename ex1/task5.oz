% task5

local
    Area
    Diameter
    CircleCirc

% procedure definition
    proc {Circle R Area Diameter CircleCirc}  
        local  Pi = 3 in
            Area = R*R*Pi
            Diameter = 2*R
            CircleCirc = Pi*Diameter
        end
    end
in
% procedure evaluation (Cannot add integer and float!)

{Circle 2 Area Diameter CircleCirc} 
{Show Area}
{Show Diameter}
{Show CircleCirc}
end