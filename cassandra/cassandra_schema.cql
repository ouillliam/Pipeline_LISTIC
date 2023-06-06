CREATE KEYSPACE IF NOT EXISTS ufo_sightings WITH replication = {'class' : 'SimpleStrategy', 'replication_factor' : 3};


CREATE TABLE IF NOT EXISTS ufo_sightings.sighting (
    date_and_time TEXT,
    country TEXT,
    city TEXT,
    state TEXT,
    shape TEXT,
    summary TEXT,
    lat  DECIMAL,
    lng DECIMAL,
    PRIMARY KEY(date_and_time)
);

CREATE KEYSPACE IF NOT EXISTS tweets WITH replication = {'class' : 'SimpleStrategy', 'replication_factor' : 3};

CREATE TABLE IF NOT EXISTS tweets.tweet (
    id BIGINT,
    created_at TEXT,
    "text" TEXT,
    retweet_count INT,
    favorite_count INT,
    user TEXT,
    lang TEXT,
    hashtags LIST<TEXT>,

    PRIMARY KEY(id)
);