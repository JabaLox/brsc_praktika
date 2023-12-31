PGDMP                      {            todolist    15.5 (Debian 15.5-0+deb12u1)    16.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    32859    todolist    DATABASE     t   CREATE DATABASE todolist WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE todolist;
                postgres    false                        0    0    DATABASE todolist    ACL     (   GRANT ALL ON DATABASE todolist TO jaba;
                   postgres    false    3359                        2615    32860 	   TodoShema    SCHEMA        CREATE SCHEMA "TodoShema";
    DROP SCHEMA "TodoShema";
                jaba    false            �            1259    32868    Task    TABLE     �   CREATE TABLE "TodoShema"."Task" (
    "Id" bigint NOT NULL,
    "UserId" bigint NOT NULL,
    "Description" text NOT NULL,
    "Timeframe" timestamp without time zone NOT NULL,
    "Priority" text NOT NULL,
    "Done" boolean NOT NULL
);
    DROP TABLE "TodoShema"."Task";
    	   TodoShema         heap    jaba    false    6            �            1259    32861    User    TABLE     ~   CREATE TABLE "TodoShema"."User" (
    "Id" bigint NOT NULL,
    "UserName" text NOT NULL,
    "PasswordHash" text NOT NULL
);
    DROP TABLE "TodoShema"."User";
    	   TodoShema         heap    jaba    false    6                      0    32868    Task 
   TABLE DATA           e   COPY "TodoShema"."Task" ("Id", "UserId", "Description", "Timeframe", "Priority", "Done") FROM stdin;
 	   TodoShema          jaba    false    216                    0    32861    User 
   TABLE DATA           G   COPY "TodoShema"."User" ("Id", "UserName", "PasswordHash") FROM stdin;
 	   TodoShema          jaba    false    215   �       �           2606    32874    Task Task_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "TodoShema"."Task"
    ADD CONSTRAINT "Task_pkey" PRIMARY KEY ("Id");
 A   ALTER TABLE ONLY "TodoShema"."Task" DROP CONSTRAINT "Task_pkey";
    	   TodoShema            jaba    false    216            �           2606    32867    User User_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY "TodoShema"."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");
 A   ALTER TABLE ONLY "TodoShema"."User" DROP CONSTRAINT "User_pkey";
    	   TodoShema            jaba    false    215            �           2606    32881    User unique_username 
   CONSTRAINT     \   ALTER TABLE ONLY "TodoShema"."User"
    ADD CONSTRAINT unique_username UNIQUE ("UserName");
 E   ALTER TABLE ONLY "TodoShema"."User" DROP CONSTRAINT unique_username;
    	   TodoShema            jaba    false    215            �           2606    32875    Task FK_USER    FK CONSTRAINT     }   ALTER TABLE ONLY "TodoShema"."Task"
    ADD CONSTRAINT "FK_USER" FOREIGN KEY ("UserId") REFERENCES "TodoShema"."User"("Id");
 ?   ALTER TABLE ONLY "TodoShema"."Task" DROP CONSTRAINT "FK_USER";
    	   TodoShema          jaba    false    215    216    3204               �   x�e�A
�0�����@$�DEw��-6�M7B�-T�Z����X���~��&ZSm���fΦG�d��d�����`�^���m�����l(~6�q�8�m"AB�c���{�*T��YE���PW���<t��è�Dd
�~�J����D>9         �   x�5�KS�0 �ɯ���v<֠� �<,8^x|@��&� ��Ng�i/;;KP2�NGP[�؎�ߢQ+.�`]#�QGa������ug����+@�]�����q�}��g�gR����NOO���7�!SKJn�GI�=������Z�ŵ��̝X��UF1��H54�^$��Y��Nd�"���n��^������53����+�s>�㡀�)���������|aՊU-�>��0�ŎY�     