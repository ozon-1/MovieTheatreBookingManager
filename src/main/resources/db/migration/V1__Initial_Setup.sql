CREATE TABLE MOVIE(
    MOVIE_ID BIGSERIAL PRIMARY KEY,
    MOVIE_NAME TEXT NOT NULL,
    MOVIE_TAGS TEXT NOT NULL,
    MOVIE_POSTER_URL TEXT NOT NULL
);

CREATE TABLE USERS(
    USER_ID BIGSERIAL PRIMARY KEY,
    USERNAME TEXT NOT NULL UNIQUE,
    EMAIL TEXT NOT NULL,
    PASSWORD TEXT NOT NULL
);

CREATE TABLE SCREEN(
    SCREEN_ID BIGSERIAL PRIMARY KEY,
    THEATRE_ID LONG NOT NULL UNIQUE,
    SEATS_NUM TEXT NOT NULL
);

CREATE TABLE SCREENING(
    SCREENING_ID BIGSERIAL PRIMARY KEY,
    THEATRE_ID LONG NOT NULL UNIQUE,
    SCREEN_ID LONG NOT NULL UNIQUE,
    MOVIE_NAME TEXT NOT NULL,
    SCREENING_DATE DATE NOT NULL,
    SCREENING_TIME TIME NOT NULL,
    BOOKED_TICKETS INT NOT NULL
);