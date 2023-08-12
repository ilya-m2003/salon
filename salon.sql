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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_appointment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_appointment_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_appointment_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    phone character varying,
    name character varying
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_service_id_seq OWNER TO freecodecamp;

--
-- Name: services_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_service_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_appointment_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_service_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, 7, 1, '10^30');
INSERT INTO public.appointments VALUES (2, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (67, 7, 2, '11am');
INSERT INTO public.appointments VALUES (9, 18, 1, '10:30');
INSERT INTO public.appointments VALUES (10, 19, 1, '4');
INSERT INTO public.appointments VALUES (176, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (74, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (317, 7, 1, '10^30');
INSERT INTO public.appointments VALUES (16, 24, 1, '10:30');
INSERT INTO public.appointments VALUES (387, 327, 1, '16:00');
INSERT INTO public.appointments VALUES (183, 160, 3, '6');
INSERT INTO public.appointments VALUES (324, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (394, 7, 2, 'am');
INSERT INTO public.appointments VALUES (27, 33, 1, '12:00');
INSERT INTO public.appointments VALUES (331, 283, 1, '10:00');
INSERT INTO public.appointments VALUES (332, 284, 1, '11:00');
INSERT INTO public.appointments VALUES (266, 7, 2, '11am');
INSERT INTO public.appointments VALUES (39, 43, 1, '10:00');
INSERT INTO public.appointments VALUES (46, 3, 3, '2');
INSERT INTO public.appointments VALUES (47, 49, 2, '6');
INSERT INTO public.appointments VALUES (273, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (133, 7, 3, '10:30');
INSERT INTO public.appointments VALUES (134, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (345, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (346, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (60, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (353, 300, 4, '10:20');
INSERT INTO public.appointments VALUES (147, 7, 1, '');
INSERT INTO public.appointments VALUES (148, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (220, 7, 4, '10:30');
INSERT INTO public.appointments VALUES (155, 139, 1, '11:11');
INSERT INTO public.appointments VALUES (292, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (162, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (163, 7, 1, '10:30');
INSERT INTO public.appointments VALUES (366, 7, 2, '11a,');
INSERT INTO public.appointments VALUES (367, 7, 2, '11am');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES (1, '381005', 'feda');
INSERT INTO public.customers VALUES (3, '1', '555-5555');
INSERT INTO public.customers VALUES (7, '555-555-5555', 'Fabio');
INSERT INTO public.customers VALUES (283, '381-005', 'Н');
INSERT INTO public.customers VALUES (284, '2349872459', 'Y');
INSERT INTO public.customers VALUES (18, '55-55', 'F');
INSERT INTO public.customers VALUES (19, '2', '3');
INSERT INTO public.customers VALUES (24, '555-555', 'ш');
INSERT INTO public.customers VALUES (33, '666-666', 'Ura');
INSERT INTO public.customers VALUES (300, '345', 'NAME');
INSERT INTO public.customers VALUES (43, '3811005', 'f');
INSERT INTO public.customers VALUES (49, '555-55', '1');
INSERT INTO public.customers VALUES (139, '11', '111');
INSERT INTO public.customers VALUES (327, '888-88', 'GQ');
INSERT INTO public.customers VALUES (160, '4', '5');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'first_service');
INSERT INTO public.services VALUES (2, 'second_service');
INSERT INTO public.services VALUES (3, 'third_service');
INSERT INTO public.services VALUES (4, 'cut');


--
-- Name: appointments_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_appointment_id_seq', 406, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 342, true);


--
-- Name: services_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_service_id_seq', 1, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments fk_appointments_customers; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk_appointments_customers FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments fk_appointments_service; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT fk_appointments_service FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

