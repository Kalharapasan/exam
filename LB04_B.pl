province_district(western,[gampaha,colombo,kaluthra]).
province_district(eastern,[trincomlee,batticaloa,ampara]).
province_district(northern,[jaffna,kilinochchi,vavyniya]).
province_district(north_central,[anuradhpura,polonnaruwa]).
province_district(uva,[badulla,monaragala]).
province_district(southern,[hambanthota,matara,galle]).
province_district(central,[matale,kandy,nuwara_eliya]).
province_district(north_western,[puttalam,kurunegala]).
province_district(sabaragamuwa,[kaglle,rathnapura]).

%Rule
district_in_province(District,Province):-
    province_district(Province,Districts),
    member(District,Districts).

district_of_province(Province,Districts):-
    province_district(Province,Districts).



