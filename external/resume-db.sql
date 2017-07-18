-- SQL Manager Lite for PostgreSQL 5.9.1.49393
-- ---------------------------------------
-- Host      : localhost
-- Database  : resume
-- Version   : PostgreSQL 9.6.3, compiled by Visual C++ build 1800, 64-bit



SET check_function_bodies = false;
--
-- Structure for table profile (OID = 16395) : 
--
SET search_path = public, pg_catalog;
CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid varchar(100) NOT NULL,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    birth_day date,
    phone varchar(20) DEFAULT NULL::character varying,
    email varchar(100) DEFAULT NULL::character varying,
    country varchar(60) DEFAULT NULL::character varying,
    city varchar(100) DEFAULT NULL::character varying,
    objective text,
    summary text,
    large_photo varchar(255) DEFAULT NULL::character varying,
    small_photo varchar(255) DEFAULT NULL::character varying,
    info text,
    password varchar(255) NOT NULL,
    completed boolean NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    skype varchar(80) DEFAULT NULL::character varying,
    vkontakte varchar(255) DEFAULT NULL::character varying,
    facebook varchar(255) DEFAULT NULL::character varying,
    linkedin varchar(255) DEFAULT NULL::character varying,
    github varchar(255) DEFAULT NULL::character varying,
    stackoverflow varchar(255) DEFAULT NULL::character varying
)
WITH (oids = false);
--
-- Structure for table certificate (OID = 16422) : 
--
CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(50) NOT NULL,
    large_url varchar(255) NOT NULL,
    small_url varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Structure for table course (OID = 16435) : 
--
CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(60) NOT NULL,
    school varchar(60) NOT NULL,
    finish_date date
)
WITH (oids = false);
--
-- Structure for table education (OID = 16445) : 
--
CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary varchar(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculty varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Structure for table hobby (OID = 16458) : 
--
CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(30) NOT NULL
)
WITH (oids = false);
--
-- Structure for table language (OID = 16468) : 
--
CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name varchar(30) NOT NULL,
    level varchar(18) NOT NULL,
    type varchar(7) NOT NULL
)
WITH (oids = false);
--
-- Structure for table practic (OID = 16483) : 
--
CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" varchar(100) NOT NULL,
    company varchar(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilitied text NOT NULL,
    demo varchar(255) DEFAULT NULL::character varying,
    src varchar(255) DEFAULT NULL::character varying
)
WITH (oids = false);
--
-- Structure for table skill (OID = 16498) : 
--
CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category varchar(50) NOT NULL,
    value text NOT NULL
)
WITH (oids = false);
--
-- Structure for table profile_restore (OID = 16511) : 
--
CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token varchar(255) NOT NULL
)
WITH (oids = false);
--
-- Structure for table skill_category (OID = 16523) : 
--
CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category varchar(50) NOT NULL
)
WITH (oids = false);
--
-- Definition for sequence certificate_seq (OID = 16530) : 
--
CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence course_seq (OID = 16532) : 
--
CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence education_seq (OID = 16534) : 
--
CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence hobby_seq (OID = 16536) : 
--
CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence language_seq (OID = 16538) : 
--
CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence practic_seq (OID = 16540) : 
--
CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence profile_seq (OID = 16543) : 
--
CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for sequence skill_seq (OID = 16545) : 
--
CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;
--
-- Definition for index profile_pkey (OID = 16414) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_uid_key (OID = 16416) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_uid_key
    UNIQUE (uid);
--
-- Definition for index profile_phone_key (OID = 16418) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_phone_key
    UNIQUE (phone);
--
-- Definition for index profile_email_key (OID = 16420) : 
--
ALTER TABLE ONLY profile
    ADD CONSTRAINT profile_email_key
    UNIQUE (email);
--
-- Definition for index certificate_pkey (OID = 16428) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_pkey
    PRIMARY KEY (id);
--
-- Definition for index certificate_fk (OID = 16430) : 
--
ALTER TABLE ONLY certificate
    ADD CONSTRAINT certificate_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index course_pkey (OID = 16438) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_pkey
    PRIMARY KEY (id);
--
-- Definition for index course_fk (OID = 16440) : 
--
ALTER TABLE ONLY course
    ADD CONSTRAINT course_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index education_pkey (OID = 16451) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_pkey
    PRIMARY KEY (id);
--
-- Definition for index education_fk (OID = 16453) : 
--
ALTER TABLE ONLY education
    ADD CONSTRAINT education_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index hobby_pkey (OID = 16461) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_pkey
    PRIMARY KEY (id);
--
-- Definition for index hobby_fk (OID = 16463) : 
--
ALTER TABLE ONLY hobby
    ADD CONSTRAINT hobby_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index language_pkey (OID = 16471) : 
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_pkey
    PRIMARY KEY (id);
--
-- Definition for index language_fk (OID = 16478) : 
--
ALTER TABLE ONLY language
    ADD CONSTRAINT language_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index practic_pkey (OID = 16491) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_pkey
    PRIMARY KEY (id);
--
-- Definition for index practic_fk (OID = 16493) : 
--
ALTER TABLE ONLY practic
    ADD CONSTRAINT practic_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_pkey (OID = 16504) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_fk (OID = 16506) : 
--
ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_fk
    FOREIGN KEY (id_profile) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index profile_restore_pkey (OID = 16514) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_pkey
    PRIMARY KEY (id);
--
-- Definition for index profile_restore_token_key (OID = 16516) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_token_key
    UNIQUE (token);
--
-- Definition for index profile_restore_fk (OID = 16518) : 
--
ALTER TABLE ONLY profile_restore
    ADD CONSTRAINT profile_restore_fk
    FOREIGN KEY (id) REFERENCES profile(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
-- Definition for index skill_category_pkey (OID = 16526) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_pkey
    PRIMARY KEY (id);
--
-- Definition for index skill_category_category_key (OID = 16528) : 
--
ALTER TABLE ONLY skill_category
    ADD CONSTRAINT skill_category_category_key
    UNIQUE (category);
--
-- Comments
--
COMMENT ON SCHEMA public IS 'standard public schema';
