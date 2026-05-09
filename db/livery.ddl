CREATE TABLE livery_hall (
  id             INTEGER PRIMARY KEY,

  hall_name      TEXT NOT NULL,
  company_name   TEXT NOT NULL,
  slug           TEXT NOT NULL UNIQUE,

  address        TEXT,

  longitude      REAL NOT NULL,
  latitude       REAL NOT NULL,

  created_at     TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at     TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE photo (
  id              INTEGER PRIMARY KEY,

  livery_hall_id  INTEGER NOT NULL,

  filename        TEXT NOT NULL,
  caption         TEXT,

  created_at      TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at      TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,

  UNIQUE(livery_hall_id, filename),

  FOREIGN KEY (livery_hall_id)
    REFERENCES livery_hall(id)
);
