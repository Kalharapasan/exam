% Western Province
district(gampaha, western).
district(colombo, western).
district(kaluthara, western).

% Eastern Province
district(trincomalee, eastern).
district(batticaloa, eastern).
district(ampara, eastern).

% Northern Province
district(jaffna, northern).
district(kilinochchi, northern).
district(vavuniya, northern).

% North-Central Province
district(anuradhapura, north_central).
district(polonnaruwa, north_central).

% Uva Province
district(badulla, uva).
district(monaragala, uva).

% Southern Province
district(hambanthota, southern).
district(matara, southern).
district(galle, southern).

% Central Province
district(matale, central).
district(kandy, central).
district(nuwara_eliya, central).

% North-Western Province
district(puttalam, north_western).
district(kurunegala, north_western).

% Sabaragamuwa Province
district(kegalla, sabaragamuwa).
district(rathnapura, sabaragamuwa).

province_of(District, Province) :-
    district(District, Province).
