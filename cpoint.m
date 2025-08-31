%%%% CPOINT: Calculates the O2 compensation point for photosynthesis
%%%%% Based on temperature (°C) and CO2 concentration (µmol/mol)
%%%%% Following Haxeltine & Prentice (1996) and André (2011)

function o2lim = cpoint(temp,co2)

% set constant parameters 
q10t = 0.57;
sp   = 0.132;

tau = sp*(q10t^((temp-25)/10)); % calculate rubisco specificity 
                                % taken from haxeltine & prentice
o2lim = (3/2)*co2*tau;          % O2 compensation point taken from andre (2011)

end 
