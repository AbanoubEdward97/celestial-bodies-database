--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteroid_belt; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_belt (
    asteroid_belt_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius_in_km numeric
);


ALTER TABLE public.asteroid_belt OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types text NOT NULL,
    has_life boolean,
    age_in_billions_of_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_radius_in_km integer,
    mass_in_kg numeric,
    planet_id integer,
    distance_from_planet integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    radius_in_km integer,
    is_gaseous boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    radius_in_million_km numeric,
    distance_to_earth numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid_belt; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_belt VALUES (1, 'vesta', 262.7);
INSERT INTO public.asteroid_belt VALUES (2, 'pallas', 263.7);
INSERT INTO public.asteroid_belt VALUES (3, 'hygeia', 264.7);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'spiral', true, 10.01);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'irregular', false, 215);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A.', 'elliptical', false, 10);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Clouds.', 'irregular', false, 1.101);
INSERT INTO public.galaxy VALUES (5, 'Milky way', 'spiral', true, 13.61);
INSERT INTO public.galaxy VALUES (6, 'Virgo A.', 'mixture', false, 13.24);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1737, 73490000000000000000000, 3, 384400);
INSERT INTO public.moon VALUES (2, 'Phobos', 10, 1080000000000000, 4, 9380);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 1800000000000000, 4, 23460);
INSERT INTO public.moon VALUES (4, 'Ganymede', 2631, 148000000000000000000000, 6, 1070000);
INSERT INTO public.moon VALUES (5, 'Callisto', 2400, 108000000000000000000000, 6, 1880000);
INSERT INTO public.moon VALUES (6, 'LO', 1815, 89400000000000000000000, 6, 421600000);
INSERT INTO public.moon VALUES (7, 'Europa', 1569, 48000000000000000000000, 6, 670900);
INSERT INTO public.moon VALUES (8, 'Amalthea', 135, 7170000000000000000, 6, 181300);
INSERT INTO public.moon VALUES (9, 'Himalia', 38, 777000000000000000, 6, 11737000);
INSERT INTO public.moon VALUES (10, 'Thebe', 39, 7770000000000000000, 6, 11737001);
INSERT INTO public.moon VALUES (11, 'Elara', 40, 77700000000000000000, 6, 11737002);
INSERT INTO public.moon VALUES (12, 'Pasiphae', 41, 777000000000000000000, 6, 11737003);
INSERT INTO public.moon VALUES (13, 'Metis', 42, 7770000000000000000000, 6, 11737004);
INSERT INTO public.moon VALUES (14, 'Carme', 43, 77700000000000000000000, 6, 11737005);
INSERT INTO public.moon VALUES (15, 'Titan', 44, 777000000000000000000000, 7, 11737006);
INSERT INTO public.moon VALUES (16, 'Oberon', 45, 7770000000000000000000000, 8, 11737007);
INSERT INTO public.moon VALUES (17, 'Ariel', 46, 77700000000000000000000000, 8, 11737008);
INSERT INTO public.moon VALUES (18, 'Triton', 47, 777000000000000000000000000, 9, 11737009);
INSERT INTO public.moon VALUES (19, 'Galatea', 48, 7770000000000000000000000000, 9, 11737010);
INSERT INTO public.moon VALUES (20, 'Halimede', 49, 77700000000000000000000000000, 9, 11737011);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 2440, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 6052, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 6371, false);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 3390, false);
INSERT INTO public.planet VALUES (5, 'ceres', 1, 473, false);
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, 69911, true);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, 58232, true);
INSERT INTO public.planet VALUES (8, 'Uranus', 1, 25362, true);
INSERT INTO public.planet VALUES (9, 'Neptune', 1, 24622, true);
INSERT INTO public.planet VALUES (10, 'Pluto', 1, 1188, true);
INSERT INTO public.planet VALUES (11, 'Makemake', 1, 715, true);
INSERT INTO public.planet VALUES (12, 'Eris', 1, 1163, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 5, 0.69634, 0.00001581);
INSERT INTO public.star VALUES (2, 'Sirius', 5, 1.2, 8.611);
INSERT INTO public.star VALUES (3, 'Canopus', 5, 49.395, 309.8);
INSERT INTO public.star VALUES (4, 'Arcturus', 5, 17.671, 36.66);
INSERT INTO public.star VALUES (5, 'Vega', 5, 1.6432, 25.05);
INSERT INTO public.star VALUES (6, 'Rigel', 5, 54.89, 864.3);


--
-- Name: asteroid_belt asteroid_belt_asteroid_belt_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_asteroid_belt_id_key UNIQUE (asteroid_belt_id);


--
-- Name: asteroid_belt asteroid_belt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_name_key UNIQUE (name);


--
-- Name: asteroid_belt asteroid_belt_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_pkey PRIMARY KEY (asteroid_belt_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

