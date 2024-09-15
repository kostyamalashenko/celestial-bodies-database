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
    diameter numeric(30,2),
    mass numeric(30,2) NOT NULL,
    orbit_period numeric(30,2),
    distance_from_sun numeric(30,2)
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
    description text,
    spiral_galaxy boolean NOT NULL,
    discovered_year integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric(30,2) NOT NULL,
    mass numeric(30,2) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planets integer NOT NULL,
    distance_from_earth numeric(10,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940.00, 940000000000000000000.00, 1680.00, 277000000.00);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525.00, 259000000000000000000.00, 1320.00, 236000000.00);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512.00, 216000000000000000000.00, 1680.00, 277000000.00);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 430.00, 87000000000000000000.00, 1230.00, 314000000.00);
INSERT INTO public.asteroid VALUES (5, 'Eros', 16.00, 6700000000000000.00, 1.76, 18500000.00);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Galaxy than includes Solar System', true, 1920);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'The Andromeda Galaxy is the closest spiral galaxy to the Milky Way.', true, 9610);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'The Triangulum Galaxy is a member of the Local Group of galaxies.', true, 1784);
INSERT INTO public.galaxy VALUES (4, 'NGC 1300', 'NGC 1300 is a barred spiral galaxy located in the constellation Eridanus.', true, 1834);
INSERT INTO public.galaxy VALUES (5, 'NGC 224', 'NGC 224 is another name for the Andromeda Galaxy, noted for its large size.', true, 1847);
INSERT INTO public.galaxy VALUES (6, 'NGC 4889', 'NGC 4889 is a giant elliptical galaxy in the Coma Cluster.', false, 1785);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474.20, 73477000000000000000000.00, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22.40, 10659000000000000.00, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 12.40, 1476200000000000.00, 4);
INSERT INTO public.moon VALUES (4, 'Io', 3643.20, 41990000000000000000000.00, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 3121.60, 47998000000000000000000.00, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268.20, 148190000000000000000000.00, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821.60, 107590000000000000000000.00, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 5150.00, 134520000000000000000000.00, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 1527.60, 52000000000000000000.00, 6);
INSERT INTO public.moon VALUES (10, 'Iapetus', 1469.00, 46000000000000000000.00, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 2706.00, 21400000000000000000000.00, 8);
INSERT INTO public.moon VALUES (12, 'Nereid', 340.00, 32000000000000000000.00, 8);
INSERT INTO public.moon VALUES (13, 'Proteus', 418.00, 42000000000000000000.00, 8);
INSERT INTO public.moon VALUES (14, 'Miranda', 471.60, 66000000000000000000.00, 7);
INSERT INTO public.moon VALUES (15, 'Ariel', 1167.60, 135000000000000000000.00, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 1169.00, 117000000000000000000.00, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 1577.60, 350000000000000000000.00, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 1522.80, 300000000000000000000.00, 7);
INSERT INTO public.moon VALUES (19, 'Charon', 1212.00, 1520000000000000000000.00, 9);
INSERT INTO public.moon VALUES (20, 'Ceres', 940.00, 940000000000000000000.00, 10);
INSERT INTO public.moon VALUES (21, 'Haumea', 816.00, 4200000000000000000000.00, 11);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.00, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.00, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 0.00, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0.00, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 0.00, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 0.01, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 0.02, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 0.03, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4.24, true, 2);
INSERT INTO public.planet VALUES (10, 'Alpha Centauri Bb', 4.37, false, 6);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 500.00, true, 3);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 20.30, true, 2);
INSERT INTO public.planet VALUES (13, 'Kepler-452b', 1400.00, false, 3);
INSERT INTO public.planet VALUES (14, 'HD 209458 b', 150.00, false, 6);
INSERT INTO public.planet VALUES (15, '55 Cancri e', 41.00, false, 6);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1d', 39.00, true, 2);
INSERT INTO public.planet VALUES (17, 'LHS 1140 b', 49.00, true, 2);
INSERT INTO public.planet VALUES (18, 'GJ 667 Cc', 23.00, true, 6);
INSERT INTO public.planet VALUES (19, 'HD 85512 b', 36.00, false, 6);
INSERT INTO public.planet VALUES (20, 'Tau Ceti e', 11.90, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, 0.00, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 8.60, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 3, 4.24, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 2, 642.50, 1);
INSERT INTO public.star VALUES (5, 'Vega', 1, 25.04, 1);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 2, 4.37, 1);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 5, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 21, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 20, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
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

