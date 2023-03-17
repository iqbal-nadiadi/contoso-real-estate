PGDMP     "        
            {            postgres    12.13 %   12.13 (Ubuntu 12.13-0ubuntu0.20.04.1) 	   s           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            t           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            u           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            v           1262    14043    postgres    DATABASE     x   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
    DROP DATABASE postgres;
                azure_pg_admin    false            w           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   azure_pg_admin    false    4214            x           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM azuresu;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO azure_pg_admin;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   azure_pg_admin    false    6                        3079    24781    pg_cron 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_cron WITH SCHEMA public;
    DROP EXTENSION pg_cron;
                   false            y           0    0    EXTENSION pg_cron    COMMENT     @   COMMENT ON EXTENSION pg_cron IS 'Job scheduler for PostgreSQL';
                        false    4            z           0    0    SCHEMA cron    ACL     .   GRANT USAGE ON SCHEMA cron TO azure_pg_admin;
                   azuresu    false    11                        3079    24833    azure 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS azure WITH SCHEMA pg_catalog;
    DROP EXTENSION azure;
                   false            {           0    0    EXTENSION azure    COMMENT     H   COMMENT ON EXTENSION azure IS 'azure extension for PostgreSQL service';
                        false    1                        3079    24577 	   pgaadauth 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS pgaadauth WITH SCHEMA pg_catalog;
    DROP EXTENSION pgaadauth;
                   false            |           0    0    EXTENSION pgaadauth    COMMENT     K   COMMENT ON EXTENSION pgaadauth IS 'Azure Active Directory Authentication';
                        false    2            }           0    0 l   FUNCTION alter_job(job_id bigint, schedule text, command text, database text, username text, active boolean)    ACL     �   GRANT ALL ON FUNCTION cron.alter_job(job_id bigint, schedule text, command text, database text, username text, active boolean) TO azure_pg_admin;
          cron          azuresu    false    314            ~           0    0    FUNCTION job_cache_invalidate()    ACL     E   GRANT ALL ON FUNCTION cron.job_cache_invalidate() TO azure_pg_admin;
          cron          azuresu    false    317                       0    0 .   FUNCTION schedule(schedule text, command text)    ACL     T   GRANT ALL ON FUNCTION cron.schedule(schedule text, command text) TO azure_pg_admin;
          cron          azuresu    false    315            �           0    0 =   FUNCTION schedule(job_name text, schedule text, command text)    ACL     c   GRANT ALL ON FUNCTION cron.schedule(job_name text, schedule text, command text) TO azure_pg_admin;
          cron          azuresu    false    318            �           0    0 w   FUNCTION schedule_in_database(job_name text, schedule text, command text, database text, username text, active boolean)    ACL     �   GRANT ALL ON FUNCTION cron.schedule_in_database(job_name text, schedule text, command text, database text, username text, active boolean) TO azure_pg_admin;
          cron          azuresu    false    319            �           0    0 "   FUNCTION unschedule(job_id bigint)    ACL     H   GRANT ALL ON FUNCTION cron.unschedule(job_id bigint) TO azure_pg_admin;
          cron          azuresu    false    316            �           0    0 "   FUNCTION unschedule(job_name name)    ACL     H   GRANT ALL ON FUNCTION cron.unschedule(job_name name) TO azure_pg_admin;
          cron          azuresu    false    320            �           0    0 4   FUNCTION pg_replication_origin_advance(text, pg_lsn)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_advance(text, pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    286            �           0    0 +   FUNCTION pg_replication_origin_create(text)    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_create(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    287            �           0    0 )   FUNCTION pg_replication_origin_drop(text)    ACL     U   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_drop(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    299            �           0    0 (   FUNCTION pg_replication_origin_oid(text)    ACL     T   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_oid(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    300            �           0    0 6   FUNCTION pg_replication_origin_progress(text, boolean)    ACL     b   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_progress(text, boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    301            �           0    0 1   FUNCTION pg_replication_origin_session_is_setup()    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_is_setup() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    302            �           0    0 8   FUNCTION pg_replication_origin_session_progress(boolean)    ACL     d   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_progress(boolean) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    303            �           0    0 .   FUNCTION pg_replication_origin_session_reset()    ACL     Z   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    304            �           0    0 2   FUNCTION pg_replication_origin_session_setup(text)    ACL     ^   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_session_setup(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    305            �           0    0 +   FUNCTION pg_replication_origin_xact_reset()    ACL     W   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    306            �           0    0 K   FUNCTION pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone)    ACL     w   GRANT ALL ON FUNCTION pg_catalog.pg_replication_origin_xact_setup(pg_lsn, timestamp with time zone) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    307            �           0    0    FUNCTION pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn)    ACL     �   GRANT ALL ON FUNCTION pg_catalog.pg_show_replication_origin_status(OUT local_id oid, OUT external_id text, OUT remote_lsn pg_lsn, OUT local_lsn pg_lsn) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    288            �           0    0    FUNCTION pg_stat_reset()    ACL     D   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset() TO azure_pg_admin;
       
   pg_catalog          azuresu    false    289            �           0    0 #   FUNCTION pg_stat_reset_shared(text)    ACL     O   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_shared(text) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    290            �           0    0 4   FUNCTION pg_stat_reset_single_function_counters(oid)    ACL     `   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_function_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    292            �           0    0 1   FUNCTION pg_stat_reset_single_table_counters(oid)    ACL     ]   GRANT ALL ON FUNCTION pg_catalog.pg_stat_reset_single_table_counters(oid) TO azure_pg_admin;
       
   pg_catalog          azuresu    false    291            �           0    0    COLUMN pg_config.name    ACL     D   GRANT SELECT(name) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    101            �           0    0    COLUMN pg_config.setting    ACL     G   GRANT SELECT(setting) ON TABLE pg_catalog.pg_config TO azure_pg_admin;
       
   pg_catalog          azuresu    false    101            �           0    0 $   COLUMN pg_hba_file_rules.line_number    ACL     S   GRANT SELECT(line_number) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0    COLUMN pg_hba_file_rules.type    ACL     L   GRANT SELECT(type) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0 !   COLUMN pg_hba_file_rules.database    ACL     P   GRANT SELECT(database) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0 "   COLUMN pg_hba_file_rules.user_name    ACL     Q   GRANT SELECT(user_name) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0     COLUMN pg_hba_file_rules.address    ACL     O   GRANT SELECT(address) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0     COLUMN pg_hba_file_rules.netmask    ACL     O   GRANT SELECT(netmask) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0 $   COLUMN pg_hba_file_rules.auth_method    ACL     S   GRANT SELECT(auth_method) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0     COLUMN pg_hba_file_rules.options    ACL     O   GRANT SELECT(options) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0    COLUMN pg_hba_file_rules.error    ACL     M   GRANT SELECT(error) ON TABLE pg_catalog.pg_hba_file_rules TO azure_pg_admin;
       
   pg_catalog          azuresu    false    98            �           0    0 ,   COLUMN pg_replication_origin_status.local_id    ACL     [   GRANT SELECT(local_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            �           0    0 /   COLUMN pg_replication_origin_status.external_id    ACL     ^   GRANT SELECT(external_id) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            �           0    0 .   COLUMN pg_replication_origin_status.remote_lsn    ACL     ]   GRANT SELECT(remote_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            �           0    0 -   COLUMN pg_replication_origin_status.local_lsn    ACL     \   GRANT SELECT(local_lsn) ON TABLE pg_catalog.pg_replication_origin_status TO azure_pg_admin;
       
   pg_catalog          azuresu    false    137            �           0    0    COLUMN pg_statistic.starelid    ACL     K   GRANT SELECT(starelid) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staattnum    ACL     L   GRANT SELECT(staattnum) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stainherit    ACL     M   GRANT SELECT(stainherit) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanullfrac    ACL     N   GRANT SELECT(stanullfrac) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stawidth    ACL     K   GRANT SELECT(stawidth) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stadistinct    ACL     N   GRANT SELECT(stadistinct) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stakind1    ACL     K   GRANT SELECT(stakind1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stakind2    ACL     K   GRANT SELECT(stakind2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stakind3    ACL     K   GRANT SELECT(stakind3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stakind4    ACL     K   GRANT SELECT(stakind4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stakind5    ACL     K   GRANT SELECT(stakind5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop1    ACL     I   GRANT SELECT(staop1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop2    ACL     I   GRANT SELECT(staop2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop3    ACL     I   GRANT SELECT(staop3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop4    ACL     I   GRANT SELECT(staop4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.staop5    ACL     I   GRANT SELECT(staop5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll1    ACL     K   GRANT SELECT(stacoll1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll2    ACL     K   GRANT SELECT(stacoll2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll3    ACL     K   GRANT SELECT(stacoll3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll4    ACL     K   GRANT SELECT(stacoll4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stacoll5    ACL     K   GRANT SELECT(stacoll5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers1    ACL     N   GRANT SELECT(stanumbers1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers2    ACL     N   GRANT SELECT(stanumbers2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers3    ACL     N   GRANT SELECT(stanumbers3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers4    ACL     N   GRANT SELECT(stanumbers4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stanumbers5    ACL     N   GRANT SELECT(stanumbers5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues1    ACL     M   GRANT SELECT(stavalues1) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues2    ACL     M   GRANT SELECT(stavalues2) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues3    ACL     M   GRANT SELECT(stavalues3) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues4    ACL     M   GRANT SELECT(stavalues4) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_statistic.stavalues5    ACL     M   GRANT SELECT(stavalues5) ON TABLE pg_catalog.pg_statistic TO azure_pg_admin;
       
   pg_catalog          azuresu    false    46            �           0    0    COLUMN pg_subscription.oid    ACL     I   GRANT SELECT(oid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0    COLUMN pg_subscription.subdbid    ACL     M   GRANT SELECT(subdbid) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0    COLUMN pg_subscription.subname    ACL     M   GRANT SELECT(subname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0    COLUMN pg_subscription.subowner    ACL     N   GRANT SELECT(subowner) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 !   COLUMN pg_subscription.subenabled    ACL     P   GRANT SELECT(subenabled) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 "   COLUMN pg_subscription.subconninfo    ACL     Q   GRANT SELECT(subconninfo) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 "   COLUMN pg_subscription.subslotname    ACL     Q   GRANT SELECT(subslotname) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 $   COLUMN pg_subscription.subsynccommit    ACL     S   GRANT SELECT(subsynccommit) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �           0    0 &   COLUMN pg_subscription.subpublications    ACL     U   GRANT SELECT(subpublications) ON TABLE pg_catalog.pg_subscription TO azure_pg_admin;
       
   pg_catalog          azuresu    false    71            �            1259    24881    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    contosoAdmin    false            �            1259    24879    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          contosoAdmin    false    219            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          contosoAdmin    false    218                       1259    25125    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    contosoAdmin    false                        1259    25123 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          contosoAdmin    false    257            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          contosoAdmin    false    256            �            1259    24907    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    contosoAdmin    false            �            1259    24905    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          contosoAdmin    false    223            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          contosoAdmin    false    222            �            1259    24894    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    contosoAdmin    false            �            1259    24892    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          contosoAdmin    false    221            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          contosoAdmin    false    220                       1259    25138    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    contosoAdmin    false                       1259    25136    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          contosoAdmin    false    259            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          contosoAdmin    false    258            �            1259    25028    articles    TABLE     j  CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    description text,
    content text,
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.articles;
       public         heap    contosoAdmin    false                       1259    25242    articles_author_links    TABLE     �   CREATE TABLE public.articles_author_links (
    id integer NOT NULL,
    article_id integer,
    writer_id integer,
    article_order double precision
);
 )   DROP TABLE public.articles_author_links;
       public         heap    contosoAdmin    false                       1259    25240    articles_author_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_author_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.articles_author_links_id_seq;
       public          contosoAdmin    false    275            �           0    0    articles_author_links_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.articles_author_links_id_seq OWNED BY public.articles_author_links.id;
          public          contosoAdmin    false    274                       1259    25229    articles_category_links    TABLE     �   CREATE TABLE public.articles_category_links (
    id integer NOT NULL,
    article_id integer,
    category_id integer,
    article_order double precision
);
 +   DROP TABLE public.articles_category_links;
       public         heap    contosoAdmin    false                       1259    25227    articles_category_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.articles_category_links_id_seq;
       public          contosoAdmin    false    273            �           0    0    articles_category_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.articles_category_links_id_seq OWNED BY public.articles_category_links.id;
          public          contosoAdmin    false    272            �            1259    25026    articles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          contosoAdmin    false    241            �           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          contosoAdmin    false    240            �            1259    25043 
   categories    TABLE       CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.categories;
       public         heap    contosoAdmin    false            �            1259    25041    categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.categories_id_seq;
       public          contosoAdmin    false    243            �           0    0    categories_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;
          public          contosoAdmin    false    242            �            1259    25106    components_decoration_heroes    TABLE     p   CREATE TABLE public.components_decoration_heroes (
    id integer NOT NULL,
    title character varying(255)
);
 0   DROP TABLE public.components_decoration_heroes;
       public         heap    contosoAdmin    false            �            1259    25104 #   components_decoration_heroes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_decoration_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.components_decoration_heroes_id_seq;
       public          contosoAdmin    false    253            �           0    0 #   components_decoration_heroes_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.components_decoration_heroes_id_seq OWNED BY public.components_decoration_heroes.id;
          public          contosoAdmin    false    252            �            1259    25114    components_shared_seos    TABLE     �   CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description text
);
 *   DROP TABLE public.components_shared_seos;
       public         heap    contosoAdmin    false            �            1259    25112    components_shared_seos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.components_shared_seos_id_seq;
       public          contosoAdmin    false    255            �           0    0    components_shared_seos_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;
          public          contosoAdmin    false    254            �            1259    24943    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    contosoAdmin    false            	           1259    25177    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    contosoAdmin    false                       1259    25175    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          contosoAdmin    false    265            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          contosoAdmin    false    264            �            1259    24941    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          contosoAdmin    false    229            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          contosoAdmin    false    228                       1259    25165    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    contosoAdmin    false                       1259    25163    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          contosoAdmin    false    263            �           0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          contosoAdmin    false    262            �            1259    25058    globals    TABLE     �   CREATE TABLE public.globals (
    id integer NOT NULL,
    site_name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.globals;
       public         heap    contosoAdmin    false                       1259    25255    globals_components    TABLE     �   CREATE TABLE public.globals_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 &   DROP TABLE public.globals_components;
       public         heap    contosoAdmin    false                       1259    25253    globals_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.globals_components_id_seq;
       public          contosoAdmin    false    277            �           0    0    globals_components_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.globals_components_id_seq OWNED BY public.globals_components.id;
          public          contosoAdmin    false    276            �            1259    25056    globals_id_seq    SEQUENCE     �   CREATE SEQUENCE public.globals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.globals_id_seq;
       public          contosoAdmin    false    245            �           0    0    globals_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.globals_id_seq OWNED BY public.globals.id;
          public          contosoAdmin    false    244            �            1259    25068 	   homepages    TABLE     �   CREATE TABLE public.homepages (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.homepages;
       public         heap    contosoAdmin    false                       1259    25271    homepages_components    TABLE     �   CREATE TABLE public.homepages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.homepages_components;
       public         heap    contosoAdmin    false                       1259    25269    homepages_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homepages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.homepages_components_id_seq;
       public          contosoAdmin    false    279            �           0    0    homepages_components_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.homepages_components_id_seq OWNED BY public.homepages_components.id;
          public          contosoAdmin    false    278            �            1259    25066    homepages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.homepages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.homepages_id_seq;
       public          contosoAdmin    false    247            �           0    0    homepages_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.homepages_id_seq OWNED BY public.homepages.id;
          public          contosoAdmin    false    246            �            1259    24979    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    contosoAdmin    false            �            1259    24977    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          contosoAdmin    false    233            �           0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          contosoAdmin    false    232            �            1259    25078    listings    TABLE     _  CREATE TABLE public.listings (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    bathrooms text,
    bedrooms text,
    description text,
    type text,
    is_featured text,
    is_recommended text,
    photos text,
    capacity text,
    ammenities text,
    reviews_stars text,
    reviews_number text,
    is_favorited text,
    address text,
    fees text,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.listings;
       public         heap    contosoAdmin    false            �            1259    25076    listings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.listings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.listings_id_seq;
       public          contosoAdmin    false    249            �           0    0    listings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.listings_id_seq OWNED BY public.listings.id;
          public          contosoAdmin    false    248            �            1259    24933    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    contosoAdmin    false            �            1259    24931 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          contosoAdmin    false    227            �           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          contosoAdmin    false    226                       1259    25152 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    contosoAdmin    false                       1259    25150 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          contosoAdmin    false    261            �           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          contosoAdmin    false    260            �            1259    24920    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    contosoAdmin    false            �            1259    24918    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          contosoAdmin    false    225            �           0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          contosoAdmin    false    224            �            1259    24859    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    contosoAdmin    false            �            1259    24857 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          contosoAdmin    false    215            �           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          contosoAdmin    false    214            �            1259    24848    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    contosoAdmin    false            �            1259    24846    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          contosoAdmin    false    213            �           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          contosoAdmin    false    212            �            1259    24840    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    contosoAdmin    false            �            1259    24838    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          contosoAdmin    false    211            �           0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          contosoAdmin    false    210                       1259    25595 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    contosoAdmin    false                       1259    25593 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          contosoAdmin    false    283            �           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          contosoAdmin    false    282                       1259    25605 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    contosoAdmin    false                       1259    25603 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          contosoAdmin    false    285            �           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          contosoAdmin    false    284                       1259    25582    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    contosoAdmin    false                       1259    25580    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          contosoAdmin    false    281            �           0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          contosoAdmin    false    280            �            1259    24870    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    contosoAdmin    false            �            1259    24868    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          contosoAdmin    false    217            �           0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          contosoAdmin    false    216            �            1259    24992    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    contosoAdmin    false            �            1259    24990    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          contosoAdmin    false    235            �           0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          contosoAdmin    false    234                       1259    25203    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    contosoAdmin    false                       1259    25201     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          contosoAdmin    false    269            �           0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          contosoAdmin    false    268            �            1259    25002    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    contosoAdmin    false            �            1259    25000    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          contosoAdmin    false    237            �           0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          contosoAdmin    false    236            �            1259    25015    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_users;
       public         heap    contosoAdmin    false            �            1259    25013    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          contosoAdmin    false    239            �           0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          contosoAdmin    false    238                       1259    25216    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    contosoAdmin    false                       1259    25214    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          contosoAdmin    false    271            �           0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          contosoAdmin    false    270            �            1259    24962    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    contosoAdmin    false            �            1259    24960    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          contosoAdmin    false    231            �           0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          contosoAdmin    false    230                       1259    25190    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    contosoAdmin    false            
           1259    25188 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          contosoAdmin    false    267            �           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          contosoAdmin    false    266            �            1259    25093    writers    TABLE       CREATE TABLE public.writers (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.writers;
       public         heap    contosoAdmin    false            �            1259    25091    writers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.writers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.writers_id_seq;
       public          contosoAdmin    false    251            �           0    0    writers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.writers_id_seq OWNED BY public.writers.id;
          public          contosoAdmin    false    250            {           2604    24884    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    218    219    219            �           2604    25128    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    256    257    257            }           2604    24910    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    223    222    223            |           2604    24897    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    221    220    221            �           2604    25141    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    259    258    259            �           2604    25031    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    241    240    241            �           2604    25245    articles_author_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_author_links ALTER COLUMN id SET DEFAULT nextval('public.articles_author_links_id_seq'::regclass);
 G   ALTER TABLE public.articles_author_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    275    274    275            �           2604    25232    articles_category_links id    DEFAULT     �   ALTER TABLE ONLY public.articles_category_links ALTER COLUMN id SET DEFAULT nextval('public.articles_category_links_id_seq'::regclass);
 I   ALTER TABLE public.articles_category_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    273    272    273            �           2604    25046    categories id    DEFAULT     n   ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);
 <   ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    243    242    243            �           2604    25109    components_decoration_heroes id    DEFAULT     �   ALTER TABLE ONLY public.components_decoration_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_decoration_heroes_id_seq'::regclass);
 N   ALTER TABLE public.components_decoration_heroes ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    253    252    253            �           2604    25117    components_shared_seos id    DEFAULT     �   ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);
 H   ALTER TABLE public.components_shared_seos ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    255    254    255            �           2604    24946    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    229    228    229            �           2604    25180    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    264    265    265            �           2604    25168    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    263    262    263            �           2604    25061 
   globals id    DEFAULT     h   ALTER TABLE ONLY public.globals ALTER COLUMN id SET DEFAULT nextval('public.globals_id_seq'::regclass);
 9   ALTER TABLE public.globals ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    244    245    245            �           2604    25258    globals_components id    DEFAULT     ~   ALTER TABLE ONLY public.globals_components ALTER COLUMN id SET DEFAULT nextval('public.globals_components_id_seq'::regclass);
 D   ALTER TABLE public.globals_components ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    277    276    277            �           2604    25071    homepages id    DEFAULT     l   ALTER TABLE ONLY public.homepages ALTER COLUMN id SET DEFAULT nextval('public.homepages_id_seq'::regclass);
 ;   ALTER TABLE public.homepages ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    247    246    247            �           2604    25274    homepages_components id    DEFAULT     �   ALTER TABLE ONLY public.homepages_components ALTER COLUMN id SET DEFAULT nextval('public.homepages_components_id_seq'::regclass);
 F   ALTER TABLE public.homepages_components ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    279    278    279            �           2604    24982    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    233    232    233            �           2604    25081    listings id    DEFAULT     j   ALTER TABLE ONLY public.listings ALTER COLUMN id SET DEFAULT nextval('public.listings_id_seq'::regclass);
 :   ALTER TABLE public.listings ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    249    248    249                       2604    24936    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    226    227    227            �           2604    25155 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    260    261    261            ~           2604    24923    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    225    224    225            y           2604    24862    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    214    215    215            x           2604    24851    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    212    213    213            w           2604    24843    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    210    211    211            �           2604    25598 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    282    283    283            �           2604    25608 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    284    285    285            �           2604    25585    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    280    281    281            z           2604    24873    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    217    216    217            �           2604    24995    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    234    235    235            �           2604    25206    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    268    269    269            �           2604    25005    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    236    237    237            �           2604    25018    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    238    239    239            �           2604    25219    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    270    271    271            �           2604    24965    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    231    230    231            �           2604    25193    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    266    267    267            �           2604    25096 
   writers id    DEFAULT     h   ALTER TABLE ONLY public.writers ALTER COLUMN id SET DEFAULT nextval('public.writers_id_seq'::regclass);
 9   ALTER TABLE public.writers ALTER COLUMN id DROP DEFAULT;
       public          contosoAdmin    false    251    250    251            .          0    24881    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    219   H�      T          0    25125    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          contosoAdmin    false    257   ��      2          0    24907    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    223   ��      0          0    24894    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    221   ۱      V          0    25138    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          contosoAdmin    false    259   ��      D          0    25028    articles 
   TABLE DATA           �   COPY public.articles (id, title, description, content, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    241   ��      f          0    25242    articles_author_links 
   TABLE DATA           Y   COPY public.articles_author_links (id, article_id, writer_id, article_order) FROM stdin;
    public          contosoAdmin    false    275   �      d          0    25229    articles_category_links 
   TABLE DATA           ]   COPY public.articles_category_links (id, article_id, category_id, article_order) FROM stdin;
    public          contosoAdmin    false    273   &�      F          0    25043 
   categories 
   TABLE DATA           j   COPY public.categories (id, name, slug, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    243   f�      P          0    25106    components_decoration_heroes 
   TABLE DATA           A   COPY public.components_decoration_heroes (id, title) FROM stdin;
    public          contosoAdmin    false    253   �      R          0    25114    components_shared_seos 
   TABLE DATA           R   COPY public.components_shared_seos (id, meta_title, meta_description) FROM stdin;
    public          contosoAdmin    false    255   �      8          0    24943    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    229   ��      \          0    25177    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          contosoAdmin    false    265   d�      Z          0    25165    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          contosoAdmin    false    263   ��      H          0    25058    globals 
   TABLE DATA           f   COPY public.globals (id, site_name, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    245   F�      h          0    25255    globals_components 
   TABLE DATA           i   COPY public.globals_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          contosoAdmin    false    277   ��      J          0    25068 	   homepages 
   TABLE DATA           ]   COPY public.homepages (id, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    247   ��      j          0    25271    homepages_components 
   TABLE DATA           k   COPY public.homepages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          contosoAdmin    false    279   -�      <          0    24979    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    233   ~�      L          0    25078    listings 
   TABLE DATA             COPY public.listings (id, title, slug, created_at, bathrooms, bedrooms, description, type, is_featured, is_recommended, photos, capacity, ammenities, reviews_stars, reviews_number, is_favorited, address, fees, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    249   ��      6          0    24933    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    227   v�      X          0    25152 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          contosoAdmin    false    261   ��      4          0    24920    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    225   ��      *          0    24859    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          contosoAdmin    false    215   ��      (          0    24848    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          contosoAdmin    false    213   ��      &          0    24840    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          contosoAdmin    false    211   �      n          0    25595 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    283   <�      p          0    25605 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          contosoAdmin    false    285   Y�      l          0    25582    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    281   v�      ,          0    24870    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          contosoAdmin    false    217   ��      >          0    24992    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    235   ��      `          0    25203    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          contosoAdmin    false    269   1�      @          0    25002    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    237   ��      B          0    25015    up_users 
   TABLE DATA           �   COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    239   B�      b          0    25216    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          contosoAdmin    false    271   _�      :          0    24962    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    231   |�      ^          0    25190    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          contosoAdmin    false    267   ��      N          0    25093    writers 
   TABLE DATA           h   COPY public.writers (id, name, email, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          contosoAdmin    false    251   ��      �           0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 147, true);
          public          contosoAdmin    false    218            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 147, true);
          public          contosoAdmin    false    256            �           0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          contosoAdmin    false    222            �           0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          contosoAdmin    false    220            �           0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          contosoAdmin    false    258            �           0    0    articles_author_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.articles_author_links_id_seq', 6, true);
          public          contosoAdmin    false    274            �           0    0    articles_category_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.articles_category_links_id_seq', 6, true);
          public          contosoAdmin    false    272            �           0    0    articles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.articles_id_seq', 6, true);
          public          contosoAdmin    false    240            �           0    0    categories_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.categories_id_seq', 5, true);
          public          contosoAdmin    false    242            �           0    0 #   components_decoration_heroes_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.components_decoration_heroes_id_seq', 2, true);
          public          contosoAdmin    false    252            �           0    0    components_shared_seos_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 4, true);
          public          contosoAdmin    false    254            �           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          contosoAdmin    false    264            �           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 22, true);
          public          contosoAdmin    false    228            �           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 16, true);
          public          contosoAdmin    false    262            �           0    0    globals_components_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.globals_components_id_seq', 2, true);
          public          contosoAdmin    false    276                        0    0    globals_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.globals_id_seq', 2, true);
          public          contosoAdmin    false    244                       0    0    homepages_components_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.homepages_components_id_seq', 4, true);
          public          contosoAdmin    false    278                       0    0    homepages_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.homepages_id_seq', 2, true);
          public          contosoAdmin    false    246                       0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          contosoAdmin    false    232                       0    0    listings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.listings_id_seq', 29, true);
          public          contosoAdmin    false    248                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          contosoAdmin    false    226                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          contosoAdmin    false    260                       0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          contosoAdmin    false    224                       0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 32, true);
          public          contosoAdmin    false    214            	           0    0    strapi_database_schema_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 2, true);
          public          contosoAdmin    false    212            
           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          contosoAdmin    false    210                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          contosoAdmin    false    282                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          contosoAdmin    false    284                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          contosoAdmin    false    280                       0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          contosoAdmin    false    216                       0    0    up_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.up_permissions_id_seq', 29, true);
          public          contosoAdmin    false    234                       0    0     up_permissions_role_links_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 29, true);
          public          contosoAdmin    false    268                       0    0    up_roles_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);
          public          contosoAdmin    false    236                       0    0    up_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);
          public          contosoAdmin    false    238                       0    0    up_users_role_links_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);
          public          contosoAdmin    false    270                       0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          contosoAdmin    false    230                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          contosoAdmin    false    266                       0    0    writers_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.writers_id_seq', 4, true);
          public          contosoAdmin    false    250            �           2606    24889 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            contosoAdmin    false    219            
           2606    25130 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            contosoAdmin    false    257                       2606    25134 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            contosoAdmin    false    257    257            �           2606    24915    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            contosoAdmin    false    223            �           2606    24902    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            contosoAdmin    false    221                       2606    25143 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            contosoAdmin    false    259                       2606    25147 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            contosoAdmin    false    259    259            F           2606    25247 0   articles_author_links articles_author_links_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_pkey;
       public            contosoAdmin    false    275            H           2606    25251 2   articles_author_links articles_author_links_unique 
   CONSTRAINT     ~   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_unique UNIQUE (article_id, writer_id);
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_unique;
       public            contosoAdmin    false    275    275            ?           2606    25234 4   articles_category_links articles_category_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_pkey;
       public            contosoAdmin    false    273            A           2606    25238 6   articles_category_links articles_category_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_unique UNIQUE (article_id, category_id);
 `   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_unique;
       public            contosoAdmin    false    273    273            �           2606    25036    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            contosoAdmin    false    241            �           2606    25038    articles articles_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_slug_unique;
       public            contosoAdmin    false    241            �           2606    25051    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            contosoAdmin    false    243            �           2606    25053 !   categories categories_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_slug_unique;
       public            contosoAdmin    false    243                       2606    25111 >   components_decoration_heroes components_decoration_heroes_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.components_decoration_heroes
    ADD CONSTRAINT components_decoration_heroes_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.components_decoration_heroes DROP CONSTRAINT components_decoration_heroes_pkey;
       public            contosoAdmin    false    253                       2606    25122 2   components_shared_seos components_shared_seos_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.components_shared_seos DROP CONSTRAINT components_shared_seos_pkey;
       public            contosoAdmin    false    255            #           2606    25182 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            contosoAdmin    false    265            %           2606    25186 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            contosoAdmin    false    265    265            �           2606    24951    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            contosoAdmin    false    229                       2606    25173 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            contosoAdmin    false    263            K           2606    25263 *   globals_components globals_components_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_components_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_components_pkey;
       public            contosoAdmin    false    277            �           2606    25063    globals globals_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_pkey;
       public            contosoAdmin    false    245            O           2606    25758 !   globals_components globals_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_unique UNIQUE (entity_id, component_id, field, component_type);
 K   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_unique;
       public            contosoAdmin    false    277    277    277    277            R           2606    25279 .   homepages_components homepages_components_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_components_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_components_pkey;
       public            contosoAdmin    false    279            �           2606    25073    homepages homepages_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_pkey;
       public            contosoAdmin    false    247            V           2606    25771 %   homepages_components homepages_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_unique UNIQUE (entity_id, component_id, field, component_type);
 O   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_unique;
       public            contosoAdmin    false    279    279    279    279            �           2606    24987    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            contosoAdmin    false    233            �           2606    25086    listings listings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_pkey;
       public            contosoAdmin    false    249            �           2606    25088    listings listings_slug_unique 
   CONSTRAINT     X   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_slug_unique UNIQUE (slug);
 G   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_slug_unique;
       public            contosoAdmin    false    249            �           2606    24938 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            contosoAdmin    false    227                       2606    25157 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            contosoAdmin    false    261                       2606    25161 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            contosoAdmin    false    261    261            �           2606    24928 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            contosoAdmin    false    225            �           2606    24867 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            contosoAdmin    false    215            �           2606    24856 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            contosoAdmin    false    213            �           2606    24845 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            contosoAdmin    false    211            ]           2606    25600 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            contosoAdmin    false    283            c           2606    25610 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            contosoAdmin    false    285            e           2606    25614 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            contosoAdmin    false    285    285            Y           2606    25590 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            contosoAdmin    false    281            �           2606    24878 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            contosoAdmin    false    217            �           2606    24997 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            contosoAdmin    false    235            1           2606    25208 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            contosoAdmin    false    269            3           2606    25212 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            contosoAdmin    false    269    269            �           2606    25010    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            contosoAdmin    false    237            �           2606    25023    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            contosoAdmin    false    239            8           2606    25221 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            contosoAdmin    false    271            :           2606    25225 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            contosoAdmin    false    271    271            *           2606    25195 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            contosoAdmin    false    267            ,           2606    25199 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            contosoAdmin    false    267    267            �           2606    24972 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            contosoAdmin    false    231            �           2606    24974 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            contosoAdmin    false    231            �           2606    24970 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            contosoAdmin    false    231                        2606    25101    writers writers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_pkey;
       public            contosoAdmin    false    251            �           1259    24890 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            contosoAdmin    false    219                       1259    25131    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            contosoAdmin    false    257                       1259    25132 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            contosoAdmin    false    257                       1259    25646 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            contosoAdmin    false    257            �           1259    24891 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            contosoAdmin    false    219            �           1259    24916    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            contosoAdmin    false    223            �           1259    24917    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            contosoAdmin    false    223            �           1259    24903    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            contosoAdmin    false    221                       1259    25144    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            contosoAdmin    false    259                       1259    25145    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            contosoAdmin    false    259                       1259    25655     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            contosoAdmin    false    259                       1259    25665 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            contosoAdmin    false    259            �           1259    24904    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            contosoAdmin    false    221            B           1259    25248    articles_author_links_fk    INDEX     `   CREATE INDEX articles_author_links_fk ON public.articles_author_links USING btree (article_id);
 ,   DROP INDEX public.articles_author_links_fk;
       public            contosoAdmin    false    275            C           1259    25249    articles_author_links_inv_fk    INDEX     c   CREATE INDEX articles_author_links_inv_fk ON public.articles_author_links USING btree (writer_id);
 0   DROP INDEX public.articles_author_links_inv_fk;
       public            contosoAdmin    false    275            D           1259    25737 "   articles_author_links_order_inv_fk    INDEX     m   CREATE INDEX articles_author_links_order_inv_fk ON public.articles_author_links USING btree (article_order);
 6   DROP INDEX public.articles_author_links_order_inv_fk;
       public            contosoAdmin    false    275            ;           1259    25235    articles_category_links_fk    INDEX     d   CREATE INDEX articles_category_links_fk ON public.articles_category_links USING btree (article_id);
 .   DROP INDEX public.articles_category_links_fk;
       public            contosoAdmin    false    273            <           1259    25236    articles_category_links_inv_fk    INDEX     i   CREATE INDEX articles_category_links_inv_fk ON public.articles_category_links USING btree (category_id);
 2   DROP INDEX public.articles_category_links_inv_fk;
       public            contosoAdmin    false    273            =           1259    25728 $   articles_category_links_order_inv_fk    INDEX     q   CREATE INDEX articles_category_links_order_inv_fk ON public.articles_category_links USING btree (article_order);
 8   DROP INDEX public.articles_category_links_order_inv_fk;
       public            contosoAdmin    false    273            �           1259    25039    articles_created_by_id_fk    INDEX     W   CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);
 -   DROP INDEX public.articles_created_by_id_fk;
       public            contosoAdmin    false    241            �           1259    25040    articles_updated_by_id_fk    INDEX     W   CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);
 -   DROP INDEX public.articles_updated_by_id_fk;
       public            contosoAdmin    false    241            �           1259    25054    categories_created_by_id_fk    INDEX     [   CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);
 /   DROP INDEX public.categories_created_by_id_fk;
       public            contosoAdmin    false    243            �           1259    25055    categories_updated_by_id_fk    INDEX     [   CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);
 /   DROP INDEX public.categories_updated_by_id_fk;
       public            contosoAdmin    false    243            �           1259    24958    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            contosoAdmin    false    229                       1259    25183    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            contosoAdmin    false    265                        1259    25184    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            contosoAdmin    false    265            !           1259    25692    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            contosoAdmin    false    265                       1259    25174    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            contosoAdmin    false    263            �           1259    24959    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            contosoAdmin    false    229            I           1259    25265    globals_component_type_index    INDEX     e   CREATE INDEX globals_component_type_index ON public.globals_components USING btree (component_type);
 0   DROP INDEX public.globals_component_type_index;
       public            contosoAdmin    false    277            �           1259    25064    globals_created_by_id_fk    INDEX     U   CREATE INDEX globals_created_by_id_fk ON public.globals USING btree (created_by_id);
 ,   DROP INDEX public.globals_created_by_id_fk;
       public            contosoAdmin    false    245            L           1259    25266    globals_entity_fk    INDEX     U   CREATE INDEX globals_entity_fk ON public.globals_components USING btree (entity_id);
 %   DROP INDEX public.globals_entity_fk;
       public            contosoAdmin    false    277            M           1259    25264    globals_field_index    INDEX     S   CREATE INDEX globals_field_index ON public.globals_components USING btree (field);
 '   DROP INDEX public.globals_field_index;
       public            contosoAdmin    false    277            �           1259    25065    globals_updated_by_id_fk    INDEX     U   CREATE INDEX globals_updated_by_id_fk ON public.globals USING btree (updated_by_id);
 ,   DROP INDEX public.globals_updated_by_id_fk;
       public            contosoAdmin    false    245            P           1259    25281    homepages_component_type_index    INDEX     i   CREATE INDEX homepages_component_type_index ON public.homepages_components USING btree (component_type);
 2   DROP INDEX public.homepages_component_type_index;
       public            contosoAdmin    false    279            �           1259    25074    homepages_created_by_id_fk    INDEX     Y   CREATE INDEX homepages_created_by_id_fk ON public.homepages USING btree (created_by_id);
 .   DROP INDEX public.homepages_created_by_id_fk;
       public            contosoAdmin    false    247            S           1259    25282    homepages_entity_fk    INDEX     Y   CREATE INDEX homepages_entity_fk ON public.homepages_components USING btree (entity_id);
 '   DROP INDEX public.homepages_entity_fk;
       public            contosoAdmin    false    279            T           1259    25280    homepages_field_index    INDEX     W   CREATE INDEX homepages_field_index ON public.homepages_components USING btree (field);
 )   DROP INDEX public.homepages_field_index;
       public            contosoAdmin    false    279            �           1259    25075    homepages_updated_by_id_fk    INDEX     Y   CREATE INDEX homepages_updated_by_id_fk ON public.homepages USING btree (updated_by_id);
 .   DROP INDEX public.homepages_updated_by_id_fk;
       public            contosoAdmin    false    247            �           1259    24988    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            contosoAdmin    false    233            �           1259    24989    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            contosoAdmin    false    233            �           1259    25089    listings_created_by_id_fk    INDEX     W   CREATE INDEX listings_created_by_id_fk ON public.listings USING btree (created_by_id);
 -   DROP INDEX public.listings_created_by_id_fk;
       public            contosoAdmin    false    249            �           1259    25090    listings_updated_by_id_fk    INDEX     W   CREATE INDEX listings_updated_by_id_fk ON public.listings USING btree (updated_by_id);
 -   DROP INDEX public.listings_updated_by_id_fk;
       public            contosoAdmin    false    249            �           1259    24939 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            contosoAdmin    false    227                       1259    25158 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            contosoAdmin    false    261                       1259    25159 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            contosoAdmin    false    261                       1259    25675 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            contosoAdmin    false    261            �           1259    24940 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            contosoAdmin    false    227            �           1259    24929 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            contosoAdmin    false    225            �           1259    24930 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            contosoAdmin    false    225            [           1259    25601 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            contosoAdmin    false    283            _           1259    25611 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            contosoAdmin    false    285            `           1259    25612 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            contosoAdmin    false    285            a           1259    25615 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            contosoAdmin    false    285            ^           1259    25602 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            contosoAdmin    false    283            W           1259    25591 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            contosoAdmin    false    281            Z           1259    25592 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            contosoAdmin    false    281            �           1259    24998    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            contosoAdmin    false    235            -           1259    25209    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            contosoAdmin    false    269            .           1259    25210     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            contosoAdmin    false    269            /           1259    25710 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            contosoAdmin    false    269            �           1259    24999    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            contosoAdmin    false    235            �           1259    25011    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            contosoAdmin    false    237            �           1259    25012    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            contosoAdmin    false    237            �           1259    25024    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            contosoAdmin    false    239            4           1259    25222    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            contosoAdmin    false    271            5           1259    25223    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            contosoAdmin    false    271            6           1259    25719     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            contosoAdmin    false    271            �           1259    25025    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            contosoAdmin    false    239            �           1259    24953    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            contosoAdmin    false    229            �           1259    24957    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            contosoAdmin    false    229            �           1259    24952    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            contosoAdmin    false    229            �           1259    24955    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            contosoAdmin    false    229            �           1259    24956    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            contosoAdmin    false    229            �           1259    24954    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            contosoAdmin    false    229            �           1259    24975    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            contosoAdmin    false    231            &           1259    25196    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            contosoAdmin    false    267            '           1259    25197 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            contosoAdmin    false    267            (           1259    25701 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            contosoAdmin    false    267            �           1259    24976    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            contosoAdmin    false    231            �           1259    25102    writers_created_by_id_fk    INDEX     U   CREATE INDEX writers_created_by_id_fk ON public.writers USING btree (created_by_id);
 ,   DROP INDEX public.writers_created_by_id_fk;
       public            contosoAdmin    false    251                       1259    25103    writers_updated_by_id_fk    INDEX     U   CREATE INDEX writers_updated_by_id_fk ON public.writers USING btree (updated_by_id);
 ,   DROP INDEX public.writers_updated_by_id_fk;
       public            contosoAdmin    false    251            f           2606    25285 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          contosoAdmin    false    219    221    3764            �           2606    25455 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          contosoAdmin    false    3760    219    257            �           2606    25460 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          contosoAdmin    false    3768    257    223            g           2606    25290 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          contosoAdmin    false    219    221    3764            j           2606    25305 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          contosoAdmin    false    223    221    3764            k           2606    25310 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          contosoAdmin    false    223    221    3764            h           2606    25295 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          contosoAdmin    false    221    221    3764            �           2606    25465 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          contosoAdmin    false    3764    259    221            �           2606    25470 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          contosoAdmin    false    259    223    3768            i           2606    25300 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          contosoAdmin    false    221    221    3764            �           2606    25540 .   articles_author_links articles_author_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_fk;
       public          contosoAdmin    false    241    3814    275            �           2606    25545 2   articles_author_links articles_author_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_author_links
    ADD CONSTRAINT articles_author_links_inv_fk FOREIGN KEY (writer_id) REFERENCES public.writers(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_author_links DROP CONSTRAINT articles_author_links_inv_fk;
       public          contosoAdmin    false    275    3840    251            �           2606    25530 2   articles_category_links articles_category_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_fk;
       public          contosoAdmin    false    273    241    3814            �           2606    25535 6   articles_category_links articles_category_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles_category_links
    ADD CONSTRAINT articles_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.articles_category_links DROP CONSTRAINT articles_category_links_inv_fk;
       public          contosoAdmin    false    273    243    3820            |           2606    25395 "   articles articles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_created_by_id_fk;
       public          contosoAdmin    false    241    221    3764            }           2606    25400 "   articles articles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_updated_by_id_fk;
       public          contosoAdmin    false    241    221    3764            ~           2606    25405 &   categories categories_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_created_by_id_fk;
       public          contosoAdmin    false    243    221    3764                       2606    25410 &   categories categories_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_updated_by_id_fk;
       public          contosoAdmin    false    243    221    3764            p           2606    25335    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          contosoAdmin    false    229    221    3764            �           2606    25490 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          contosoAdmin    false    265    3780    229            �           2606    25495 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          contosoAdmin    false    265    3794    231            �           2606    25485 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          contosoAdmin    false    229    263    3780            q           2606    25340    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          contosoAdmin    false    229    221    3764            �           2606    25415     globals globals_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_created_by_id_fk;
       public          contosoAdmin    false    245    221    3764            �           2606    25550 $   globals_components globals_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals_components
    ADD CONSTRAINT globals_entity_fk FOREIGN KEY (entity_id) REFERENCES public.globals(id) ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.globals_components DROP CONSTRAINT globals_entity_fk;
       public          contosoAdmin    false    277    3826    245            �           2606    25420     globals globals_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.globals
    ADD CONSTRAINT globals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.globals DROP CONSTRAINT globals_updated_by_id_fk;
       public          contosoAdmin    false    245    221    3764            �           2606    25425 $   homepages homepages_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_created_by_id_fk;
       public          contosoAdmin    false    247    221    3764            �           2606    25555 (   homepages_components homepages_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages_components
    ADD CONSTRAINT homepages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.homepages(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.homepages_components DROP CONSTRAINT homepages_entity_fk;
       public          contosoAdmin    false    3830    279    247            �           2606    25430 $   homepages homepages_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.homepages
    ADD CONSTRAINT homepages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.homepages DROP CONSTRAINT homepages_updated_by_id_fk;
       public          contosoAdmin    false    247    221    3764            t           2606    25355 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          contosoAdmin    false    233    221    3764            u           2606    25360 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          contosoAdmin    false    233    221    3764            �           2606    25435 "   listings listings_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_created_by_id_fk;
       public          contosoAdmin    false    249    221    3764            �           2606    25440 "   listings listings_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.listings
    ADD CONSTRAINT listings_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.listings DROP CONSTRAINT listings_updated_by_id_fk;
       public          contosoAdmin    false    221    249    3764            n           2606    25325 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          contosoAdmin    false    227    221    3764            �           2606    25475 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          contosoAdmin    false    3776    261    227            �           2606    25480 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          contosoAdmin    false    3772    225    261            o           2606    25330 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          contosoAdmin    false    227    221    3764            l           2606    25315 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          contosoAdmin    false    225    221    3764            m           2606    25320 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          contosoAdmin    false    225    221    3764            �           2606    25626 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          contosoAdmin    false    221    283    3764            �           2606    25636 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          contosoAdmin    false    283    285    3933            �           2606    25641 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          contosoAdmin    false    281    285    3929            �           2606    25631 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          contosoAdmin    false    221    3764    283            �           2606    25616 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          contosoAdmin    false    221    3764    281            �           2606    25621 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          contosoAdmin    false    221    3764    281            v           2606    25365 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          contosoAdmin    false    235    221    3764            �           2606    25510 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          contosoAdmin    false    3802    235    269            �           2606    25515 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          contosoAdmin    false    237    269    3806            w           2606    25370 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          contosoAdmin    false    235    221    3764            x           2606    25375 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          contosoAdmin    false    237    221    3764            y           2606    25380 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          contosoAdmin    false    237    221    3764            z           2606    25385 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          contosoAdmin    false    239    221    3764            �           2606    25520 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          contosoAdmin    false    3810    239    271            �           2606    25525 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          contosoAdmin    false    237    3806    271            {           2606    25390 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          contosoAdmin    false    239    221    3764            r           2606    25345 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          contosoAdmin    false    231    221    3764            �           2606    25500 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          contosoAdmin    false    3794    231    267            �           2606    25505 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          contosoAdmin    false    3794    231    267            s           2606    25350 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          contosoAdmin    false    231    221    3764            �           2606    25445     writers writers_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_created_by_id_fk;
       public          contosoAdmin    false    221    251    3764            �           2606    25450     writers writers_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.writers
    ADD CONSTRAINT writers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.writers DROP CONSTRAINT writers_updated_by_id_fk;
       public          contosoAdmin    false    251    3764    221            #           3256    24798    job cron_job_policy    POLICY     M   CREATE POLICY cron_job_policy ON cron.job USING ((username = CURRENT_USER));
 )   DROP POLICY cron_job_policy ON cron.job;
       cron          azuresu    false    4    4    4    4    4    4    4    4            $           3256    24815 +   job_run_details cron_job_run_details_policy    POLICY     e   CREATE POLICY cron_job_run_details_policy ON cron.job_run_details USING ((username = CURRENT_USER));
 A   DROP POLICY cron_job_run_details_policy ON cron.job_run_details;
       cron          azuresu    false    4    4    4    4    4    4    4    4            !           0    24785    job    ROW SECURITY     /   ALTER TABLE cron.job ENABLE ROW LEVEL SECURITY;          cron          azuresu    false    207            "           0    24806    job_run_details    ROW SECURITY     ;   ALTER TABLE cron.job_run_details ENABLE ROW LEVEL SECURITY;          cron          azuresu    false    209            .   �
  x��\�n�}�~�"��@E��sQ�/E{��(�I�Ȗ!�IE���8Tlsd��d�E
�|��3C�3�v����v�\��Nm�Ŧ����]U7�bը�S7Ů\.��+W��~���RU��v���ۮ�*u����kծ�rו������e��H3>�ͷ���h����w�us��o~��&�b���"�_�Xr��	pO������a�X3�^;�-6��j��=c��S�1���P�wE�۱qm٩_����/�U�U�Fuů�7����}9�i�X4��F�ϥ6o�M	u#ظ����Xo�N��ŉ��~��C��ɣjj0�rڙ<M'q�s�*ۮ�> ~�X%vV��cSכv������2�톿+ۿh�}�����ժ�l�vm��c�խYd�bUv�"+��(�R?i�s�^��]����N5�R<׍�dk�^7�~�^�Y)�&q3�i�h��F4`��tW��9Z��Zm���45�H�Iܘ�͛�-]_>8f �d7��g�;4J`�}l��C̻��(!��� 'Y��%�bqL-��7,ěOs��l���(^^�b��9�8Z�Q��w�k���RL��G�r��;GƄω��8��Q��x��Q{D�(�������I�$$��Gq����	�(�V��q8=J����� �uB'�\��V�zf�*5$'��)m��6أ�8�&Bڤz�{?�Qݣ*8T?	V�B' j~�=R�2>&�eB�Gu��x��,�	�8�V@�=�ء��ʘT�9��Q�#5��w��ǰ��A�Q���(�/��}�\BĨ�lp�{�U�My�8�*Rj�Y�)���|�Ajч�s�9�����ȟ��m�����ҧ	M�����&�1.OӋXN�đ�MЯ�m���@����Q ��z�mQ�ۧs
bj�8*� T��3��7�l�|��HF�=�������)�=͎�S�����>��lo�%��@�l������EIB�V��E�j��q�G8�D1�8��G��޽]O���#�����f�7J�"78>�	j?���,��N[�����3�e3���a��4i#FV3G׃��W�4RȨ�����ڧ�q{��^#T�q_�Z�}����˘��G���W�2$p��7��b`K�$	yD���fv^���낖r���|`����ryN���.����K����#��^<j��n�{��tI묁G���T[�ۜ4vʈGs[�tK�Ӡ�*�F
�V�]zoc27Z�8ؾ���q�����h�GZ���{#c'�8�㑂�7�=�Itާ&��ј�]oo�<��z����<B'CjT��ol�4�$����)7�F�瀥 bJ����޸&� rw�#�o�Li�d�G���hI��v�Sͦl[��� ����Gl2ɦOFM�\�Mf�iG^�fm���o�Z?)[�ߗͦ�3�)h��]U���eSO���J}˨�cp����N�h�s=C�}҈�?���wn�h[R��؈�������vU��\F?��;c3����G�	�9�� 5�bN�]�q8=6V~<{�)s��8��}��?k�`1pF2��(u�/�*��R��ћ���{w�9Ps�GѺ�n�u�9U#�~ue/�"H$��Go<ʏO�çS@S��8�u��S,���GK�{�?m�H��O)F�!�|��B��"��E����u�����F?=�U���fK�s���?�����ᔜ���|�Bq<��	����޹P<iE��q�"���uT9^�$��F����g�
�(r���8�{���3���H�zqT�H>o8��Ub��i#��oax�4R�m�8����Ǚ|���Q	qT�H�g���}�{�Q�#ʇ���"	Ă�mG���j�J-����?J����ڈ��tt[�U�V}�	V�������tD��lWo5r�Y��}w^�}��¨�F�޵�ݾ�ֶ�?��B�Y<��������'G���S�hđ�y�4ǚ��Ȉ#�(��w�,l_��ȩ`ep��O����/AF�*|��#ME�s7�V��Jx/7Q/���HN|'��!��[���\2��,t\��A�w�2��eOI�9�H��A�rg$����1$��GܲK���Y�<!��=?Su��o�5�9$91A��0!�U��	D�Ky#nuج���I@P[TĭR<�4�0����J�����̏��TP^�j%^Z�c��b/�VM�Q�ߢS�]����K�3l�� �y�㼔�����b�\lWj�����)\�F�j� �yO���R���V5��C��yR���|��z�J��#u[�u�X�O�)�@PC��e��ŉ�_R������;;̚!���Y8̳�&��Q{�-sj��Y�1�z�G�r�-mvL;7�b��Gܒ�c����{����qK��Ώl�j�iydi=���s)h����vnd�.-�rqK�Ώ��55�ni�1����g�(Z�[�q��=���)��Z��=ǝADm��܂���u���5��N	��'�Q����<%P���Y�6?��jf�s�3j������<�ARo�!��ɸu�/��ҟ��"�!nؤ��}�<2'�+�\�]Sl�{�����}e}0h�m;�|J���D��?�pq+�L	PtH���]�ҋ)z�	A�*�N�?��$���JdS�:8�I)���_�|���^�      T   �  x��[�$1��Ì�~ܥ���,-��j��Y	��T���/��RqV���cks�8:�'�.獧��"�n���.�H~}o�ȥ�չ"K�۳"[i@v�V��;�(��y�&�|J���e�1A�6y��+fLP���i�b�2mvLP���i��eڼ1A�6_��e��R˴���5m!�Y8��䰐-R�-b�#r�+��'����R�B��L�<���d_�d�V���U� k�A�ZWe��S��=�f!k��0dm��i��t�y!�K��iFcӐ���4d��6Y��MC�~jӐumӐu��iȺ�iȺQ�p�$��"��ؘs �>"�~�"�,��x��D�C�mx0���#"��S:� �ic�ls��s��\��<��]��B4/#a^>�ixK�{ӌۺ�!�ݺ�!�=��!�e�LC��tMC�7�LC�ǫLC���������/_陆/_�}�x[ϴU�i��]=�֎�$�����a6o1u�♸<�p3�9���Ť�N�JՉc)����1���R�v�[
�N��
��Ļ�f���+ŉ)<���kŉ�)�;q1t'>��������ŉ�)�;q3��[˜gz����i0�����R�pba
N\Lc~~��^�/�y�;S؇~�����:Xqwp��%֦����Н؛��S@wbq
��:`�|��)lwp蠼������fq��+�\:`}��)�;�<t'���_D��L�Z      2   �   x�u��n� @g���(��-C�.]�\�#9`qG��}I��V�%�!�h�^�p��K�%��D=��?�#�s�=<0� �n�R25�$�ev��;�z��d�0���VWg��Iy��65�*Vu�-�c<�KQ(
C�n.��L�	��L��)����^7y���\�}�Qئ�EU���������E�_��øɛ�:t]�4�~k      0   �   x�3�O,.���t�HM�H����,��%CD��K�2��J�R�SR��s3s���s9U�UT
\��ý��<\��<L+�����L����M#�\��]RLL�C�C}2��J+�B�]�@6Q	g�2202�50�52V04�26�24�302�)������ �6�      V      x�3�4�@�=... �      D   &  x��X�n�6�=y
�@lcF��خ�4-7��͇�,���$Έ1E�$eE��w�}�>ɞ{)���l(KC����s��b��a�]*!�S#�+qꌚ��}�D��چNy�i^�_�.��
�u1˲�[e�TtJ��>��ʺN��p�,��!39��YE�������b��/{_.���[d���3�ϳ�����+��`or	s���[E~���]?y=�L���­ı�Ί��|��OX)�ʉµ�E%�:�sޔ���������6=�jc�^��W�Z�9�w4�GG��_�)�����d�����b�-:��Zq\+��Q��i�h�[{Y��T(�j����S�u���3ɐ�XK�?�KiKq6�AT�v��:�L�*>K�kg�U����ke\S�r�}V�X),Y9_�(�\\�(����tl��F�J���&�>�!�F8N���J���v6$ӆ�<+���+z�5}Z�Af+����
��pժ.���U�:��U�؄/ww=?g�����kX��:E���:m"�^��,͵�H�����ݹl����Jַ�(�u�J7��2�ϻ��KKNK޺M����+�'ِ�E��ɯ\��k�S$��ĖX�Nf%���*"���Z֚c�s��J\8��~]�����%�����}0k ����ȶ8mW�Z�팰{s'B��`e��f O!$� {!�&�`H��J�A�ڢb��u��ԧB:�0L�-CAǨ�R���#�0Jz+j�A7�k�P��*:�m�Ɖg��b>T�� ~�7N�8~����S鯥/ŏ�x�����C��/dN.�� hp��}���T���x�`��BP(�\[��	E	Ӄ�k��F|�j
��)S����(�pȵ3F� �҈�i�s�e��S��~��VD��X=98�������@_<��u]�#�m��v������?|�����Ο��r��'s�{"�B�]� ��B�����1x��}��j�c���k�c��"�^��gßi�UkL(�R��v��_'/R��|Er�{Dh��K�,*`/"Jc^�f/UQYgܺ[/�.���

;X]bM�����"�#r����8�g-!��[����.A.��@S���� <�F�l�q=����Ud)��.D��I�Y������P54MWg��ڦG2\-���|�F�!��n<�0��辡%�9Q�uv���
)�� ��
���!��^����e�qg��*b���69��E^kg���H�'c��߬=�a�r�n����}?D��[����u�֢Qp=r���B��D|�
GN�P	ҳ�h�Tr@ �
e�4AjJ�=���Ql =l�Am��YA%sE�E�P��D����(|n���+	sij�A�X�=����]��DKه.�NNy�!1�LqV~�@b��5ʌ*5$&�)���zꝻ2= �`%5b��Jy"W�Hf�!�A�Uv[J�;��mٲ��jk�@�(��ݍ*8�(+�Q��]��c�OU�j�߹��ngl1���g$��Uk�{��~S�-���Py]7�:e�h	��ƛ�O�9�k\I��	w�ȳ�-(�P���vİ�2C���FU�p@�0�P��^i��6�=��Y�^_�TUk8vG��"u������!(+�k��-�(d�d	9�gP�Oe	�SR�4'w�˝�����ptg�v�$t��
�-��x���7��@3��  �Jx�U�ܟ��H��v��7�f�Wt��>_�EQ��e�U�M�g�]�*�(��=��`�p|�<��h�X���`��D�a�H���V�G��i�#��1u
��a���lI
�i� 	�u>B(_���u)��r�*�j|���c�C�݃K���lc{������H�A�+a&�e@����g<�Hd5��":��J�@�b�&>�Im���3�w�XEB�g��i	�S���ܓnB*���ʴ���d�O��?�ߠ�w�+�P��RIp��m�2���8>$����)��INf�!�5����y(�J�9AJNQ+�D�Y%Q�$ĳR��q/�ԜPꮤ8�:8�q����0 
p޲�8'�y���D�7��N��А�G.ГP����z�!����Ͱ��㖊�h��.����kJ�Bw��%�c[�0Ր���_�E✴x� �4�&B�E=}��
G�hk	t��5�����M�`��a��%���Y��ktQSdG
�1ҵy@�1QVJf�[k�/�Ĕ�l���Ay��=z�����g�?Qy��cܦ�ЕJ"K^�Qk��i�3!dG��3�1�4ڧ{���J7�y-���#_���}Ւ���lBO4#���CVpV��D7��.�t�� ҁ��80���Hu��S�֯%��c��tK~iu�0��i�����d��DPI�j��)���uj��!�7��L�B�,v���<� ��l9���6Yp],�X�Ju�e���-\%a	[A�׏���h���t��X�	�>Y��*'����y���x�,�hr$#����>�����$]̄
c�#Xh�2Ow*T[i��Y���ލ���M5q���/-*���-����e%���,H��T��,̦^�H�\*P<�{zg%yŘ���VWA��O1I���COH��I(�{����tguM�
_���&�$�F?idfɞ���Z���g������c�rM�$�s�$����-��.Cx1~y�_����ꌮO�ܗ�4�Z
����O�#=�צ^Q����M�˝�q�t�;�%-�h&#݅�N�1du~1̞����H�X����O�,��t�f�K�L,Ɓ����b�V@z� 7��?22�U��"M�$�Z�V�U�G鈷P~ 𻈒��l��&}�.�������c�T�7�|�X���Q��OEP���Dΰ� 4fj&g������1�^ �?:�����:�<U�n��}e�BC��xe���a	Ol�/�U���ܸ5Ϡ#���7c��䃽/>���+������IN��d$:Y�!� M1�!*fR��K8��O���2}5�hHb�E%��ͤS3Z8K��g����x��������s��      f   /   x�3�4�4�4�2�@ژ�L�p���M9M����H%W� ��B      d   0   x�3�4A.#N#NS m�i�i�M���6���f�f@C�=... ��J      F   q   x�3�,.�/���FFƺ��F&
�FV�V�fz&��8�c���ˈ�$59B`Wi�Sb�1g^bIiQ*�®��8�δ���]�)Nq�	��y����Js��b���� ��I�      P      x�3���TH��O�2��b���� W�F      R   h   x�3���T(H-*��K�Q.)J,�TH��O�t�,N�/K-RȭTv�WH+�L�Kɩ�*$�f�(�g�d@5�qq$��r:B�&��"�sS�&�6��qqq �II      8   �	  x��\�r���f�b*׋F� ��<�y���d#v�����9�5�"��0�dr5c�����?������`�z{0O[sH���y�.w��L�	�'�ܭ�ӽ�[|�����`��C=��������n>~;>�w��{1,l����6ba#�T��9˫����?4�@��eSo����}o���h^m���k�D�ݣ>4_�=���Ӿ��xQ���~|�˗��q38S�?4hE�~6��^CHx1'��'�5P	�.�*IC�Ɣ�q��dN���B)�"��;<��Ni����Ynuz^���p�r,�v��\t)!L���xǗ4ؒvd�`(�I�% 7ɟ�Mֻ�^7���PLY�IJ�WBL.(F��u���+�.$G��Ɖ|�I���e�3����c��|�^B�PE)���؀�趇jߛ��E#&g=8^�=T�x%"d~}���:���p$T,)�����>C�+䃪�Q_��r5�ߧSD�[��:�R�I�HR�Jׇ�e����q;&P�@�K�"#K��U����<9������F���v�8.eS����@���^�W��$C�+�`Mr �������߃�*�uoj�9�v$��������]���*�LҌ?yFB"��i�W�r�0y+@jaI��I�d�4�x���:}�W��]�!]zV��"��8�t8a�L=!IgO�BP�=���})u�3�N!�.��	���Hh7g�5�
��
I��$p��O�������HYVq�b> %��=%���dX��,Ot�<ާ�>]��nSo�S�n�Ƥ�mڭ�#� ����Q�����J��n{=!�h)s�8w��A�������m�&�*���I$#Դ3P7=X�o&�$��ݬ�>�7y��$C��^0��B�o��C^(��ks*��/�.չ�oF%�X*Hu�Z�Z����\����[�[�K$&�kHu�F�1��:g�n`u�F����:��8�:o3T�3Wu~��+Ae����l��1=KN*��^���o�s��e�3��\KM�(2g�1yQ��%F���e�,+&����IL����P�!�ґwoج���7f >�o2�A���'ً�8��y���zk�YS��������O�`��(�h����O"����II�"��Ϟ��(b�G���/;��x�g����P!Q��+$!�����v��RӊTLu��nЙ��.4��/�Bs� t��qw���ls�.47	P?�lUh��Ǻ��+���l���;w�q�,�w|�9%��[�ۅv��h�������*È�K�&���ஷ��4�N�k��;}ح��?ݠ�MT����pl�M�B�U�i.*G�.���nt�X7'�
��	����I�����t%Q�t3��!�:�������W0W �T��X��!�_4�'{����o�ti�\�AH�`��@��4\׮�1�l� ��R�h�A���j#5��v-f��� � ��u��*|!�a^!2'�#�}��mlT=Q�("�5^-�᲼�e�yj�Zf�٤��w�>�?~��O�$��h/�
���`+C�����u��֬(]wP����<�4N�������F���B�{e^ ���:�h|�tc��2$�lٚ���U��\t�e�1Nͪ_tl��Zt���$�-:�a���Zt�Q>)�-:�q9g[td�{���9���κ�H�۷F��L�g���x��+
	ٛ�Wn�˄��}�x�7�M;�~6���^�i¿���M[�9b�WRRb^�&�=n�	�!D��&���"!Re��/`�?����Z0�a3�A�@�6��|��Ќo?�Z����9wR�Q��WK��e	)�Z��(-�P����pq:�H=�sp1衐��p�~w�h|M�c���aᡭP\ �e'�˲c�Wl�Rz�z��~�eG7!��i��MH��g\vt3�����qް�x�`sPn�����M��ͷ�«J1��J�B�u�Uی��#j!�&��V�D9-��_�:8C8b�[ ��`�r@�g|�ē �y��kn@��6.�f���<��Д�W
�8�)����`@SF�\2��*{p�q�� ���d��
C�üB�N$��/��� 8�-:I�Q[�_���{%Y�.W�0;J���
�(�(���*]P�qR58^�X��GI�����!>!r?Jҟ��G�˼��C����f{3r*��rӴ4��JA�rk=��p�[�C�CP�=��G��� �|��X��0��� 9�{lT�#�}< �$�M���K��̈́����\�Z-�,!;�[��}��\\>�_$`g�踵h๸l�J��lw#��{��������A�=��Cw��t;�;�����ùkg�5j�[��C�nʖ}��5�g?NR�VY�����	��	��~����Ɂ�Y��~��������'9N���M�B�яu�d�a��$�9�&�9b�mk���3D��)�O��˗���k      \      x������ � �      Z   �   x�}��� ���������XI�5���帄Ò엙�!��ᢿ��/�{~�Ƀ���{�a�Ű����;��'e��T����[g���p�h���4�٪��h٪�t�X����9M��8��/w$�L�ru�Nw����!���I���|��-q�U>Z�jÐ���S�_�{�J�?�è�      H   I   x�3�.)J,�Tp��O�4202�50�52Q04�2��22�352�)�D\Fx�00�24�333�)1#F��� ��"      h   0   x�3�4�4�,�H,JM�+N��LIMK,�)	2c�����&��c���� �z�      J   >   x�3�4202�50�52Q04�2��2��3�0�)�D\F(�V��V�z��8�!�b���� �2      j   A   x�3�4��Ģ����|N���2���&�d���e��s�	��1��1=&@q#zb���� ���      <   <   x�3�t�K��,�P�H���L��4202�50�52V04�26�22�34��)�D\1z\\\ ��E      L   �  x�ř�n�H���S�b1`�*�Ezg;q��-���%�$UL��H-��Uf�/��y�y��E�X�%���t#�lRE���s+�9)�pTYȲ��&if*EjC�"���)J��:����A���4���|����?9�}|9�	�kUTZ��)��4������&�Y�K�WeNFf��T�#2�U�JR5�V���W���� 3x���$U���Y�R�3�;��*Ϲ�#�:u��yE>�v�)�L�6��R�����23]������}����<T���ڔ�~����ԷuӃ�d���k�:�s������G�8��T�oB�	�2�L� /
�@8�e��Ї���/��������3���>yq�//t�~�G�/|�a���$�$Ɋ$ެ�]{�52r�pk���Q{b���Dɦփ&��Db��'#�º�rdL�#ݑ�懌d��d�*2�e�����n���sj��y
ɔ2���}
t��i�L���c��b	�U��=��&����'�+Kl]��e>QC݃��]����5��'�$󅀷Lx"f���)=pXaQ4����������c��#wNG�c�m]Z�Tu�sA�>}%�UW�x�����_���#�Tj�y���Q�Q,ݡؾ�FSY��F��V����L�o�}&1�Dp��j��|��>�wÆ��2���b5�u)�^�B�	jt� k�k�(ڀ�ǎ���;x�{x�E�kSj|b�}l��\5���Uθ�SwUƣܱ�K�.����~���p�W)�ߢ�x��Jfc�R�����g8�#�K8k�\�M����(�w��㩚���ӟ����rЌ�'5?��G����́{<F}84�I��8�G9�C9z�`�r�-�.g��+'kP���k���G
w�f�n������cu���i��o
�.ji��1z����ױ�~٩���ź֪�K�ә"�x�]bޏ{�]�Uz�"���a�]�"�����o�j� �#]ygz�����x�{}g�9��T�\�:�^��P�S�i�(��T@��+v�x����[b�[4��ܲ���l���V�-K����#'���D�.�鑚����a}2g���L�D�r�\nm�vز��`}��|5����{�9�o_�cyg��.��w
�(�C�0
<�Q��0&�(�2�����;o�G���i/���S�C�.�zM��Y+�6M�X��>p�u�����&�1ɱ�f+�~�s7���ἇk��T6��c�݉��fc�
ԥm���*U����w���M6�%�Mb�dߺ��b+V��Q��9DkFܘ�}C,����[c�eN1�f����|�<����������~ӵ�_�rw݆�P�C��.l���#s_6��:�p��c&]̯���Uux�o4NFa�8I,�xY�9;���ͻ���>�4��PIЙ�8kmc���kf��5ܖ�����)���)+FCz`��	��)k<Ve�e���vc�J[7���v�q:�+bp&5m
�|�n�f�,Q�A�`�
������܆�5�㜌��������lx�n[�-���yi��������0�]oLL��>^�;O4{�}���Y�͸�c�d��}l��m������dM���y�W�M��3s��:8�s��:�>NQ���:&0c�<����!��F� ~��y��=�Z5�kM��X\�����ab}bfg�ޒ�7��zx�8��t���J����b�M>3>��
m"�Ƅ4�j�WC'Wpu'*��Kק3D��E!D�P�6�c5����& �g\?�;n1�B3vRs?{ټ������x����R�������*�ѝ�}��cẖu�0��*
32�.Ϡ��2]���<���<?��x,( ~Q��h�o�c��5�Ș��:��b�^S�¤[�����k���
Z�*؜����q��S� ��y/wmq��ߪt,�6�!�y�Ⱦ��5�v����ɥ�M��r��Z��(��O(&{��X<x��#�hW�Ρ�0�]��.������?o��D����R�ף<�?z��SU���:6�ҌW�ٲ��w�cj~���5�m]_��o��BG�t*�c׿O��ȅ1$��)�6�6�ԍ	.�LG竡�]&���M�2�@����(<��ZHiuK���y���U�"      6      x������ � �      X      x������ � �      4      x������ � �      *      x��]{��6��{�)z�3��k��9��\r����c44j�43jI�����׸�w���~��Tw�-��z33"Y,�U�*�����2�\�|�y��f�N��U��%��TI�]�ܔ�>?Ok���WE�N�O7x1=�Ϧ��5�/������&�J.���ڠ��g��'5J�te>)	/���w�N�	��(���ɚv�@�d�5/����|��Z���<y�����@M�H���D9~?Eܐ��0�5�m�%(#mH9�UM��oIC֭&�(v��%C�<(�$E�"㬑׸�F��уϙ �[Z,@����	�!�Y��,��18��0��QUC�򂽙��|���aS0/{4�^&Ym��P�KT�q]�@����D�2:�؝��GZ��A�'(Ҫ��;�޶�A>HX�E;��0
�&���R�M�i�ppZo8�	�����x�7o�T��0����*�� 
ޞ�6�zM��m�5��ޞ���9��)��Ń}���5s�$��*�;��(Otȵ�ҡ�Z��ް��X�E1xԴC�,���P�ʺ4��@�-rB�͈�q�
�|��8��A�\��V�p��6��7�(Jm�tA�M��,��������=��-�P)D���>.)�YS\!Ͼ��q-7���G�^�rqʞ�`Q�aRT�?�؍��q<M=��,���u��1���y5��Z�Y�
����cnR�Du����ʢ�&>z8�p �%P���^���^���u@C^��-+|���+^{S@Y�}�{zt��}� �3nlˀ{���"\࣬��=����Tɓ�%=
=׌j�[�t��%�i�}t�y��;-eG��7 z6c� �z���Ʃ*�������R��,��>����YA�]PZ*%u�����,��&�'�P�\�y�f'�Z1x�	{�KB��f�K��⼃�K�+��	�)נީ�ă����C^pĽ����EV�W�EYcd5��##�DZ���b��#�N��#���e��jz ��Wv�[-��_R'^��7-��VG�İI^C�* �z�L8���yK64�h)E�����Ybۅ��銌q�� 2�i�e�-+��5�5��Ip�,he��ss���՚,6YR=u7\��eF�0 �5��^D�R�2d�L=���=���V~����!9��`�I^E���4��4���]~�0%CLޏ�KF��_6+�na���T�
���� B)� ���ɷ�����k6�!$�҉��w��7o��r�� _�,�Z��9���ͫ�Y���]��F��I�K�L�8Q�*��(�5�v��r����f�ȑ��eF����W��z�:i���_Y��
_��<��6���+�S�Jc�+��;�4��P4BѧE��O7���^�P�`%�Вj9r�^�#��K�,$.��"�~����G�t��Ю�2�����H�i��K�T���y������sUc��?6Znv�sK.}s+m�@�j�K��N���� ����_Ǟ��W�/É��]�ń7��ai���ݟ�(��0��EA�#1�պ���Mn�l��~�E���Y�N}���l��7I��ІFЬ�r?z��as_/r�Y��m�h�>m���rC��օ���%��Ds�ہZn�:@��劅�b"-�VGDP�[EnA�x6������wtOى�[�뮋o���,�"�9�?f���Ձ��-�U��7��}���F8���h�@9G�]-��.��v�^���	��g� u|R�>��Tмsf�*��$��G���5�������٠ɛ[r9�o֨��N����-Ί<�R��d���·��bM���N��I�:W�q�b_�rMy��>�
���0T�q�*ڼ���뙷��	�i�e�������nՈ�#��h�����^��!�����)����z�%���� �'���4���"20$�u���|B�.ƺ�H�Z�F�ePl�iu���������]�2f��p/"�y�D��=Y��u%*���NW�tۥ�\{�Gw� ��'�I����ӣ�1$6��3F�av����������!N�����`w�}�Ѩ{�cCG��O�Tu�W�J���q9��rȑ�����?F�5���C���[![�����e��%ZZfE��-qK�*-0���m��c�Ė�1K6H';L:��+Ohx�+�'x���J���\���ꍪ��ϑ�+�/WM�ˢZ'M�TJ?�W��[��Z�}��g�Ж�x�d��7U�{�e��1z�:�kS\c!����)�eN��9e�iE�� kQ�+��i��~������%N�q�0���k?OP<)FR��.�]*��76o��/П��d9L8�L�|��%��9����6kj@�L�b��_4�d�������y�@�ti51�-�ti5��#sm�@!���2��o� �u��۝��������������)0�sI	���U$l/#_�gF�E�r���`5��\�檙�� ��h���� 0ڗ����0�H�+�ڕ�ڔ�y�B�vg����=�t�~��,����4r���f����A���E�#��x�5�@gw�v��?.l<�{"_���b(�VE�� ��>�gY�&|g�E�DG��Ӛ�����ֿ_$����tQ%��I�x���0]�(/|Hz�N���?�Ӻ�l���n�hd�f�	�;Н�AX�W��i@0}�-}>W�|����b��%$MO`q϶��l����ϑ�!r��`��Xh�i��p��	i:��G0t6w��������JxLK���[���i���%���nɄT�ʄ4�Eg}*�;%%�v[9l��^wK��x�G%X:$'�CyM�p��˔��3���;�{!�ֶ�9�z	�
��F���d���ʰ�u���/�I�e��D,���;m��.�	���,��SG�C�*� �ojAi�l̷{�s>�Ej����M)��lMl��G+�X�ߺ4ĩcb�U���5��#�8 �ߋI����ՋT��K|~�TN34?�ж�������T�$I���I��m6
�X�5�Z}n���S��z;�G��d L&�nh�.�d�I�)�8]�ծ	�F���/�e�l�(�Q�ˢ�n~A=ab!I�-G?��p���$F�e�;�����XAmD ��	�"�4�:�4�b�X�1�	P5�?����	+�@�L�].�����ҷ����F��Ƞk�C�t��m�1`��GǼ��+���Ҽ.�M�Co���OR�C4�]�k̾��V[[���Mr�H_%�H�E{-膕���X[f��X5Gc�����ݨ0Xa��ncz��7d5|�6&3 �y��a�7��7��!���#���-���s��<.e�-����~*�bb^�¨��S���`��׺�P^%�ܬ&������ykq]Nյ?��U��2#�����>�Ӡ�I��������n;��`lB�zd ��� �_kT����_��^6�NEӑO��-���-r���G} ɺ���]���g��x�s�ln�Q� ���1��Շ=T���S ��.6�-f�g��ѦC�$U�~�n��bR�s�� 7/��`܂�I���bm�	�6:/�"�j��V'语�$/������/Q62{����h��WK�2IqsP5�����<L='�U���o���}��%��t�d����Ѷ�\���ϙ>'`���Bu+��=��`{�}\����P�I4�P���A58����c�7� 5u�ia�nfCگ�vn��t�@��T��y�8A4������=�᰹�=i���?Ϋ���n��y���x5�]{R\�Nz=��)����;'ܩ�����\	?��J�h���@Z����k�p����&�2�"�
a�|R��JW����e!�{�NΝ3\yPT�J��oO����͖H��e��D�9j5�,�@D��=���	Y�7���"��qb����h%�NN���(��3A8�7 Ѯ˦[%�~!��~]�eQf5�&U�a�E^�AI9�=����O��`P���H��(�b�i�L
ۭ�T�w2q� �  7��y�A�C��E�cis���.gk	��d�k�7�<o�po"{��}�3N7�1;3�˟Q�M�|����ϫ(�é"އO+�xúRL��^� R���a<;�@N �Y���Y�a�Yid�r������^��	��� ��\��LF��$��WJ �)6���p�_xھ�*}ķ��������=g�塑���E������~z���J�[����_Qݳ�
_�밝Mii�&��\;�5�����ӎb�������`+��䭷z������F魞�L����ï�e�Sj��(KONx�õb���2r�����N�)�i9?��0�ׅ��Q0F�Q���:�&K�A+Qq0�D��(+QN8�7�0�eP��ҤĪq��q*ˢ0���������1������e𴇟tDPN8�7;����(���E>�['��gج�g����	H�mJ�(;�t�Q��`�
xY��I<�<�
��bti�S�|�^��˰]!�n}��aDm|�1W]�����*��g� y�!U�0��(��hm�!X���({(X��eܑ�q�1�>�v2�u����r	؍��V���,���k.]#���x-=�m�)��\C��m��ڃq�����;X ����Cw���o�/���{����[{~kψV�|ZQũU�����7���y��A����0�UD�� rrF�M�G�;@�+�S+���^���A��R�<K�G���x�N%Z��g��U�5���:�C@,NY�5�F�cbE�}^�l��Y���M�v8��s:���6:�{�鸛�t�����%a�a3a��N�(���0WY��b�M$:gcw"R"��D�"�p��3kк��D�9U��%V��7y:�"��U��?�<=�Q�Dt��O�'9��& e�g*����5J<�춱�4��hl4��/(+3/qX����7��ɊH�bҬ�fB�w�5��Rmfb9��IrA��U���_����[N�ߒ��"�����f�����	�4�'d0I4Y42��$��դ)&l��~�UB���}���/��~��������W�~��)yb��j��W��>�*䝛	;�	���*]����c�0�;�=I�b�7�1k�؛�[�K��mO��Ur��r|�Y��6�&�3���J3�^M�[�YcsE��x7�hZ��9d��ݳ��$WS�k^��N�-�[�2b��C�j._]�J@$�"W��M�A�H��d�:�%���`fA��0�&�p1h7���nkĹ��]��Z��a{�5/��XK�aʯn�V<=�QB�ToAު��n�Y�eGb��/08�,b䍠��>���%*��X����_�H���oݢ0
���X�o��,x�T�v/vv��'�7��d�J�[f��(��Lf�_/0�:�E<,�̣�"��8q�@+�3�yvDE9�Q��������:�*9qJ���Ø�	�k�h?P���ڧ�[��R��Ì�0X|D�G`��(��?k��k�~&-I�(�Oy�	-_J����Fws����I~c�3�X���ZX؀��$-*4gy0�t#��4��1���Bm.��*;B���<�����G�$ ��T�Az#ht=`���goS����A�@h���4�9V~��Y~w򐼫OMB`-:��A�@ �����t��LG�	�2�Ol��*j_�?��O̠�g�*��M!\tsh~Z�hf� ��cؑ1�O�
}3'Q�>�:돱W�����C_���ҽZQ�'�B,�a�v�[)�Q���p��.�s�WS�Ѧ?��]hEQ�)��V�������Q� ��+g���|���d�浡{���!����&�����yߗ��Ҡ�O������܇�9C���H�Qu�c(�U�7����p�F�;��1G��u�q��cU����A�I�kC��wL1�����yp��n\{֍J��CN�a~�C�a�������/�O�{7���s�pgy-}���T�����0/9Ҹ���%� -:��3 ��~Kx��\�W�\36��jń�K��*�k_�<����6m��Ǩǣ�T;d{�q߁��Ü
��iGv�z�����/⃧=��*�t?���-��5g�K���C��@����N��w�v�%�^-H�'��I��W-��Rv$iҽe�v��ԃ��@�߽�w��b��� L�~j[�Q�
�|�\t��9k�P� M���3/ 9���/�2��sB}r��`S�q��&��M~B�\E������ņ��f�����iM���Ug=��>?T:���p�?���$MQ]����1]'�_Sa5K��u��I�1���N����W��]F	�2�	^��L@�SeQ�C���z��Q�ρC_-\���@\����C� ڛ�(C2���nw�@���?��bTwe�;���\�x��6����r8���>'gi��sj��/�=hO�tI@�!H�ýs��J"�ʯQV�/
/p�ʀfYY���-k�N��/<e�E^�ῧI�]$�Ք�|I�{�M�Te�IJ;dF37-�	�l��L%Y'^u�!���`��Ȧ ?��ˢ��50�B��y�m��f����W��/k�+nj�皇5N��.�M�p�(��}�Pd[Y�MY0�w�i� �Y����ng�u�UYwt����L5j}�yY�s�􅯻����O���d��C��2���Ц��W=�kH�jG�0��AU���l�Q�3� 9��oƏL���]�):�J�E��\,
j��&��L�9K�u�����9Q��)-Z��§���jC��c�yd77�Z�NacuF|gb�fh�2N��5:r��QJ�{��31=��P�`a"��[(�:e�T���>�	j��u�~}�X};�����L��˯pJ�ϾC�*�y���bC���������{�#�{0�N��J��#E�=z|���{��=������M�b�ɚ�M�6��/��JY�      (   v
  x��O�������Hq����d�-����r����Ei@3�,���ޤ��#�b ���Jg��[������?G�������bt�޽�r���a?�ş�s�So�8ğ��6�N\$������!�Qv�[�H(j���{0|�1�%!�/&�{��9���_!��勐��"��z�qE/��7����^��z�;����du�A�N4��?*��6$�Enp��7⽈�����
���#a4�o������T���J.�k�� ކ�EK8����Q�gJ�U�}����8/(yĖ��خע�Hb?��HҔи����|ᝈ���>�$�w���^�7��ϒp@R몐�J�l�x�0�q�Ïe�U"��t����FJY��?����|������g���M{��A�I�4����X�0*�5'��C«!��#H��59)���/�~��$/a8 ��{�w�.13���U�h�B&�1������HQ��5Cz�_�	�R�]��y����;�R�cF^G~g�u�#"h�Bi�DY��a1��kM>�4�3�'�T,����H��ˣ����F�6���T@�Y
Ƅ~��}�����Ҋ�O+��`ZQ��V�2�v��]QZ���q0�@O}v������"��o��1���l�x���8��h�K�&��
��>�ra>'�]�+sN��~]#"��i�$�ْ��م�5���E��ւ0�Қ=˗�n�M#J�/�9� ���8CBg�qVv.���Y��,k�ݬ�tW2q�7]pq�J��������	9{�Ն�c��G�y��#0w�w�8K"��X�K�;�b`&���l{ J��1T��j�$��*�8�紤5&9����7�������������'V6�ڦ����ةq�ݑsc��-��Šq+�!�S4�|�^�_˯�=��V|*�DBA9�T>�pC��AU�q{D�/�Pz����t$���M.#�#�on6��&����G��|p5����������#�Ȑ�%�����(q���F2��L���������B5�+�^��ީ@{0.�4a=c+s�cd
;��.����F9P s3\`0�͏�� EX���e�"��]��5n�c�ż�xx�<̒��v�))�B��`SR�D��G�D� 6`/u�W�@���f�ʽȹ�Mz��9�^9g�䩯����x�,�;�����Yb9�
��	h�#���"G�Tڀ��Y�u�9�"�IНݴW7��4���骼�N\�T
̏��X;���"��n������	���!��,�o������{nS��\.X�R�l���͸ƘE{ʈn�j�O�[R%��%���L���^��\Q���t:�;�ڢ�>�[QH���h�ĺ�-�	C����)��߱� uŀ:�#NоoE�t�R�[�2�	T��\�E��"br���^��.=ay�b��� [2�BfM\��|�p�E��(=Jo��=~��p1]?�no���CR'�&c�B'�:�o�({����@9]�C�����%t��I�spp��W�E|�-�0Ύ[y3�8@����"n��t����e��Ed�ne,��G���q>^׷�����5pE���o|���`�5�O�	��Q�"��>x���=*� �Ŏ8��oO���
0��R�+?=�fPhYd�9�	���"?"���ۛ����l@C�ǎ���!��m{6�Ё�]�P��z��WRU���y�N��҈���R����?���/�0x��L��T�bq�X`���[@�m2
�m#l5��_�.�geO�p7�N�A���p��4�t�0S����-J�j��
Q5�0RM��h���M���P�v����m�笫��6�����������9ϴ��WS�T�
�}fo���T[?�V�s��͚�����բ7�4����`�lu�"z�	ǿ���N=��փ;M5��sVu�|S��Q����9���7J�� w�]����®]��ъ���C!����)[���&��'�GʒC{U%;~�[˛&h�����(/�9���{-Ч��@�Xj�U���<�r�nH�2�T�+����m%1y�Bl2Q��t�E����ftN�whkC��ZH%�����$|��a���`�����ɒ���nܙ��i�I){(�
1��ݣug	�;nK�g�~���6���]��`k�@�K{�;r�����L7�"��ܾ�����张�~ U�	4�ԝ�@%u�����>(���'��J�p���7'�G#=�R�.]��z�G<��r�SMʕ�ƌM[�о�Kە�]?�7u�MsH�Ȯӛ1Ѡ�	hő����s�o!�[N�QP�t�᪲�d��*�ܷ|YH��(G$a:i	���>'Ȕ0ј�-9��Θn��*�q: �����u�bJ�]�ry�4<sc���e*9��EA;�_�|F���k
�456��JO���g�	E� �7w�XmN㻨�*�6\�o����5�Q�HG�� �)i����iDN�t����b�D��'�9�8��X�|��������7�?߼����������޽{�{������#�v�����F�o�s����߽~��_�W�4      &      x������ � �      n      x������ � �      p      x������ � �      l      x������ � �      ,      x������ � �      >   q  x����n�  ���}�������m�j)%C0@����mv1��C��w@�nz}��0v���]/\��W�x����7R|p�o֝6�DxW��[H���6�l��6<zR�':�PƱ�{aN�W�Ś�rû?P !����sB*�[�Ә/�� ��A�O~zJ�*V�l��k����Zy���o��5F�a!��cz�e$�ǳ2�w�k*�"�k)���O*�W��h$oN��r�x�\
�lyҺ/�X�A�^l'z.x,֠��.�Vp�+?h���+�z~�K�f$��G��V��Lj&�h�(��f�S;>�D���A��$C%��������@�9M��V�M�A��WI�6I��E�!f�U      `   u   x�%��	�0C�oy�R�y����b��=�b�_4�j"��cVFubWNu�WV�/��%�5�4H+�mu�Y�����empX<��ws�M�4x-�Z�F�R����O�R��d�{"��#�      @   |   x�3�t,-�H�+�LN,IM�tIMK,�)Q(��IUH�,K�S(�WHDV�PZ�Z�ǉ"�id`d�k`�kd�`hjelhed�gfi�S<����8J�r2�qX[��������L-p�Cl����� UEe      B      x������ � �      b      x������ � �      :      x������ � �      ^      x������ � �      N      x�3�tI,�LQp�O�L�R�S�K�2�2�9���uu�L���-���L�q����gpbQb��Sbvjg1��b4��8�`cR\k``e`�gdd�Sb�	���`l�Sbp� �#Wo     