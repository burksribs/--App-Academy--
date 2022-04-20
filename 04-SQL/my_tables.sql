create table countries(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	population INTEGER NOT NULL
);

create table animals(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	country_id INTEGER NOT NULL,

	FOREIGN KEY (country_id) REFERENCES countries(id)
);

INSERT INTO 
	countries(name, population)
	VALUES
	('United States', 32700000)
;


INSERT INTO
	animals
	(name, country_id)
	VALUES
	('Bald Eagle', 
		(SELECT
		id
		FROM
		countries
		WHERE name = 'United States')),
	('Black Bear',
		(SELECT
		id 
		FROM countries
		WHERE name = 'United States')),
	('Racoon',
		(SELECT
		id
	       	FROM
		countries
		WHERE name = 'United States'))

;


