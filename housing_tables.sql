CREATE TABLE properties (
    property_id SERIAL PRIMARY KEY,
    area FLOAT,
    bedrooms INT,
    bathrooms INT,
    stories INT,
    parking INT
);
\copy properties FROM 'C:\Users\AidaBah\Desktop\csci1070_course\mycsclass\csfinalproject\cleaned_house.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',')

CREATE TABLE features (
    property_id INT,
    mainroad BOOLEAN,
    guestroom BOOLEAN,
    basement BOOLEAN,
    hotwaterheating BOOLEAN,
    airconditioning BOOLEAN,
    prefarea BOOLEAN,
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);
\copy features FROM 'C:\Users\AidaBah\Desktop\csci1070_course\mycsclass\csfinalproject\cleaned_house.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',')

CREATE TABLE financial (
    property_id INT,
    price FLOAT,
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);
\copy financial FROM 'C:\Users\AidaBah\Desktop\csci1070_course\mycsclass\csfinalproject\cleaned_house.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',')

CREATE TABLE furnishing_status (
    property_id INT,
    semi_furnished BOOLEAN,
    unfurnished BOOLEAN,
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);

\copy furnishing_status FROM 'C:\Users\AidaBah\Desktop\csci1070_course\mycsclass\csfinalproject\cleaned_house.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',')
