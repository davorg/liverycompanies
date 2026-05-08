CREATE TABLE livery_hall (
  id             INTEGER PRIMARY KEY,

  hall_name      TEXT NOT NULL,
  company_name   TEXT NOT NULL,
  slug           TEXT NOT NULL UNIQUE,

  longitude      REAL NOT NULL,
  latitude       REAL NOT NULL,

  created_at     TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at     TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
