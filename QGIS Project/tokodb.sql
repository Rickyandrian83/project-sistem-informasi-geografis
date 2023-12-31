PGDMP         9                {         	   ricky1075    14.5    14.5 %    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32768 	   ricky1075    DATABASE     i   CREATE DATABASE ricky1075 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Indonesia.1252';
    DROP DATABASE ricky1075;
                postgres    false                        3079    57349    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            �           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2            �            1259    32776    groups    TABLE     m   CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying NOT NULL,
    descr text
);
    DROP TABLE public.groups;
       public         heap    postgres    false            �            1259    49162    pages    TABLE     �   CREATE TABLE public.pages (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    descr text,
    url character varying(255) NOT NULL,
    group_id integer NOT NULL
);
    DROP TABLE public.pages;
       public         heap    postgres    false            �            1259    49161    pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public          postgres    false    216            �           0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
          public          postgres    false    215            �            1259    65543    toko tonjong dan sekitarnya    TABLE     �   CREATE TABLE public."toko tonjong dan sekitarnya" (
    id bigint NOT NULL,
    geom public.geometry(Point,4326),
    namaobjek character varying(100),
    lokasi character varying(100)
);
 1   DROP TABLE public."toko tonjong dan sekitarnya";
       public         heap    postgres    false    2    2    2    2    2    2    2    2            �            1259    49153    toponimi_point    TABLE     �   CREATE TABLE public.toponimi_point (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    category character varying(50),
    descr text
);
 "   DROP TABLE public.toponimi_point;
       public         heap    postgres    false            �            1259    49152    topomini_point_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topomini_point_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.topomini_point_id_seq;
       public          postgres    false    214            �           0    0    topomini_point_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.topomini_point_id_seq OWNED BY public.toponimi_point.id;
          public          postgres    false    213            �            1259    57344    user_group_link    TABLE     ~   CREATE TABLE public.user_group_link (
    id integer NOT NULL,
    group_id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.user_group_link;
       public         heap    postgres    false            �            1259    40961    users    TABLE     d  CREATE TABLE public.users (
    id integer NOT NULL,
    firstname character varying(25),
    lastname character varying(25),
    username character varying(25),
    password character varying(255),
    validationcode character varying(255),
    email character varying(100),
    comments text,
    joined date,
    last_login date,
    active smallint
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    40960    users1075_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users1075_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users1075_id_seq;
       public          postgres    false    212            �           0    0    users1075_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.users1075_id_seq OWNED BY public.users.id;
          public          postgres    false    211            �           2604    49165    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    49156    toponimi_point id    DEFAULT     v   ALTER TABLE ONLY public.toponimi_point ALTER COLUMN id SET DEFAULT nextval('public.topomini_point_id_seq'::regclass);
 @   ALTER TABLE public.toponimi_point ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    40964    users id    DEFAULT     h   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users1075_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �          0    32776    groups 
   TABLE DATA           1   COPY public.groups (id, name, descr) FROM stdin;
    public          postgres    false    210   �'       �          0    49162    pages 
   TABLE DATA           ?   COPY public.pages (id, name, descr, url, group_id) FROM stdin;
    public          postgres    false    216   �(       �          0    57659    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    219   +       �          0    65543    toko tonjong dan sekitarnya 
   TABLE DATA           T   COPY public."toko tonjong dan sekitarnya" (id, geom, namaobjek, lokasi) FROM stdin;
    public          postgres    false    223   3+       �          0    49153    toponimi_point 
   TABLE DATA           C   COPY public.toponimi_point (id, name, category, descr) FROM stdin;
    public          postgres    false    214   1       �          0    57344    user_group_link 
   TABLE DATA           @   COPY public.user_group_link (id, group_id, user_id) FROM stdin;
    public          postgres    false    217   %1       �          0    40961    users 
   TABLE DATA           �   COPY public.users (id, firstname, lastname, username, password, validationcode, email, comments, joined, last_login, active) FROM stdin;
    public          postgres    false    212   o1       �           0    0    pages_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pages_id_seq', 1, false);
          public          postgres    false    215            �           0    0    topomini_point_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.topomini_point_id_seq', 1, false);
          public          postgres    false    213            �           0    0    users1075_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users1075_id_seq', 7, true);
          public          postgres    false    211            �           2606    32782    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public            postgres    false    210            �           2606    49169    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public            postgres    false    216            �           2606    65547 <   toko tonjong dan sekitarnya toko tonjong dan sekitarnya_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public."toko tonjong dan sekitarnya"
    ADD CONSTRAINT "toko tonjong dan sekitarnya_pkey" PRIMARY KEY (id);
 j   ALTER TABLE ONLY public."toko tonjong dan sekitarnya" DROP CONSTRAINT "toko tonjong dan sekitarnya_pkey";
       public            postgres    false    223            �           2606    49160 "   toponimi_point topomini_point_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.toponimi_point
    ADD CONSTRAINT topomini_point_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.toponimi_point DROP CONSTRAINT topomini_point_pkey;
       public            postgres    false    214            �           2606    57348 $   user_group_link user_group_link_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.user_group_link
    ADD CONSTRAINT user_group_link_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.user_group_link DROP CONSTRAINT user_group_link_pkey;
       public            postgres    false    217            �           2606    40968    users users1075_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users1075_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT users1075_pkey;
       public            postgres    false    212            �   �   x�5���0��)� ?s1tb`aq���I����	�,�Χo��a�:v����S���O����;��^KvYՃc�#�83΋{��^,#^ow�+����5w$����ָ��W�#<s,S��)/�F�d&���EQ��s _ߩH�      �   i  x�uT�N�0}�~�<�JXʭ�[���Ri5I�ĉ�D�P��w���K4��9s�R�
-�tޢo-��p��"!�:êA�mC[*�h@�)�ζo��ݹ*������鰫:�����J� ��U(�1�䰌2��!x��ey�;rT���)5|�:�[�j����f,�n��ɕ$�{��٩x+x�6p�[��#�O�7�@����Q�zUH���!�׷)��]��;����ϟB��;Ho���n�����,�+��?��9�-;�K\S�!oMl�4���}�-�xE�!罉�=���R$m&�NɆ#`��C�����
��n!t�QL,m�.����ǎ����c��&%^d��3^���o"�ʔM������,6G5���x,ﮔ#�/���\��C��j�ψ�/j��kܞc�g��c$�x�3g��'E���<��"S�o{��P�g���)�I���(�F+�-�yix�k�-�S�{r���X���m��4�,d�]q����5C|��n4���a1�gQs�q����@�~h1F�!��^4�� [�5(���!��`ro�Q��>��i<'w�����R�A���G�3��}8������%      �      x������ � �      �   �  x�u��n�FE��Wp�l��ߏe?1�Mk�H�DQI3_���4$�bo8��]�V5}#~ᇑ��7ֹL�^���9#�!���r�/�����8_��m��]��j���1\����L���`�Չi���bOe�n���H'4����D�(�+P�Xnݖ*jP�SouV�S�\����^��T.���el�-\bZ(f�!���J�3÷�Ǧ|t�-Tag�u��PA��L��N��+�t,�k�i������|ޒ5BN6Y"8�y)W�^n�r��K�ޟA�py�[#W1����d�o���Jɲ\�+�8�d4�B��44?���ψ
� L� ���.�4�&�-�V�����)EpY#�빃�BH�A�E�}7N���(�d���)��"�(K�))������йGA1�9���t�]���s������~�9MZC��1�j�����\���r8��{S����ł��j��!'2��j�h��W9���FYN�(���Ձ݂P���I�o���T�\���� �(�<��Jxȉ뼥�n�B1S�(��������Щ��ej�m����u����1s��@EG|�r�k`ZP��x�me`��$�\0i}m�G�9yh����0�A�d��9s�E�̻g�G� 	�q*�{$t�3���7`^U�T��Ϥ�KBiܖ�yk[,j6H�̜��n��>E_�g��rl��G��d�n6Ĕi��-dj`LD����]���������!LS���ޒ*��8L����k���!c��Y��5�T^*��|��،݄���oS2jXC\d6�W,��g���똂�r�:����Zqn�S��v�U�߲!J���U��	�p���$���a8^1�a��
�
��AP�fL��k�ؗ��u�s��M��1[͡��2�b=&i��>�9���9��AY)�Zn��d�?>��,�X_q̸�r��C]j@O/��<�J06����1��R��LE�0�,=3aq�����Dǜ� ʜ�&V��h��&�L�5�Y�rt��H>�:&�ˊf/��
��BǬe��$h��@���'kϞ�4Vsݸ���r+���'8f1OA���� ]v�Q��G������oLY�0�Y4z�feb�=�л
�-;���l�4�q͗{4z���G��V�]`.`�1�IZ��Bq0� m_3���"�ǈp�kQ��h�8,�����mʯ�7c�/�f�N�y���� ��A�P�!�d��T4�`���18�t�f�����P��x�˾�!�	�r�R�t��-aiPF�1���y��saꆷ��_�������D�I_!�l�`�j���kW.o��=���ǂIn*%]�8e�姥qj�e�=�eKE�K�$~y8��D�e������c9u=��V����FdIS)���uJKa+zWN���:��T�.�r���i�ޟb�H_�/m���k9�
v���e�������� ���      �      x������ � �      �   :   x����0�l1�\r��b�uH>�P���W8����>x���[+/W"v�w?+4�      �   ,  x����O�0 �������g;��i	���`�䯴i���$���0@��&�tw:��{8p֙^u�,�:����O��o�Ѐ�����P�o�Bf����������Opw �`�?���w�QZeŸjF0�2ҥ�e;[C��ǧvU�P��Q�`�&Ք��H��b!�\RdR�o䡃&����}�\�/��g��u�.i%�� �`mQ)����zyd�n�A��FjSL�8F0!�Q�!S��b�p ��a��������=�a�Ͳ���H/�����tq=��p�ECtQ�[���1��t��84*e��0�BcH|"@woR`�K�_�ѫ������c��S^5����d�nF1_�'�Ű.�۫��w��MxWBi�Ռ����V�X~V�fN�T�s�N/��*�gvfq����֚�v�(bhΏ&WbF|��o����5�q�4):�D�>���f���c�"�ڋ�?��LS�R���~�_B7l��v�M���I|�s�5e�U]�:����B1GSp�5���D��Xi�)�ݪ�m����/�J�     