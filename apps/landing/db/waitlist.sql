-- Waitlist storage for the landing page.
-- Run once against the database in WAITLIST_DATABASE_URL:
--   psql "$WAITLIST_DATABASE_URL" -f db/waitlist.sql
create table if not exists waitlist (
  id bigserial primary key,
  email text not null unique,
  created_at timestamptz not null default now()
);
