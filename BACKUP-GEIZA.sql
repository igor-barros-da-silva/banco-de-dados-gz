toc.dat                                                                                             0000600 0004000 0002000 00000005577 15012703076 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP   :                    }            visualspa-igor-db    17.3    17.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false         �           1262    16399    visualspa-igor-db    DATABASE     y   CREATE DATABASE "visualspa-igor-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
 #   DROP DATABASE "visualspa-igor-db";
                     postgres    false         �            1259    16400    hospede    TABLE     �   CREATE TABLE public.hospede (
    nome character varying(25) NOT NULL,
    genero character varying(1),
    biotipo character varying(1),
    altura numeric(5,2)
);
    DROP TABLE public.hospede;
       public         heap r       postgres    false         �            1259    16405    quarto    TABLE     �   CREATE TABLE public.quarto (
    nome character varying(25) NOT NULL,
    quarto integer NOT NULL,
    chegada date NOT NULL,
    saida date NOT NULL,
    desconto numeric(5,2)
);
    DROP TABLE public.quarto;
       public         heap r       postgres    false         �          0    16400    hospede 
   TABLE DATA           @   COPY public.hospede (nome, genero, biotipo, altura) FROM stdin;
    public               postgres    false    217       4794.dat �          0    16405    quarto 
   TABLE DATA           H   COPY public.quarto (nome, quarto, chegada, saida, desconto) FROM stdin;
    public               postgres    false    218       4795.dat %           2606    16404    hospede hospede_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT hospede_pkey PRIMARY KEY (nome);
 >   ALTER TABLE ONLY public.hospede DROP CONSTRAINT hospede_pkey;
       public                 postgres    false    217         '           2606    16409    quarto quarto_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (nome, quarto);
 <   ALTER TABLE ONLY public.quarto DROP CONSTRAINT quarto_pkey;
       public                 postgres    false    218    218         (           2606    16412    quarto fkquarto    FK CONSTRAINT     �   ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT fkquarto FOREIGN KEY (nome) REFERENCES public.hospede(nome) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.quarto DROP CONSTRAINT fkquarto;
       public               postgres    false    218    217    4645                                                                                                                                         4794.dat                                                                                            0000600 0004000 0002000 00000000146 15012703076 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        MIGUEL	M	M	1.67
JOSIEL	M	M	1.72
RAQUEL	F	G	1.65
LUCIANA	F	G	1.80
JOANA	F	M	1.65
EMANUEL	M	M	1.78
\.


                                                                                                                                                                                                                                                                                                                                                                                                                          4795.dat                                                                                            0000600 0004000 0002000 00000000005 15012703076 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000006070 15012703076 0015370 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.3
-- Dumped by pg_dump version 17.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "visualspa-igor-db";
--
-- Name: visualspa-igor-db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "visualspa-igor-db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';


ALTER DATABASE "visualspa-igor-db" OWNER TO postgres;

\encoding SQL_ASCII
\connect -reuse-previous=on "dbname='visualspa-igor-db'"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: hospede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hospede (
    nome character varying(25) NOT NULL,
    genero character varying(1),
    biotipo character varying(1),
    altura numeric(5,2)
);


ALTER TABLE public.hospede OWNER TO postgres;

--
-- Name: quarto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quarto (
    nome character varying(25) NOT NULL,
    quarto integer NOT NULL,
    chegada date NOT NULL,
    saida date NOT NULL,
    desconto numeric(5,2)
);


ALTER TABLE public.quarto OWNER TO postgres;

--
-- Data for Name: hospede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hospede (nome, genero, biotipo, altura) FROM stdin;
\.
COPY public.hospede (nome, genero, biotipo, altura) FROM '$$PATH$$/4794.dat';

--
-- Data for Name: quarto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quarto (nome, quarto, chegada, saida, desconto) FROM stdin;
\.
COPY public.quarto (nome, quarto, chegada, saida, desconto) FROM '$$PATH$$/4795.dat';

--
-- Name: hospede hospede_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hospede
    ADD CONSTRAINT hospede_pkey PRIMARY KEY (nome);


--
-- Name: quarto quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (nome, quarto);


--
-- Name: quarto fkquarto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT fkquarto FOREIGN KEY (nome) REFERENCES public.hospede(nome) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        