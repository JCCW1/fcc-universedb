--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    speed_in_kmh numeric(1000,2),
    colour character varying(30),
    dangerous boolean,
    galaxy_id integer,
    kills_dinosaurs boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    size_in_lightyears integer,
    rotational_speed numeric(1000,2),
    likes_horses boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    radius_in_km integer,
    colour character varying(30),
    has_life boolean,
    galaxy_id integer,
    popular_holiday_destination boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    radius_in_km integer,
    colour character varying(30),
    has_moon boolean,
    has_life boolean,
    galaxy_id integer,
    is_fucked boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    radius_in_km integer,
    colour character varying(30),
    galaxy_id integer,
    has_agent boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Kevin', 'The slayer', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (2, 'Michael', 'The bumpy', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (3, 'Simon', 'The large', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Big bastard', 15000, 100.34, NULL);
INSERT INTO public.galaxy VALUES (2, 'Circinus', 'Huge big one', 35000, 1000.34, NULL);
INSERT INTO public.galaxy VALUES (3, 'Mouse', 'Very small', 30, 40.34, NULL);
INSERT INTO public.galaxy VALUES (4, 'Tadpole', 'Enormous', 700000, 4099.34, NULL);
INSERT INTO public.galaxy VALUES (5, 'CNUT69', 'Naughty', 9000, 409.34, NULL);
INSERT INTO public.galaxy VALUES (6, 'Wassock8976', 'Melon', 5060, 567.45, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Chiron', 'Ugly', 67, 'Mauve', false, 1, false, 3);
INSERT INTO public.moon VALUES (5, 'Plate', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (6, '42', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (7, '43', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (8, '44', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (9, '45', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (10, '46', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (11, '47', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (12, '48', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (13, '49', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (14, '50', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (15, '51', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (16, '52', 'Massive', 67, 'Mauve', false, 1, NULL, 2);
INSERT INTO public.moon VALUES (17, '53', 'Massive', 67, 'Mauve', false, 1, NULL, 4);
INSERT INTO public.moon VALUES (18, '54', 'Massive', 67, 'Mauve', false, 1, NULL, 4);
INSERT INTO public.moon VALUES (19, '55', 'Massive', 67, 'Mauve', false, 1, NULL, 4);
INSERT INTO public.moon VALUES (20, '56', 'Massive', 67, 'Mauve', false, 1, NULL, 3);
INSERT INTO public.moon VALUES (21, '57', 'Massive', 67, 'Mauve', false, 1, NULL, 3);
INSERT INTO public.moon VALUES (22, '58', 'Massive', 67, 'Mauve', false, 1, NULL, 3);
INSERT INTO public.moon VALUES (23, '59', 'Massive', 67, 'Mauve', false, 1, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Boring', 1200, 'Grey', false, false, 1, false, 1);
INSERT INTO public.planet VALUES (3, 'Venos', 'Radiant', 3000, 'Yellow', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Earth', 'Radiant', 3000, 'Yellow', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Mars', 'Very Red', 3000, 'Red', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Big', 300000, 'Multi', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Bigger', 3000000, 'Dusty', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Wet and cold', 30, 'Blue', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (2, 'Pluto', 'Wet and cold', 30, 'Blue', false, false, 1, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Chicken', 'Massive', 67, 'Mauve', false, false, 3, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Bicycle', 'Massive', 67, 'Mauve', false, false, 3, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Scratch', 'Itchy', 67, 'Mauve', false, false, 3, NULL, 2);
INSERT INTO public.planet VALUES (13, 'Titan', 'Itchy', 67, 'Mauve', false, false, 3, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Gerbil', 'Massive', 67, 'Mauve', false, false, 3, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Fairy Light4', 'Twinkle', 5060, 'Greenish', 4, NULL);
INSERT INTO public.star VALUES (2, 'Bob', 'Very hot', 10000, 'Blueish', 2, NULL);
INSERT INTO public.star VALUES (3, 'Majestic', 'Ice cold', 10000, 'Black', 5, NULL);
INSERT INTO public.star VALUES (4, 'Sigfried', 'Tempremantal', 1, 'Purple', 5, NULL);
INSERT INTO public.star VALUES (5, 'TB11', 'Contagious', 1, 'Puce', 6, NULL);
INSERT INTO public.star VALUES (6, 'Graham Norton 5', 'Bizarre', 14, 'Yuck', 6, NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid asteroid_kills_dinosaurs_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_kills_dinosaurs_key UNIQUE (kills_dinosaurs);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_likes_horses_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_likes_horses_key UNIQUE (likes_horses);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_popular_holiday_destination_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_popular_holiday_destination_key UNIQUE (popular_holiday_destination);


--
-- Name: planet planet_is_fucked_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_is_fucked_key UNIQUE (is_fucked);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_has_agent_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_has_agent_key UNIQUE (has_agent);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: asteroid fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

