CREATE TABLE IF NOT EXISTS public.users
(
    id           serial primary key,
    email        VARCHAR(40) not null,
    first_name   VARCHAR(40) not null,
    last_name    VARCHAR(40) not null
);
