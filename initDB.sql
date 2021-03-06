PGDMP         +                z            NewDatabase    14.1 (Debian 14.1-1.pgdg110+1)    14.1 '    -           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            .           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            /           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            0           1262    81920    NewDatabase    DATABASE     a   CREATE DATABASE "NewDatabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE "NewDatabase";
                postgres    false            ?            1259    90271 	   companies    TABLE     ?   CREATE TABLE public.companies (
    id smallint NOT NULL,
    name_company character varying(50) NOT NULL,
    addres_company character varying(50)
);
    DROP TABLE public.companies;
       public         heap    postgres    false            ?            1259    90276 	   customers    TABLE     l   CREATE TABLE public.customers (
    id smallint NOT NULL,
    name_cstmer character varying(50) NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            ?            1259    90256 	   developer    TABLE     ?   CREATE TABLE public.developer (
    id smallint NOT NULL,
    first_name character varying(50) NOT NULL,
    second_name character varying(50) NOT NULL,
    skills character varying(255) NOT NULL
);
    DROP TABLE public.developer;
       public         heap    postgres    false            ?            1259    90313    mtm_companies_developers    TABLE        CREATE TABLE public.mtm_companies_developers (
    mtm_id_company smallint NOT NULL,
    mtm_id_developer smallint NOT NULL
);
 ,   DROP TABLE public.mtm_companies_developers;
       public         heap    postgres    false            ?            1259    90326    mtm_companies_projects    TABLE     |   CREATE TABLE public.mtm_companies_projects (
    mtm_id_company smallint NOT NULL,
    mtm_id_projects smallint NOT NULL
);
 *   DROP TABLE public.mtm_companies_projects;
       public         heap    postgres    false            ?            1259    90339    mtm_customer_projects    TABLE     |   CREATE TABLE public.mtm_customer_projects (
    mtm_customer_id smallint NOT NULL,
    mtm_projects_id smallint NOT NULL
);
 )   DROP TABLE public.mtm_customer_projects;
       public         heap    postgres    false            ?            1259    90284    mtm_developers_skills    TABLE     {   CREATE TABLE public.mtm_developers_skills (
    mtm_id_developer smallint NOT NULL,
    mtm_id_skills smallint NOT NULL
);
 )   DROP TABLE public.mtm_developers_skills;
       public         heap    postgres    false            ?            1259    90300    mtm_project_developers    TABLE     }   CREATE TABLE public.mtm_project_developers (
    mtm_id_project smallint NOT NULL,
    mtm_id_developer smallint NOT NULL
);
 *   DROP TABLE public.mtm_project_developers;
       public         heap    postgres    false            ?            1259    90266    projects    TABLE     ?   CREATE TABLE public.projects (
    id smallint NOT NULL,
    name_project character varying(50) NOT NULL,
    descryption character varying(255)
);
    DROP TABLE public.projects;
       public         heap    postgres    false            ?            1259    90261    skills    TABLE     c   CREATE TABLE public.skills (
    id smallint NOT NULL,
    skill character varying(50) NOT NULL
);
    DROP TABLE public.skills;
       public         heap    postgres    false            $          0    90271 	   companies 
   TABLE DATA           E   COPY public.companies (id, name_company, addres_company) FROM stdin;
    public          postgres    false    212   i1       %          0    90276 	   customers 
   TABLE DATA           4   COPY public.customers (id, name_cstmer) FROM stdin;
    public          postgres    false    213   ?1       !          0    90256 	   developer 
   TABLE DATA           H   COPY public.developer (id, first_name, second_name, skills) FROM stdin;
    public          postgres    false    209   ?1       (          0    90313    mtm_companies_developers 
   TABLE DATA           T   COPY public.mtm_companies_developers (mtm_id_company, mtm_id_developer) FROM stdin;
    public          postgres    false    216   ?1       )          0    90326    mtm_companies_projects 
   TABLE DATA           Q   COPY public.mtm_companies_projects (mtm_id_company, mtm_id_projects) FROM stdin;
    public          postgres    false    217   ?1       *          0    90339    mtm_customer_projects 
   TABLE DATA           Q   COPY public.mtm_customer_projects (mtm_customer_id, mtm_projects_id) FROM stdin;
    public          postgres    false    218   ?1       &          0    90284    mtm_developers_skills 
   TABLE DATA           P   COPY public.mtm_developers_skills (mtm_id_developer, mtm_id_skills) FROM stdin;
    public          postgres    false    214   2       '          0    90300    mtm_project_developers 
   TABLE DATA           R   COPY public.mtm_project_developers (mtm_id_project, mtm_id_developer) FROM stdin;
    public          postgres    false    215   42       #          0    90266    projects 
   TABLE DATA           A   COPY public.projects (id, name_project, descryption) FROM stdin;
    public          postgres    false    211   Q2       "          0    90261    skills 
   TABLE DATA           +   COPY public.skills (id, skill) FROM stdin;
    public          postgres    false    210   n2       ?           2606    90275    companies companies_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.companies DROP CONSTRAINT companies_pkey;
       public            postgres    false    212            ?           2606    90280    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    213            ?           2606    90260    developer developer_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.developer
    ADD CONSTRAINT developer_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.developer DROP CONSTRAINT developer_pkey;
       public            postgres    false    209            ?           2606    90270    projects projects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.projects DROP CONSTRAINT projects_pkey;
       public            postgres    false    211            ?           2606    90265    skills skills_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.skills DROP CONSTRAINT skills_pkey;
       public            postgres    false    210            ?           2606    90316 E   mtm_companies_developers mtm_companies_developers_mtm_id_company_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_companies_developers
    ADD CONSTRAINT mtm_companies_developers_mtm_id_company_fkey FOREIGN KEY (mtm_id_company) REFERENCES public.companies(id);
 o   ALTER TABLE ONLY public.mtm_companies_developers DROP CONSTRAINT mtm_companies_developers_mtm_id_company_fkey;
       public          postgres    false    3209    212    216            ?           2606    90321 G   mtm_companies_developers mtm_companies_developers_mtm_id_developer_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_companies_developers
    ADD CONSTRAINT mtm_companies_developers_mtm_id_developer_fkey FOREIGN KEY (mtm_id_developer) REFERENCES public.developer(id);
 q   ALTER TABLE ONLY public.mtm_companies_developers DROP CONSTRAINT mtm_companies_developers_mtm_id_developer_fkey;
       public          postgres    false    216    3203    209            ?           2606    90329 A   mtm_companies_projects mtm_companies_projects_mtm_id_company_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_companies_projects
    ADD CONSTRAINT mtm_companies_projects_mtm_id_company_fkey FOREIGN KEY (mtm_id_company) REFERENCES public.companies(id);
 k   ALTER TABLE ONLY public.mtm_companies_projects DROP CONSTRAINT mtm_companies_projects_mtm_id_company_fkey;
       public          postgres    false    212    217    3209            ?           2606    90334 B   mtm_companies_projects mtm_companies_projects_mtm_id_projects_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_companies_projects
    ADD CONSTRAINT mtm_companies_projects_mtm_id_projects_fkey FOREIGN KEY (mtm_id_projects) REFERENCES public.projects(id);
 l   ALTER TABLE ONLY public.mtm_companies_projects DROP CONSTRAINT mtm_companies_projects_mtm_id_projects_fkey;
       public          postgres    false    217    211    3207            ?           2606    90342 @   mtm_customer_projects mtm_customer_projects_mtm_customer_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_customer_projects
    ADD CONSTRAINT mtm_customer_projects_mtm_customer_id_fkey FOREIGN KEY (mtm_customer_id) REFERENCES public.customers(id);
 j   ALTER TABLE ONLY public.mtm_customer_projects DROP CONSTRAINT mtm_customer_projects_mtm_customer_id_fkey;
       public          postgres    false    218    3211    213            ?           2606    90347 @   mtm_customer_projects mtm_customer_projects_mtm_projects_id_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_customer_projects
    ADD CONSTRAINT mtm_customer_projects_mtm_projects_id_fkey FOREIGN KEY (mtm_projects_id) REFERENCES public.projects(id);
 j   ALTER TABLE ONLY public.mtm_customer_projects DROP CONSTRAINT mtm_customer_projects_mtm_projects_id_fkey;
       public          postgres    false    211    218    3207            ?           2606    90287 A   mtm_developers_skills mtm_developers_skills_mtm_id_developer_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_developers_skills
    ADD CONSTRAINT mtm_developers_skills_mtm_id_developer_fkey FOREIGN KEY (mtm_id_developer) REFERENCES public.developer(id);
 k   ALTER TABLE ONLY public.mtm_developers_skills DROP CONSTRAINT mtm_developers_skills_mtm_id_developer_fkey;
       public          postgres    false    209    3203    214            ?           2606    90292 >   mtm_developers_skills mtm_developers_skills_mtm_id_skills_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_developers_skills
    ADD CONSTRAINT mtm_developers_skills_mtm_id_skills_fkey FOREIGN KEY (mtm_id_skills) REFERENCES public.skills(id);
 h   ALTER TABLE ONLY public.mtm_developers_skills DROP CONSTRAINT mtm_developers_skills_mtm_id_skills_fkey;
       public          postgres    false    3205    214    210            ?           2606    90303 C   mtm_project_developers mtm_project_developers_mtm_id_developer_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_project_developers
    ADD CONSTRAINT mtm_project_developers_mtm_id_developer_fkey FOREIGN KEY (mtm_id_developer) REFERENCES public.developer(id);
 m   ALTER TABLE ONLY public.mtm_project_developers DROP CONSTRAINT mtm_project_developers_mtm_id_developer_fkey;
       public          postgres    false    209    215    3203            ?           2606    90308 A   mtm_project_developers mtm_project_developers_mtm_id_project_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.mtm_project_developers
    ADD CONSTRAINT mtm_project_developers_mtm_id_project_fkey FOREIGN KEY (mtm_id_project) REFERENCES public.projects(id);
 k   ALTER TABLE ONLY public.mtm_project_developers DROP CONSTRAINT mtm_project_developers_mtm_id_project_fkey;
       public          postgres    false    211    215    3207            $      x?????? ? ?      %      x?????? ? ?      !      x?????? ? ?      (      x?????? ? ?      )      x?????? ? ?      *      x?????? ? ?      &      x?????? ? ?      '      x?????? ? ?      #      x?????? ? ?      "      x?????? ? ?     