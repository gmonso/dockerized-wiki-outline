--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

ALTER TABLE ONLY public.webhook_subscriptions DROP CONSTRAINT "webhook_subscriptions_teamId_fkey";
ALTER TABLE ONLY public.webhook_subscriptions DROP CONSTRAINT "webhook_subscriptions_createdById_fkey";
ALTER TABLE ONLY public.webhook_deliveries DROP CONSTRAINT "webhook_deliveries_webhookSubscriptionId_fkey";
ALTER TABLE ONLY public.users DROP CONSTRAINT "users_teamId_fkey";
ALTER TABLE ONLY public.users DROP CONSTRAINT "users_suspendedById_fkey";
ALTER TABLE ONLY public.users DROP CONSTRAINT "users_invitedById_fkey";
ALTER TABLE ONLY public.user_authentications DROP CONSTRAINT "user_authentications_userId_fkey";
ALTER TABLE ONLY public.user_authentications DROP CONSTRAINT "user_authentications_authenticationProviderId_fkey";
ALTER TABLE ONLY public.team_domains DROP CONSTRAINT "team_domains_teamId_fkey";
ALTER TABLE ONLY public.team_domains DROP CONSTRAINT "team_domains_createdById_fkey";
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT "subscriptions_userId_fkey";
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT "subscriptions_documentId_fkey";
ALTER TABLE ONLY public.stars DROP CONSTRAINT "stars_userId_fkey";
ALTER TABLE ONLY public.stars DROP CONSTRAINT "stars_documentId_fkey";
ALTER TABLE ONLY public.stars DROP CONSTRAINT "stars_collectionId_fkey";
ALTER TABLE ONLY public.shares DROP CONSTRAINT "shares_userId_fkey";
ALTER TABLE ONLY public.shares DROP CONSTRAINT "shares_teamId_fkey";
ALTER TABLE ONLY public.shares DROP CONSTRAINT "shares_revokedById_fkey";
ALTER TABLE ONLY public.shares DROP CONSTRAINT "shares_documentId_fkey";
ALTER TABLE ONLY public.search_queries DROP CONSTRAINT "search_queries_userId_fkey";
ALTER TABLE ONLY public.search_queries DROP CONSTRAINT "search_queries_teamId_fkey";
ALTER TABLE ONLY public.search_queries DROP CONSTRAINT "search_queries_shareId_fkey";
ALTER TABLE ONLY public.revisions DROP CONSTRAINT "revisions_userId_fkey";
ALTER TABLE ONLY public.revisions DROP CONSTRAINT "revisions_documentId_fkey";
ALTER TABLE ONLY public.pins DROP CONSTRAINT "pins_teamId_fkey";
ALTER TABLE ONLY public.pins DROP CONSTRAINT "pins_documentId_fkey";
ALTER TABLE ONLY public.pins DROP CONSTRAINT "pins_createdById_fkey";
ALTER TABLE ONLY public.pins DROP CONSTRAINT "pins_collectionId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_userId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_teamId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_revisionId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_documentId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_commentId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_collectionId_fkey";
ALTER TABLE ONLY public.notifications DROP CONSTRAINT "notifications_actorId_fkey";
ALTER TABLE ONLY public.integrations DROP CONSTRAINT "integrations_userId_fkey";
ALTER TABLE ONLY public.integrations DROP CONSTRAINT "integrations_teamId_fkey";
ALTER TABLE ONLY public.integrations DROP CONSTRAINT "integrations_collectionId_fkey";
ALTER TABLE ONLY public.integrations DROP CONSTRAINT "integrations_authenticationId_fkey";
ALTER TABLE ONLY public.groups DROP CONSTRAINT "groups_teamId_fkey";
ALTER TABLE ONLY public.groups DROP CONSTRAINT "groups_createdById_fkey";
ALTER TABLE ONLY public.group_users DROP CONSTRAINT "group_users_userId_fkey";
ALTER TABLE ONLY public.group_users DROP CONSTRAINT "group_users_groupId_fkey";
ALTER TABLE ONLY public.group_users DROP CONSTRAINT "group_users_createdById_fkey";
ALTER TABLE ONLY public.file_operations DROP CONSTRAINT "file_operations_userId_fkey";
ALTER TABLE ONLY public.file_operations DROP CONSTRAINT "file_operations_teamId_fkey";
ALTER TABLE ONLY public.file_operations DROP CONSTRAINT "file_operations_collectionId_fkey";
ALTER TABLE ONLY public.events DROP CONSTRAINT "events_userId_fkey";
ALTER TABLE ONLY public.events DROP CONSTRAINT "events_teamId_fkey";
ALTER TABLE ONLY public.events DROP CONSTRAINT "events_collectionId_fkey";
ALTER TABLE ONLY public.events DROP CONSTRAINT "events_actorId_fkey";
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_teamId_fkey";
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_parentDocumentId_fkey";
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_lastModifiedById_fkey";
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_importId_fkey";
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_createdById_fkey";
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_atlasId_fkey";
ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_resolvedById_fkey";
ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_parentCommentId_fkey";
ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_documentId_fkey";
ALTER TABLE ONLY public.comments DROP CONSTRAINT "comments_createdById_fkey";
ALTER TABLE ONLY public.collections DROP CONSTRAINT "collections_importId_fkey";
ALTER TABLE ONLY public.collection_users DROP CONSTRAINT "collection_users_userId_fkey";
ALTER TABLE ONLY public.collection_users DROP CONSTRAINT "collection_users_createdById_fkey";
ALTER TABLE ONLY public.collection_users DROP CONSTRAINT "collection_users_collectionId_fkey";
ALTER TABLE ONLY public.collection_groups DROP CONSTRAINT "collection_groups_groupId_fkey";
ALTER TABLE ONLY public.collection_groups DROP CONSTRAINT "collection_groups_createdById_fkey";
ALTER TABLE ONLY public.collection_groups DROP CONSTRAINT "collection_groups_collectionId_fkey";
ALTER TABLE ONLY public.backlinks DROP CONSTRAINT "backlinks_userId_fkey";
ALTER TABLE ONLY public.backlinks DROP CONSTRAINT "backlinks_reverseDocumentId_fkey";
ALTER TABLE ONLY public.backlinks DROP CONSTRAINT "backlinks_documentId_fkey";
ALTER TABLE ONLY public.authentications DROP CONSTRAINT "authentications_userId_fkey";
ALTER TABLE ONLY public.authentications DROP CONSTRAINT "authentications_teamId_fkey";
ALTER TABLE ONLY public.authentication_providers DROP CONSTRAINT "authentication_providers_teamId_fkey";
ALTER TABLE ONLY public.attachments DROP CONSTRAINT "attachments_userId_fkey";
ALTER TABLE ONLY public.attachments DROP CONSTRAINT "attachments_teamId_fkey";
DROP TRIGGER documents_tsvectorupdate ON public.documents;
DROP TRIGGER atlases_tsvectorupdate ON public.collections;
DROP INDEX public.webhook_subscriptions_team_id_enabled;
DROP INDEX public.webhook_deliveries_webhook_subscription_id;
DROP INDEX public."webhook_deliveries_createdAt";
DROP INDEX public.views_user_id;
DROP INDEX public.views_updated_at;
DROP INDEX public.views_last_editing_at;
DROP INDEX public.views_document_id_user_id;
DROP INDEX public.users_team_id;
DROP INDEX public.users_email;
DROP INDEX public.user_authentications_provider_id;
DROP INDEX public.teams_subdomain;
DROP INDEX public.team_domains_team_id_name;
DROP INDEX public.subscriptions_user_id_document_id_event;
DROP INDEX public.stars_user_id_document_id;
DROP INDEX public.stars_document_id_user_id;
DROP INDEX public.search_queries_user_id;
DROP INDEX public.search_queries_team_id;
DROP INDEX public.search_queries_created_at;
DROP INDEX public.revisions_document_id;
DROP INDEX public.pins_team_id;
DROP INDEX public.pins_collection_id;
DROP INDEX public.notifications_viewed_at;
DROP INDEX public.notifications_event;
DROP INDEX public.notifications_emailed_at;
DROP INDEX public.notifications_created_at;
DROP INDEX public.notifications_archived_at;
DROP INDEX public.integrations_team_id_type_service;
DROP INDEX public.groups_team_id;
DROP INDEX public.group_users_user_id;
DROP INDEX public.group_users_group_id_user_id;
DROP INDEX public.group_users_deleted_at;
DROP INDEX public.file_operations_type_state;
DROP INDEX public.events_team_id_collection_id;
DROP INDEX public.events_name;
DROP INDEX public.events_document_id;
DROP INDEX public.events_created_at;
DROP INDEX public.events_actor_id;
DROP INDEX public.documents_url_id_deleted_at;
DROP INDEX public.documents_updated_at;
DROP INDEX public.documents_tsv_idx;
DROP INDEX public.documents_team_id;
DROP INDEX public.documents_published_at;
DROP INDEX public.documents_parent_document_id_atlas_id_deleted_at;
DROP INDEX public.documents_import_id;
DROP INDEX public.documents_collection_id;
DROP INDEX public.documents_archived_at;
DROP INDEX public.comments_document_id;
DROP INDEX public.comments_created_at;
DROP INDEX public.collections_team_id_deleted_at;
DROP INDEX public.collections_import_id;
DROP INDEX public.collection_users_user_id;
DROP INDEX public.collection_users_collection_id_user_id;
DROP INDEX public.collection_groups_group_id;
DROP INDEX public.collection_groups_deleted_at;
DROP INDEX public.collection_groups_collection_id_group_id;
DROP INDEX public.backlinks_reverse_document_id;
DROP INDEX public.backlinks_document_id;
DROP INDEX public.authentication_providers_provider_id;
DROP INDEX public.attachments_key;
DROP INDEX public.attachments_expires_at;
DROP INDEX public.attachments_document_id;
DROP INDEX public.atlases_tsv_idx;
DROP INDEX public.api_keys_user_id_deleted_at;
ALTER TABLE ONLY public.webhook_subscriptions DROP CONSTRAINT webhook_subscriptions_pkey;
ALTER TABLE ONLY public.webhook_deliveries DROP CONSTRAINT webhook_deliveries_pkey;
ALTER TABLE ONLY public.views DROP CONSTRAINT views_pkey;
ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
ALTER TABLE ONLY public.user_authentications DROP CONSTRAINT "user_authentications_providerId_userId_uk";
ALTER TABLE ONLY public.user_authentications DROP CONSTRAINT user_authentications_pkey;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_subdomain_key;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_domain_key;
ALTER TABLE ONLY public.team_domains DROP CONSTRAINT team_domains_pkey;
ALTER TABLE ONLY public.subscriptions DROP CONSTRAINT subscriptions_pkey;
ALTER TABLE ONLY public.stars DROP CONSTRAINT stars_pkey;
ALTER TABLE ONLY public.shares DROP CONSTRAINT "shares_urlId_teamId_uk";
ALTER TABLE ONLY public.shares DROP CONSTRAINT shares_pkey;
ALTER TABLE ONLY public.search_queries DROP CONSTRAINT search_queries_pkey;
ALTER TABLE ONLY public.revisions DROP CONSTRAINT revisions_pkey;
ALTER TABLE ONLY public.pins DROP CONSTRAINT pins_pkey;
ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
ALTER TABLE ONLY public.integrations DROP CONSTRAINT integrations_pkey;
ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
ALTER TABLE ONLY public.file_operations DROP CONSTRAINT file_operations_pkey;
ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
ALTER TABLE ONLY public.documents DROP CONSTRAINT "documents_urlId_key";
ALTER TABLE ONLY public.documents DROP CONSTRAINT documents_pkey;
ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
ALTER TABLE ONLY public.backlinks DROP CONSTRAINT backlinks_pkey;
ALTER TABLE ONLY public.authentications DROP CONSTRAINT authentications_pkey;
ALTER TABLE ONLY public.authentication_providers DROP CONSTRAINT "authentication_providers_providerId_teamId_uk";
ALTER TABLE ONLY public.authentication_providers DROP CONSTRAINT authentication_providers_pkey;
ALTER TABLE ONLY public.attachments DROP CONSTRAINT attachments_pkey;
ALTER TABLE ONLY public.collections DROP CONSTRAINT "atlases_urlId_key";
ALTER TABLE ONLY public.collections DROP CONSTRAINT atlases_pkey;
ALTER TABLE ONLY public."apiKeys" DROP CONSTRAINT "apiKeys_secret_key";
ALTER TABLE ONLY public."apiKeys" DROP CONSTRAINT "apiKeys_pkey";
ALTER TABLE ONLY public."SequelizeMeta" DROP CONSTRAINT "SequelizeMeta_pkey";
DROP TABLE public.webhook_subscriptions;
DROP TABLE public.webhook_deliveries;
DROP TABLE public.views;
DROP TABLE public.users;
DROP TABLE public.user_authentications;
DROP TABLE public.teams;
DROP TABLE public.team_domains;
DROP TABLE public.subscriptions;
DROP TABLE public.stars;
DROP TABLE public.shares;
DROP TABLE public.search_queries;
DROP TABLE public.revisions;
DROP TABLE public.pins;
DROP TABLE public.notifications;
DROP TABLE public.integrations;
DROP TABLE public.groups;
DROP TABLE public.group_users;
DROP TABLE public.file_operations;
DROP TABLE public.events;
DROP TABLE public.documents;
DROP TABLE public.comments;
DROP TABLE public.collections;
DROP TABLE public.collection_users;
DROP TABLE public.collection_groups;
DROP TABLE public.backlinks;
DROP TABLE public.authentications;
DROP TABLE public.authentication_providers;
DROP TABLE public.attachments;
DROP TABLE public."apiKeys";
DROP TABLE public."SequelizeMeta";
DROP FUNCTION public.documents_search_trigger();
DROP FUNCTION public.atlases_search_trigger();
DROP TYPE public.enum_search_queries_source;
DROP TYPE public.enum_file_operations_type;
DROP TYPE public.enum_file_operations_state;
--
-- Name: enum_file_operations_state; Type: TYPE; Schema: public; Owner: user
--

CREATE TYPE public.enum_file_operations_state AS ENUM (
    'creating',
    'uploading',
    'complete',
    'error',
    'expired'
);


ALTER TYPE public.enum_file_operations_state OWNER TO "user";

--
-- Name: enum_file_operations_type; Type: TYPE; Schema: public; Owner: user
--

CREATE TYPE public.enum_file_operations_type AS ENUM (
    'import',
    'export'
);


ALTER TYPE public.enum_file_operations_type OWNER TO "user";

--
-- Name: enum_search_queries_source; Type: TYPE; Schema: public; Owner: user
--

CREATE TYPE public.enum_search_queries_source AS ENUM (
    'slack',
    'app',
    'api'
);


ALTER TYPE public.enum_search_queries_source OWNER TO "user";

--
-- Name: atlases_search_trigger(); Type: FUNCTION; Schema: public; Owner: user
--

CREATE FUNCTION public.atlases_search_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
  new."searchVector" :=
    setweight(to_tsvector('english', coalesce(new.name, '')),'A') ||
    setweight(to_tsvector('english', coalesce(new.description, '')), 'C');
  return new;
end
$$;


ALTER FUNCTION public.atlases_search_trigger() OWNER TO "user";

--
-- Name: documents_search_trigger(); Type: FUNCTION; Schema: public; Owner: user
--

CREATE FUNCTION public.documents_search_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    begin
      new."searchVector" :=
        setweight(to_tsvector('english', coalesce(new.title, '')),'A') ||
        setweight(to_tsvector('english', coalesce(array_to_string(new."previousTitles", ' , '),'')),'C') ||
        setweight(to_tsvector('english', substring(coalesce(new.text, ''), 1, 1000000)), 'B');
      return new;
    end
    $$;


ALTER FUNCTION public.documents_search_trigger() OWNER TO "user";

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO "user";

--
-- Name: apiKeys; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public."apiKeys" (
    id uuid NOT NULL,
    name character varying,
    secret character varying NOT NULL,
    "userId" uuid,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public."apiKeys" OWNER TO "user";

--
-- Name: attachments; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.attachments (
    id uuid NOT NULL,
    "teamId" uuid NOT NULL,
    "userId" uuid NOT NULL,
    "documentId" uuid,
    key character varying(4096) NOT NULL,
    "contentType" character varying(255) NOT NULL,
    size bigint NOT NULL,
    acl character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "lastAccessedAt" timestamp with time zone,
    "expiresAt" timestamp with time zone
);


ALTER TABLE public.attachments OWNER TO "user";

--
-- Name: authentication_providers; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.authentication_providers (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    "providerId" character varying(255) NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    "teamId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.authentication_providers OWNER TO "user";

--
-- Name: authentications; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.authentications (
    id uuid NOT NULL,
    "userId" uuid,
    "teamId" uuid,
    service character varying(255) NOT NULL,
    token bytea,
    scopes character varying(255)[],
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.authentications OWNER TO "user";

--
-- Name: backlinks; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.backlinks (
    id uuid NOT NULL,
    "userId" uuid NOT NULL,
    "documentId" uuid NOT NULL,
    "reverseDocumentId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.backlinks OWNER TO "user";

--
-- Name: collection_groups; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.collection_groups (
    "collectionId" uuid NOT NULL,
    "groupId" uuid NOT NULL,
    "createdById" uuid NOT NULL,
    permission character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.collection_groups OWNER TO "user";

--
-- Name: collection_users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.collection_users (
    "collectionId" uuid NOT NULL,
    "userId" uuid NOT NULL,
    permission character varying(255) DEFAULT 'read_write'::character varying NOT NULL,
    "createdById" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.collection_users OWNER TO "user";

--
-- Name: collections; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.collections (
    id uuid NOT NULL,
    name character varying,
    description character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "teamId" uuid NOT NULL,
    "searchVector" tsvector,
    "createdById" uuid,
    "deletedAt" timestamp with time zone,
    "urlId" character varying(255),
    "documentStructure" jsonb,
    color text,
    "maintainerApprovalRequired" boolean DEFAULT false NOT NULL,
    icon text,
    sort jsonb,
    sharing boolean DEFAULT true NOT NULL,
    index text,
    permission character varying(255) DEFAULT NULL::character varying,
    state bytea,
    "importId" uuid
);


ALTER TABLE public.collections OWNER TO "user";

--
-- Name: comments; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.comments (
    id uuid NOT NULL,
    data jsonb NOT NULL,
    "documentId" uuid NOT NULL,
    "parentCommentId" uuid,
    "createdById" uuid NOT NULL,
    "resolvedAt" timestamp with time zone,
    "resolvedById" uuid,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.comments OWNER TO "user";

--
-- Name: documents; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.documents (
    id uuid NOT NULL,
    "urlId" character varying NOT NULL,
    title character varying NOT NULL,
    text text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "collectionId" uuid,
    "teamId" uuid,
    "parentDocumentId" uuid,
    "lastModifiedById" uuid NOT NULL,
    "revisionCount" integer DEFAULT 0,
    "searchVector" tsvector,
    "deletedAt" timestamp with time zone,
    "createdById" uuid,
    "collaboratorIds" uuid[],
    emoji character varying(255),
    "publishedAt" timestamp with time zone,
    "pinnedById" uuid,
    "archivedAt" timestamp with time zone,
    "isWelcome" boolean DEFAULT false NOT NULL,
    "editorVersion" character varying(255),
    version smallint,
    template boolean DEFAULT false NOT NULL,
    "templateId" uuid,
    "previousTitles" character varying(255)[],
    state bytea,
    "fullWidth" boolean DEFAULT false NOT NULL,
    "importId" uuid,
    "insightsEnabled" boolean DEFAULT true NOT NULL
);


ALTER TABLE public.documents OWNER TO "user";

--
-- Name: events; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.events (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    data jsonb,
    "userId" uuid,
    "collectionId" uuid,
    "teamId" uuid,
    "createdAt" timestamp with time zone NOT NULL,
    "documentId" uuid,
    "actorId" uuid,
    "modelId" uuid,
    ip character varying(255)
);


ALTER TABLE public.events OWNER TO "user";

--
-- Name: file_operations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.file_operations (
    id uuid NOT NULL,
    state public.enum_file_operations_state NOT NULL,
    type public.enum_file_operations_type NOT NULL,
    key character varying(255),
    url character varying(255),
    size bigint NOT NULL,
    "userId" uuid NOT NULL,
    "collectionId" uuid,
    "teamId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    error character varying(255),
    format character varying(255) DEFAULT 'outline-markdown'::character varying NOT NULL,
    "includeAttachments" boolean DEFAULT true NOT NULL
);


ALTER TABLE public.file_operations OWNER TO "user";

--
-- Name: group_users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.group_users (
    "userId" uuid NOT NULL,
    "groupId" uuid NOT NULL,
    "createdById" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.group_users OWNER TO "user";

--
-- Name: groups; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.groups (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    "teamId" uuid NOT NULL,
    "createdById" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.groups OWNER TO "user";

--
-- Name: integrations; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.integrations (
    id uuid NOT NULL,
    type character varying(255),
    "userId" uuid,
    "teamId" uuid NOT NULL,
    service character varying(255) NOT NULL,
    "collectionId" uuid,
    "authenticationId" uuid,
    events character varying(255)[],
    settings jsonb,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.integrations OWNER TO "user";

--
-- Name: notifications; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.notifications (
    id uuid NOT NULL,
    "actorId" uuid,
    "userId" uuid NOT NULL,
    event character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "viewedAt" timestamp with time zone,
    "emailedAt" timestamp with time zone,
    "teamId" uuid NOT NULL,
    "documentId" uuid,
    "commentId" uuid,
    "revisionId" uuid,
    "collectionId" uuid,
    "archivedAt" timestamp with time zone
);


ALTER TABLE public.notifications OWNER TO "user";

--
-- Name: pins; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.pins (
    id uuid NOT NULL,
    "documentId" uuid NOT NULL,
    "collectionId" uuid,
    "teamId" uuid NOT NULL,
    "createdById" uuid NOT NULL,
    index character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.pins OWNER TO "user";

--
-- Name: revisions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.revisions (
    id uuid NOT NULL,
    title character varying NOT NULL,
    text text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" uuid NOT NULL,
    "documentId" uuid NOT NULL,
    "editorVersion" character varying(255),
    version smallint,
    emoji character varying(255)
);


ALTER TABLE public.revisions OWNER TO "user";

--
-- Name: search_queries; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.search_queries (
    id uuid NOT NULL,
    "userId" uuid,
    "teamId" uuid,
    source public.enum_search_queries_source NOT NULL,
    query character varying(255) NOT NULL,
    results integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "shareId" uuid
);


ALTER TABLE public.search_queries OWNER TO "user";

--
-- Name: shares; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.shares (
    id uuid NOT NULL,
    "userId" uuid NOT NULL,
    "teamId" uuid NOT NULL,
    "documentId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "revokedAt" timestamp with time zone,
    "revokedById" uuid,
    published boolean DEFAULT false NOT NULL,
    "lastAccessedAt" timestamp with time zone,
    "includeChildDocuments" boolean DEFAULT false NOT NULL,
    views integer DEFAULT 0,
    "urlId" character varying(255)
);


ALTER TABLE public.shares OWNER TO "user";

--
-- Name: stars; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.stars (
    id uuid NOT NULL,
    "documentId" uuid,
    "userId" uuid NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    index character varying(255),
    "collectionId" uuid
);


ALTER TABLE public.stars OWNER TO "user";

--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.subscriptions (
    id uuid NOT NULL,
    "userId" uuid NOT NULL,
    "documentId" uuid,
    event character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.subscriptions OWNER TO "user";

--
-- Name: team_domains; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.team_domains (
    id uuid NOT NULL,
    "teamId" uuid NOT NULL,
    "createdById" uuid NOT NULL,
    name character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.team_domains OWNER TO "user";

--
-- Name: teams; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.teams (
    id uuid NOT NULL,
    name character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "avatarUrl" character varying(4096),
    "deletedAt" timestamp with time zone,
    sharing boolean DEFAULT true NOT NULL,
    subdomain character varying(255),
    "documentEmbeds" boolean DEFAULT true NOT NULL,
    "guestSignin" boolean DEFAULT false NOT NULL,
    domain character varying(255),
    "signupQueryParams" jsonb,
    "collaborativeEditing" boolean,
    "defaultUserRole" character varying(255) DEFAULT 'member'::character varying NOT NULL,
    "defaultCollectionId" uuid,
    "memberCollectionCreate" boolean DEFAULT true NOT NULL,
    "inviteRequired" boolean DEFAULT false NOT NULL,
    preferences jsonb
);


ALTER TABLE public.teams OWNER TO "user";

--
-- Name: user_authentications; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.user_authentications (
    id uuid NOT NULL,
    "userId" uuid NOT NULL,
    "authenticationProviderId" uuid NOT NULL,
    "accessToken" bytea,
    "refreshToken" bytea,
    scopes character varying(255)[],
    "providerId" character varying(255) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "expiresAt" timestamp with time zone,
    "lastValidatedAt" timestamp with time zone
);


ALTER TABLE public.user_authentications OWNER TO "user";

--
-- Name: users; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.users (
    id uuid NOT NULL,
    email character varying(255) DEFAULT NULL::character varying,
    name character varying NOT NULL,
    "isAdmin" boolean DEFAULT false,
    "jwtSecret" bytea,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "teamId" uuid,
    "avatarUrl" character varying(4096),
    "suspendedById" uuid,
    "suspendedAt" timestamp with time zone,
    "lastActiveAt" timestamp with time zone,
    "lastActiveIp" character varying(255),
    "lastSignedInAt" timestamp with time zone,
    "lastSignedInIp" character varying(255),
    "deletedAt" timestamp with time zone,
    "lastSigninEmailSentAt" timestamp with time zone,
    language character varying(255) DEFAULT 'en_US'::character varying,
    "isViewer" boolean DEFAULT false NOT NULL,
    flags jsonb,
    "invitedById" uuid,
    preferences jsonb,
    "notificationSettings" jsonb DEFAULT '{}'::jsonb NOT NULL
);


ALTER TABLE public.users OWNER TO "user";

--
-- Name: views; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.views (
    id uuid NOT NULL,
    "documentId" uuid NOT NULL,
    "userId" uuid NOT NULL,
    count integer DEFAULT 1 NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "lastEditingAt" timestamp with time zone
);


ALTER TABLE public.views OWNER TO "user";

--
-- Name: webhook_deliveries; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.webhook_deliveries (
    id uuid NOT NULL,
    "webhookSubscriptionId" uuid NOT NULL,
    status character varying(255) NOT NULL,
    "statusCode" integer,
    "requestBody" jsonb,
    "requestHeaders" jsonb,
    "responseBody" text,
    "responseHeaders" jsonb,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.webhook_deliveries OWNER TO "user";

--
-- Name: webhook_subscriptions; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.webhook_subscriptions (
    id uuid NOT NULL,
    "teamId" uuid NOT NULL,
    "createdById" uuid NOT NULL,
    url character varying(255) NOT NULL,
    enabled boolean NOT NULL,
    name character varying(255) NOT NULL,
    events character varying(255)[] NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    secret bytea
);


ALTER TABLE public.webhook_subscriptions OWNER TO "user";

--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public."SequelizeMeta" (name) FROM stdin;
20160619080644-initial.js
20160622043741-add-parent-document.js
20160626063409-add-indexes.js
20160626175224-add-revisions.js
20160711071958-search-index.js
20160726061511-atlas-creator.js
20160812145029-document-atlas-soft-delete.js
20160814083127-paranoia-indeces.js
20160814095336-add-document-createdById.js
20160814111419-add-document-collaboratorIds.js
20160815142720-app-collection-urlId.js
20160816082738-add-revision-index.js
20160824061730-add-apikeys.js
20160824062457-add-apikey-indeces.js
20160911230444-user-optional-slack-id.js
20160911232911-user-unique-fields.js
20160911234928-user-password.js
20170603185012-add-collection-documentStructure-migration.js
20170604052346-add-views.js
20170604052347-add-stars.js
20170712055148-non-unique-email.js
20170712072234-uniq-slack-id.js
20170729215619-emoji.js
20170827182423-improve-references.js
20170904202454-allow-null-username.js
20171010042938-add-event.js
20171016012353-remove-collection-navigationtree.js
20171017055026-remove-document-html.js
20171019071915-user-avatar-url.js
20171023064220-collection-color.js
20171218043717-add-authentications.js
20171225143838-set-admins.js
20180115021837-add-drafts.js
20180212033504-add-integrations.js
20180225203847-document-pinning.js
20180303193036-suspended-users.js
20180324214403-serializer-upgrade.js
20180513041057-add-share-links.js
20180528233909-google-auth.js
20180528233910-rename-serviceid.js
20180604182823-user-tracking.js
20180604191743-revoke-share-links.js
20180707220121-more-soft-delete.js
20180707231201-remove-passwords.js
20180708231200-serviceid-null.js
20180808061353-cleanup.js
20180819054252-disable-sharing.js
20181031015046-add-subdomain-to-team.js
20181124000438-add-notifications.js
20181215192422-document-embeds.js
20181227001547-collection-permissions.js
20190404035736-add-archive.js
20190423051708-add-search-indexes.js
20190606035733-events.js
20190704070630-welcome-docs.js
20190706213213-backlinks.js
20190811231511-maintainers.js
20191118023010-cascade-delete.js
20191119023010-cascade-backlinks.js
20191119023011-cascade-parent-documents.js
20191119023012-cascade-shares.js
20191119023013-cascade-backlinks2.js
20191121035144-guest-invite.js
20191211044318-create-groups.js
20191211044319-create-group-users.js
20191228031525-edit-presence.js
20200104233831-attachments.js
20200122083721-create-collection-groups.js
20200316040755-document-editor-version.js
20200328175012-cascade-delete.js
20200330053639-document-version.js
20200519032353-text-backup.js
20200522054958-collection-icon.js
20200723055414-add-published-to-shares.js
20200727051157-add-templates.js
20200812170227-remove-collection-type.js
20200915010511-create-search-queries.js
20200926204620-add-missing-indexes.js
20201028043021-reverse-document-id-index.js
20201103050534-custom-domains.js
20201106122752-i18n.js
20201206210619-update-attachment-cols.js
20201211080408-attachment-no-cascade.js
20201230031607-collection-sort.js
20210110143902-collection-rename-creator-id.js
20210208062816-disable-collection-sharing.js
20210218111237-add-collection-index.js
20210226232041-authentication-providers.js
20210310051804-passport.js
20210314173941-isViewer.js
20210327005406-read-only-collections.js
20210418053152-share-last-viewed.js
20210426055334-nested-document-sharing.js
20210430024222-marketing-tracking.js
20210716064654-introduce-previousTitles.js
20210716071454-search-index-previousTitles.js
20210716162923-events-indexes.js
20210730042450-remove-unused-indexes.js
20210730044247-remove-backup-column.js
20210730044248-create-realtime.js
20210730210120-add-fileOperations.js
20210915051740-collaborative-collections.js
20210921031555-missing-cascades.js
20210923031555-missing-cascades.js
20211003021903-missing-cascades.js
20211015170955-add-defaultUserRole.js
20211107021900-missing-cascades.js
20211217054419-integration-events.js
20211218185045-remove-unused-indexes.js
20211218193004-documents-full-width.js
20211221031430-create-pins.js
20220117012250-add-starred-sorting.js
20220127000000-index-fixes.js
20220129092607-add-defaultCollectionId.js
20220206225006-add-error-to-file-operation.js
20220305195830-create-comments.js
20220311020825-views-indexes.js
20220319022812-events-indexes.js
20220319060408-collection-create-permission.js
20220328215615-add-shareId-to-search-queries.js
20220402032204-starred-collections.js
20220409222213-user-flags.js
20220409225935-user-invited-by.js
20220413213537-add-inviteRequired-to-teams.js
20220419052832-create-team-domains.js
20220421052253-create-file-operation-format.js
20220430043135-collection-sort-backfill.js
20220521164111-create-webhook-subscription.js
20220525054603-user-authentication-expires-at.js
20220606031139-create-webhook-delivieries.js
20220702132722-add-webhooks-deleted-at.js
20220719121200-create-subscriptions.js
20220720221531-remove-deprecated-columns.js
20220722184916-remove-event-updatedat.js
20220810185000-scope-provider-id-uniqueness-to-team.js
20220812115059-scope-user-auth-provider-id-uniqueness-to-user.js
20220816070527-change-column-authentication-id-nullable.js
20220816175234-user-email-index.js
20220828144837-add-columns-to-notifications-for-tracking.js
20220830215146-add-shares-views.js
20220907132304-user-preferences.js
20220907140227-team-preferences.js
20220909203454-fix-notification-constraints.js
20220922073737-webhook-signing-secret.js
20220928030442-fix-avatar-urls.js
20221111171828-fix-user-constraints.js
20221112152649-import-document-relationship.js
20221112162341-attachment-tracking.js
20221120151710-attachment-expiry.js
20221206163421-add-share-url-slug.js
20221218013627-fix-webhook-subscription-constraints.js
20221219013835-fix-integration-constraints.js
20221230234256-add-stars-cascade.js
20230101144349-integration-indexes.js
20230204191035-update-tsvector-trigger.js
20230314013103-move-notification-settings.js
20230317144617-remove-user-username.js
20230330181038-remove-column-userId-from-documents.js
20230403120315-add-comment-to-notifications.js
20230419124305-add-archivedat-col-to-notifications.js
20230419132159-add-indexes-to-notifications.js
20230429005039-collection-admins.js
20230430213332-remove-notification-settings.js
20230621004649-add-include-attachments-file-operation.js
20230720002422-add-insights-control.js
20230723231806-fix-file-operation-constraints.js
20230815063830-add-emoji-to-revisions.js
20230815063834-migrate-emoji-in-document-title.js
20230827234031-migrate-emoji-in-revision-title.js
20230920032853-add-key-index.js
\.


--
-- Data for Name: apiKeys; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public."apiKeys" (id, name, secret, "userId", "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.attachments (id, "teamId", "userId", "documentId", key, "contentType", size, acl, "createdAt", "updatedAt", "lastAccessedAt", "expiresAt") FROM stdin;
\.


--
-- Data for Name: authentication_providers; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.authentication_providers (id, name, "providerId", enabled, "teamId", "createdAt") FROM stdin;
699d6287-d2b0-495e-9247-f8486ce319aa	oidc	root.com	t	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-11-29 20:08:06.168+00
\.


--
-- Data for Name: authentications; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.authentications (id, "userId", "teamId", service, token, scopes, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: backlinks; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.backlinks (id, "userId", "documentId", "reverseDocumentId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: collection_groups; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.collection_groups ("collectionId", "groupId", "createdById", permission, "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: collection_users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.collection_users ("collectionId", "userId", permission, "createdById", "createdAt", "updatedAt") FROM stdin;
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
b33457b5-df85-470f-a7a0-abb74c6fc083	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:04:43.187+00	2023-12-13 16:04:43.187+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
b33457b5-df85-470f-a7a0-abb74c6fc083	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:04:43.187+00	2023-12-13 16:04:43.187+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
b33457b5-df85-470f-a7a0-abb74c6fc083	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:04:43.187+00	2023-12-13 16:04:43.187+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
b33457b5-df85-470f-a7a0-abb74c6fc083	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:04:43.187+00	2023-12-13 16:04:43.187+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
baa1278e-4d95-4187-afbe-0e0d5612060d	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-11-29 20:08:06.439+00	2023-11-29 20:08:06.439+00
b33457b5-df85-470f-a7a0-abb74c6fc083	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:04:43.187+00	2023-12-13 16:04:43.187+00
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.collections (id, name, description, "createdAt", "updatedAt", "teamId", "searchVector", "createdById", "deletedAt", "urlId", "documentStructure", color, "maintainerApprovalRequired", icon, sort, sharing, index, permission, state, "importId") FROM stdin;
b33457b5-df85-470f-a7a0-abb74c6fc083	Test	\N	2023-12-13 16:04:43.166+00	2023-12-13 16:06:56.46+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'test':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:06:56.46+00	voXRZyyCCE	[{"id": "9c92cfb8-6460-40b7-85f6-b1cf2361cfc6", "url": "/doc/hola-SwYCkoInx6", "title": "Hola :)", "children": []}]	#FF4DFA	f	beaker	{"field": "index", "direction": "asc"}	t	8	read_write	\N	\N
baa1278e-4d95-4187-afbe-0e0d5612060d	Welcome	This collection is a quick guide to what Outline is all about. Feel free to delete this collection once your team is up to speed with the basics!	2023-11-29 20:08:06.363+00	2023-12-13 16:34:16.914+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'basic':29C 'collect':3C,19C 'delet':17C 'feel':14C 'free':15C 'guid':7C 'outlin':10C 'quick':6C 'speed':26C 'team':22C 'welcom':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	6PrGt9zI9d	[{"id": "b1190c7f-51fd-4303-a805-152fc6e5f80f", "url": "/doc/teest-wq6Cc33udP", "title": "Teest", "children": []}]	\N	f	\N	{"field": "index", "direction": "asc"}	t	P	read_write	\N	\N
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.comments (id, data, "documentId", "parentCommentId", "createdById", "resolvedAt", "resolvedById", "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.documents (id, "urlId", title, text, "createdAt", "updatedAt", "collectionId", "teamId", "parentDocumentId", "lastModifiedById", "revisionCount", "searchVector", "deletedAt", "createdById", "collaboratorIds", emoji, "publishedAt", "pinnedById", "archivedAt", "isWelcome", "editorVersion", version, template, "templateId", "previousTitles", state, "fullWidth", "importId", "insightsEnabled") FROM stdin;
367e7a50-f193-4d10-a6f8-d43655d98421	EZKYJZwN4x	Integrations & API	## Integrations\n\nOutline supports many of the most popular tools on the market without any additional settings or configuration. Just paste links to a YouTube video, Figma file, or Google Spreadsheet to get instant live-embeds in your documents. Take a look at the [integrations directory](https://www.getoutline.com/integrations) for a list of all of the tools that are supported.\n\n\\\nOur integration code is also [open-source](https://github.com/outline/outline) and we encourage third party developers and the community to build support for additional tools! \n\n\\\n:::info\nMost integrations work by simply pasting a link from a supported service into a document.\n:::\n\n\n## Slack\n\nIf your team is using Slack to communicate then you’ll definitely want to enable our [Slack Integration](/settings/integrations/slack) to get instant link unfurling for Outline documents and access to the `/outline` slash command to search your knowledge base directly from Slack.\n\n## API\n\nHave some technical skills? Outline is built on a fully featured RPC-style [API](https://www.getoutline.com/developers). Create (or even append to) documents, collections, provision users, and more programmatically. All documents are edited and stored in markdown format – try out this example CURL request to get started:\n\n```bash\ncurl -XPOST -H "Content-type: application/json" -d '{\n  "title": "My first document",\n  "text": "Hello from the API 👋",\n  "collectionId": "COLLECTION_ID", // find the collection id in the URL bar\n  "token": "API_TOKEN", // get an API token from https://www.getoutline.com/settings/tokens\n  "publish": true\n}' 'https://www.getoutline.com/api/documents.create'\n```\n\n	2023-11-29 20:08:06.476+00	2023-12-13 15:57:42.685+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3	'/api/documents.create''':241B '/developers).':166B '/integrations)':51B '/outline':137B '/outline/outline)':73B '/settings/integrations/slack':124B '/settings/tokens':236B 'access':134B 'addit':17B,87B 'also':67B 'api':2A,148B,163B,214B,227B,231B 'append':170B 'application/json':204B 'bar':225B 'base':144B 'bash':197B 'build':84B 'built':155B 'code':65B 'collect':173B,216B,220B 'collectionid':215B 'command':139B 'communic':113B 'communiti':82B 'configur':20B 'content':202B 'content-typ':201B 'creat':167B 'curl':192B,198B 'd':205B 'definit':117B 'develop':79B 'direct':145B 'directori':48B 'document':41B,104B,132B,172B,180B,209B 'edit':182B 'emb':38B 'enabl':120B 'encourag':76B 'even':169B 'exampl':191B 'featur':159B 'figma':28B 'file':29B 'find':218B 'first':208B 'format':187B 'fulli':158B 'get':34B,126B,195B,229B 'github.com':72B 'github.com/outline/outline)':71B 'googl':31B 'h':200B 'hello':211B 'id':217B,221B 'info':89B 'instant':35B,127B 'integr':1A,3B,47B,64B,91B,123B 'knowledg':143B 'link':23B,97B,128B 'list':54B 'live':37B 'live-emb':36B 'll':116B 'look':44B 'mani':6B 'markdown':186B 'market':14B 'open':69B 'open-sourc':68B 'outlin':4B,131B,153B 'parti':78B 'past':22B,95B 'popular':10B 'programmat':178B 'provis':174B 'publish':237B 'request':193B 'rpc':161B 'rpc-style':160B 'search':141B 'servic':101B 'set':18B 'simpli':94B 'skill':152B 'slack':105B,111B,122B,147B 'slash':138B 'sourc':70B 'spreadsheet':32B 'start':196B 'store':184B 'style':162B 'support':5B,62B,85B,100B 'take':42B 'team':108B 'technic':151B 'text':210B 'third':77B 'titl':206B 'token':226B,228B,232B 'tool':11B,59B,88B 'tri':188B 'true':238B 'type':203B 'unfurl':129B 'url':224B 'use':110B 'user':175B 'video':27B 'want':118B 'without':15B 'work':92B 'www.getoutline.com':50B,165B,235B,240B 'www.getoutline.com/api/documents.create''':239B 'www.getoutline.com/developers).':164B 'www.getoutline.com/integrations)':49B 'www.getoutline.com/settings/tokens':234B 'xpost':199B 'youtub':26B	2023-12-13 15:57:42.685+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-11-29 20:08:06.521+00	\N	\N	t	\N	2	f	\N	\N	\N	f	\N	t
620d3033-3f30-44d7-9714-eb5e7fe80dc8	71mN3uuyvi	Getting Started	Some ideas to get you and your team started with learning the basics of Outline, feel free to check them off as you go!\n\n## Learn the basics\n\n- [x] Create an Outline account\n- [ ] **Create a collection** from the left sidebar\n- [ ] **Create a new doc** from the top right of home or any collection\n- [ ] Try drag and drop to nest and move documents\n- [ ] Share a document\n- [ ] Invite a co-worker 👋\n\n## More to try\n\n- [ ] Setup the [Slack integration](/settings/integrations/slack)\n- [ ] **Create a template** to share a writing structure with your team\n- [ ] Create a check list to track tasks\n- [ ] Try embedding a supported [integration](https://www.getoutline.com/integrations)\n\n\\\n	2023-11-29 20:08:06.552+00	2023-12-13 15:57:33.982+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3	'/integrations)':105B '/settings/integrations/slack':79B 'account':34B 'basic':15B,29B 'check':21B,93B 'co':70B 'co-work':69B 'collect':37B,54B 'creat':31B,35B,42B,80B,91B 'doc':45B 'document':63B,66B 'drag':56B 'drop':58B 'embed':99B 'feel':18B 'free':19B 'get':1A,6B 'go':26B 'home':51B 'idea':4B 'integr':78B,102B 'invit':67B 'learn':13B,27B 'left':40B 'list':94B 'move':62B 'nest':60B 'new':44B 'outlin':17B,33B 'right':49B 'setup':75B 'share':64B,84B 'sidebar':41B 'slack':77B 'start':2A,11B 'structur':87B 'support':101B 'task':97B 'team':10B,90B 'templat':82B 'top':48B 'track':96B 'tri':55B,74B,98B 'worker':71B 'write':86B 'www.getoutline.com':104B 'www.getoutline.com/integrations)':103B 'x':30B	2023-12-13 15:57:33.982+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-11-29 20:08:06.564+00	\N	\N	t	\N	2	f	\N	\N	\\x0201b3a0e9da0d00879c9a81b10389030309706172616772617068509c9a81b1030007010764656661756c74030970617261677261706807009c9a81b103000604009c9a81b1030177536f6d6520696465617320746f2067657420796f7520616e6420796f7572207465616d20737461727465642077697468206c6561726e696e672074686520626173696373206f66204f75746c696e652c206665656c206672656520746f20636865636b207468656d206f666620617320796f7520676f21879c9a81b10300030768656164696e6707009c9a81b103790604009c9a81b1037a104c6561726e207468652062617369637328009c9a81b10379056c6576656c017d0228009c9a81b1037909636f6c6c6170736564017f879c9a81b10379030d636865636b626f785f6c69737407009c9a81b1038d01030d636865636b626f785f6974656d07009c9a81b1038e01030970617261677261706807009c9a81b1038f010604009c9a81b10390011943726561746520616e204f75746c696e65206163636f756e7428009c9a81b1038e0107636865636b65640178879c9a81b1038e01030d636865636b626f785f6974656d07009c9a81b103ab01030970617261677261706807009c9a81b103ac010606009c9a81b103ad01067374726f6e67027b7d849c9a81b103ae0113437265617465206120636f6c6c656374696f6e869c9a81b103c101067374726f6e67046e756c6c849c9a81b103c201162066726f6d20746865206c656674207369646562617228009c9a81b103ab0107636865636b65640179879c9a81b103ab01030d636865636b626f785f6974656d07009c9a81b103da01030970617261677261706807009c9a81b103db010606009c9a81b103dc01067374726f6e67027b7d849c9a81b103dd01104372656174652061206e657720646f63869c9a81b103ed01067374726f6e67046e756c6c849c9a81b103ee012d2066726f6d2074686520746f70207269676874206f6620686f6d65206f7220616e7920636f6c6c656374696f6e28009c9a81b103da0107636865636b65640179879c9a81b103da01030d636865636b626f785f6974656d07009c9a81b1039d02030970617261677261706807009c9a81b1039e020604009c9a81b1039f022c547279206472616720616e642064726f7020746f206e65737420616e64206d6f766520646f63756d656e747328009c9a81b1039d0207636865636b65640179879c9a81b1039d02030d636865636b626f785f6974656d07009c9a81b103cd02030970617261677261706807009c9a81b103ce020604009c9a81b103cf02105368617265206120646f63756d656e7428009c9a81b103cd0207636865636b65640179879c9a81b103cd02030d636865636b626f785f6974656d07009c9a81b103e102030970617261677261706807009c9a81b103e2020604009c9a81b103e30217496e76697465206120636f2d776f726b657220f09f918b28009c9a81b103e10207636865636b65640179879c9a81b1038d01030768656164696e6707009c9a81b103fa020604009c9a81b103fb020b4d6f726520746f2074727928009c9a81b103fa02056c6576656c017d0228009c9a81b103fa0209636f6c6c6170736564017f879c9a81b103fa02030d636865636b626f785f6c69737407009c9a81b1038903030d636865636b626f785f6974656d07009c9a81b1038a03030970617261677261706807009c9a81b1038b030604009c9a81b1038c030a53657475702074686520869c9a81b1039603046c696e6b347b2268726566223a222f73657474696e67732f696e746567726174696f6e732f736c61636b222c227469746c65223a6e756c6c7d849c9a81b103970311536c61636b20696e746567726174696f6e869c9a81b103a803046c696e6b046e756c6c28009c9a81b1038a0307636865636b65640179879c9a81b1038a03030d636865636b626f785f6974656d07009c9a81b103ab03030970617261677261706807009c9a81b103ac030606009c9a81b103ad03067374726f6e67027b7d849c9a81b103ae031143726561746520612074656d706c617465869c9a81b103bf03067374726f6e67046e756c6c849c9a81b103c0032c20746f20736861726520612077726974696e6720737472756374757265207769746820796f7572207465616d28009c9a81b103ab0307636865636b65640179879c9a81b103ab03030d636865636b626f785f6974656d07009c9a81b103ee03030970617261677261706807009c9a81b103ef030604009c9a81b103f00322437265617465206120636865636b206c69737420746f20747261636b207461736b7328009c9a81b103ee0307636865636b65640179879c9a81b103ee03030d636865636b626f785f6974656d07009c9a81b1039404030970617261677261706807009c9a81b10395040604009c9a81b10396041a54727920656d62656464696e67206120737570706f7274656420869c9a81b103b004046c696e6b3f7b2268726566223a2268747470733a2f2f7777772e6765746f75746c696e652e636f6d2f696e746567726174696f6e73222c227469746c65223a6e756c6c7d849c9a81b103b1040b696e746567726174696f6e869c9a81b103bc04046c696e6b046e756c6c28009c9a81b103940407636865636b6564017900	f	\N	t
80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	hhoHrcmRqw	full		2023-12-01 17:42:47.532+00	2023-12-13 15:31:10.36+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3	'full':1A 'guapissima':2C	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	{guapissima}	\\x0101ef84adee0b0007010764656661756c74030970617261677261706800	f	\N	t
711f3b91-b63a-4346-b381-710b5c0f8604	g4fCXKlGU8	What is Outline	Outline is a place to build your team knowledge base, you could think of it like your team’s shared library – a place for important documentation, notes, and ideas to live and be discovered. Some things you might want to keep in Outline include:\n\n\\\n- Documentation\n- Support knowledge base\n- Product plans and RFCs\n- Sales playbooks\n- Onboarding checklists\n- Company policies\n- Meeting notes\n\n## Structure\n\nOutline allows you to organize documents in "collections", for example these could represent topics like Sales, Product, or HR. You can assign users or groups access to collections. Within collections documents can be interlinked and deeply nested to easily build relationships within your knowledge base.\n\n## Search\n\nOutline is built from the ground up to be really fast, and that includes [search](/search). You can start searching from anywhere with the `CMD+K` shortcut – then filter by time, author, and more to find the information you need. Or you can search from within Slack with the `/outline` slash command.	2023-11-29 20:08:06.576+00	2023-12-13 15:57:27.697+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3	'/outline':160B '/search':126B 'access':90B 'allow':66B 'anywher':132B 'assign':86B 'author':142B 'base':13B,51B,109B 'build':9B,104B 'built':113B 'checklist':59B 'cmd':135B 'collect':72B,92B,94B 'command':162B 'compani':60B 'could':15B,76B 'deepli':100B 'discov':37B 'document':29B,48B,70B,95B 'easili':103B 'exampl':74B 'fast':121B 'filter':139B 'find':146B 'ground':116B 'group':89B 'hr':83B 'idea':32B 'import':28B 'includ':47B,124B 'inform':148B 'interlink':98B 'k':136B 'keep':44B 'knowledg':12B,50B,108B 'librari':24B 'like':19B,79B 'live':34B 'meet':62B 'might':41B 'need':150B 'nest':101B 'note':30B,63B 'onboard':58B 'organ':69B 'outlin':3A,4B,46B,65B,111B 'place':7B,26B 'plan':53B 'playbook':57B 'polici':61B 'product':52B,81B 'realli':120B 'relationship':105B 'repres':77B 'rfcs':55B 'sale':56B,80B 'search':110B,125B,130B,154B 'share':23B 'shortcut':137B 'slack':157B 'slash':161B 'start':129B 'structur':64B 'support':49B 'team':11B,21B 'thing':39B 'think':16B 'time':141B 'topic':78B 'user':87B 'want':42B 'within':93B,106B,156B	2023-12-13 15:57:27.697+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-11-29 20:08:06.588+00	\N	\N	t	\N	2	f	\N	\N	\\x013dbce0e6e2030007010764656661756c7403097061726167726170680700bce0e6e20300060400bce0e6e20301f9014f75746c696e65206973206120706c61636520746f206275696c6420796f7572207465616d206b6e6f776c6564676520626173652c20796f7520636f756c64207468696e6b206f66206974206c696b6520796f7572207465616de280997320736861726564206c69627261727920e28093206120706c61636520666f7220696d706f7274616e7420646f63756d656e746174696f6e2c206e6f7465732c20616e6420696465617320746f206c69766520616e6420626520646973636f76657265642e20536f6d65207468696e677320796f75206d696768742077616e7420746f206b65657020696e204f75746c696e6520696e636c7564653a87bce0e6e20300030970617261677261706887bce0e6e203f701030b62756c6c65745f6c6973740700bce0e6e203f80103096c6973745f6974656d0700bce0e6e203f90103097061726167726170680700bce0e6e203fa01060400bce0e6e203fb010d446f63756d656e746174696f6e87bce0e6e203f90103096c6973745f6974656d0700bce0e6e203890203097061726167726170680700bce0e6e2038a02060400bce0e6e2038b0216537570706f7274206b6e6f776c65646765206261736587bce0e6e203890203096c6973745f6974656d0700bce0e6e203a20203097061726167726170680700bce0e6e203a302060400bce0e6e203a4021650726f6475637420706c616e7320616e64205246437387bce0e6e203a20203096c6973745f6974656d0700bce0e6e203bb0203097061726167726170680700bce0e6e203bc02060400bce0e6e203bd020f53616c657320706c6179626f6f6b7387bce0e6e203bb0203096c6973745f6974656d0700bce0e6e203cd0203097061726167726170680700bce0e6e203ce02060400bce0e6e203cf02154f6e626f617264696e6720636865636b6c6973747387bce0e6e203cd0203096c6973745f6974656d0700bce0e6e203e50203097061726167726170680700bce0e6e203e602060400bce0e6e203e70210436f6d70616e7920706f6c696369657387bce0e6e203e50203096c6973745f6974656d0700bce0e6e203f80203097061726167726170680700bce0e6e203f902060400bce0e6e203fa020d4d656574696e67206e6f74657387bce0e6e203f801030768656164696e670700bce0e6e2038803060400bce0e6e2038903095374727563747572652800bce0e6e2038803056c6576656c017d022800bce0e6e203880309636f6c6c6170736564017f87bce0e6e203880303097061726167726170680700bce0e6e2039503060400bce0e6e2039603b1024f75746c696e6520616c6c6f777320796f7520746f206f7267616e697a6520646f63756d656e747320696e2022636f6c6c656374696f6e73222c20666f72206578616d706c6520746865736520636f756c6420726570726573656e7420746f70696373206c696b652053616c65732c2050726f647563742c206f722048522e20596f752063616e2061737369676e207573657273206f722067726f7570732061636365737320746f20636f6c6c656374696f6e732e2057697468696e20636f6c6c656374696f6e7320646f63756d656e74732063616e20626520696e7465726c696e6b656420616e6420646565706c79206e657374656420746f20656173696c79206275696c642072656c6174696f6e73686970732077697468696e20796f7572206b6e6f776c6564676520626173652e87bce0e6e2039503030768656164696e670700bce0e6e203c805060400bce0e6e203c905065365617263682800bce0e6e203c805056c6576656c017d022800bce0e6e203c80509636f6c6c6170736564017f87bce0e6e203c80503097061726167726170680700bce0e6e203d205060400bce0e6e203d305494f75746c696e65206973206275696c742066726f6d207468652067726f756e6420757020746f206265207265616c6c7920666173742c20616e64207468617420696e636c756465732086bce0e6e2039c06046c696e6b1f7b2268726566223a222f736561726368222c227469746c65223a6e756c6c7d84bce0e6e2039d060673656172636886bce0e6e203a306046c696e6b046e756c6c84bce0e6e203a406312e20596f752063616e20737461727420736561726368696e672066726f6d20616e7977686572652077697468207468652086bce0e6e203d5060b636f64655f696e6c696e65027b7d84bce0e6e203d60605434d442b4b86bce0e6e203db060b636f64655f696e6c696e65046e756c6c84bce0e6e203dc0683012073686f727463757420e28093207468656e2066696c7465722062792074696d652c20617574686f722c20616e64206d6f726520746f2066696e642074686520696e666f726d6174696f6e20796f75206e6565642e204f7220796f752063616e207365617263682066726f6d2077697468696e20536c61636b2077697468207468652086bce0e6e203dd070b636f64655f696e6c696e65027b7d84bce0e6e203de07082f6f75746c696e6586bce0e6e203e6070b636f64655f696e6c696e65046e756c6c84bce0e6e203e7070f20736c61736820636f6d6d616e642e00	f	\N	t
b1190c7f-51fd-4303-a805-152fc6e5f80f	wq6Cc33udP	Teest		2023-12-13 16:34:12.877+00	2023-12-13 16:34:16.907+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2	'teest':1A	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-12-13 16:34:16.907+00	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101d19dca910a0007010764656661756c74030970617261677261706800	f	\N	t
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.events (id, name, data, "userId", "collectionId", "teamId", "createdAt", "documentId", "actorId", "modelId", ip) FROM stdin;
3a23b3c6-f7fe-4a56-bc9a-332926bc52a4	teams.create	\N	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-11-29 20:08:06.18+00	\N	\N	\N	172.24.0.1
12286df6-c53e-44f1-93d4-a4565de13ff3	users.create	{"name": "root"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-11-29 20:08:06.342+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
8ed5b2ed-4cd6-4eeb-9b64-a632b687a3e1	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-11-29 20:08:06.603+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
869e91dd-edfe-4148-bfe3-26d2e1a2a285	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:24:53.995+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
0cf5522c-37da-4275-971d-f0b2a4833fd8	views.create	{"title": "Getting Started"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:25:08.061+00	620d3033-3f30-44d7-9714-eb5e7fe80dc8	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	c65e50d5-939b-447f-906e-00348a54ad2a	172.24.0.1
606c9c94-348b-4809-8601-6e2264d6f660	revisions.create	\N	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:25:24.805+00	620d3033-3f30-44d7-9714-eb5e7fe80dc8	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	01a90afc-bbb1-4867-a971-15b6cbf8ff45	172.24.0.1
c0709ae7-a661-4cd3-93d8-898e523ac216	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:30:25.185+00	620d3033-3f30-44d7-9714-eb5e7fe80dc8	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	4451a205-ee5e-4f9f-b6df-11b61dd5161b	172.24.0.1
10b50da0-d5f5-4223-8e97-0e4df1673152	documents.create	{"title": ""}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:42:47.563+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
8e30e54e-6bd3-47d3-9634-ca952a1335eb	views.create	{"title": ""}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:42:50.852+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	dba0f429-8450-4ef3-a6ed-6d62f8644278	172.24.0.1
010717e4-468a-4602-8d8b-c4a45f0e4bc1	documents.update	{"title": "guapissima"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:42:54.548+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
06936abd-4ac5-4086-882f-d4b12b8027a2	revisions.create	\N	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 17:42:54.541+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d9317131-783b-4060-8b32-4bb75794fb0c	172.24.0.1
a9ab207d-a94e-42a2-b78d-b90ef1bf7537	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-01 18:07:24.859+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d34e7638-6d56-4787-a23e-c64e7c7c407a	172.24.0.1
9535eabb-3660-4fc8-92bc-0680f56811e8	views.create	{"title": "guapissima"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:30:54.568+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	dba0f429-8450-4ef3-a6ed-6d62f8644278	172.24.0.1
94596247-8c60-4929-a011-340295b3e18a	documents.update	{"title": "full"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:31:10.485+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
9dab802a-b32a-4bce-b6ff-1f02be502063	views.create	{"title": "Our Editor"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:33:21.345+00	7659a701-ab5c-45c0-9460-f973f7514382	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	563c6f7c-8cc6-4d3e-899d-8d5b8e8c2610	172.24.0.1
58709df1-3170-4eb5-831b-857035069989	views.create	{"title": "What is Outline"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:33:25.418+00	711f3b91-b63a-4346-b381-710b5c0f8604	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d9e5963b-a209-4d24-9cea-91a40f35659d	172.24.0.1
b1d5d02d-4048-41ef-9a62-e95775b888b5	users.signout	{"name": "root"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:33:39.424+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
a1312365-ee7c-48ae-885e-9a12ebb9ee0b	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:33:41.841+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
176f15d3-6ac5-4e27-90d7-6573b6abfef2	views.create	{"title": "What is Outline"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:33:46.887+00	711f3b91-b63a-4346-b381-710b5c0f8604	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d9e5963b-a209-4d24-9cea-91a40f35659d	172.24.0.1
81ee24ff-191f-4aba-9140-f6c0e6ad8e73	revisions.create	\N	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:31:10.36+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	eacf4006-a5bf-480e-a3b5-9069a4798a1b	172.24.0.1
0e4aac25-2d59-4c60-8e4a-a518e9e4d4ec	documents.delete	{"title": "What is Outline"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:57:27.724+00	711f3b91-b63a-4346-b381-710b5c0f8604	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
64f8f8dc-7364-47ca-ae10-46f8d78dba23	documents.delete	{"title": "Getting Started"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:57:34.01+00	620d3033-3f30-44d7-9714-eb5e7fe80dc8	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
a36e3470-8eb3-47a4-98b8-4cd178bfadc6	documents.delete	{"title": "Our Editor"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:57:37.836+00	7659a701-ab5c-45c0-9460-f973f7514382	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
d0527ce4-d90e-4042-acc1-e55e135816c5	documents.delete	{"title": "Integrations & API"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 15:57:42.707+00	367e7a50-f193-4d10-a6f8-d43655d98421	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
8c738fd6-e8f2-408e-a51c-be24cbd437bd	views.create	{"title": "full"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:02:31.375+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	dba0f429-8450-4ef3-a6ed-6d62f8644278	172.24.0.1
7ad5372b-f8af-463d-b70a-3ef3758dab2a	views.create	{"title": "full"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:02:43.033+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	dba0f429-8450-4ef3-a6ed-6d62f8644278	172.24.0.1
227b6d57-0aec-4ae3-afb6-6a7fb4eaa01a	users.signout	{"name": "root"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:03:56.741+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
b5107055-8374-4b68-97f0-a6b01ec41392	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:03:58.53+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
1b04e2ad-cdb4-4f19-864f-dd93733c1227	collections.create	{"name": "Test"}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:43.204+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
a0d50d9c-b8e6-48a5-b66a-0549ea117c85	documents.create	{"title": ""}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:46.247+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
7fcd841c-69f9-413a-8208-c1d3d0e2f80b	views.create	{"title": ""}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:49.544+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	54652057-1381-4790-a01d-ff8dc612424f	172.24.0.1
46cc4e2a-d2f1-4ff2-8a8e-77f2091a483c	documents.update	{"title": "Hola :)"}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:51.96+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
7e35f586-287a-401f-b2de-35c6a0da38aa	documents.publish	{"title": "Hola :)"}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:52.519+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
3edefda7-8039-485a-8e1e-3f868e2f59aa	revisions.create	\N	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:52.507+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1ca09ca5-12ee-4c22-be35-93fd827754c6	172.24.0.1
b75dcf8c-5719-49a2-8215-0e4aa8810aeb	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:04:52.648+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d4b663d5-04bb-404f-ac86-2e6008ce16d8	172.24.0.1
7f9e803a-9ae9-477c-90a1-8c0ec689380b	collections.delete	{"name": "Test"}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:06:56.55+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
315de3d7-27e5-4777-a02e-1a16928cf25a	documents.permanent_delete	{"title": "Hola :)"}	\N	b33457b5-df85-470f-a7a0-abb74c6fc083	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:07:07.835+00	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
a1444bfb-d548-4735-8e8b-323def42edd0	documents.permanent_delete	{"title": "Our Editor"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:07:17.132+00	7659a701-ab5c-45c0-9460-f973f7514382	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.24.0.1
89ae236d-5845-4680-a7a5-84c9cbf095eb	documents.create	{"title": ""}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:34:12.908+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
8216f502-d0bf-4956-bccd-9fde61e7fa05	views.create	{"title": ""}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:34:16.122+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
8c2b3243-5cbe-4b7a-a330-6f1416f6f55c	documents.publish	{"title": "Teest"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:34:16.921+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
7fd84d71-e42e-4b99-a16b-f326694f143a	revisions.create	\N	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:34:16.907+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	691627bf-bfb7-4f6e-bb08-6235f2e6cae1	172.21.0.1
080f0f99-bf9b-4da7-a123-ad7276384fb3	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:34:17.052+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	cac28313-1501-4343-be96-0fce52939e6f	172.21.0.1
\.


--
-- Data for Name: file_operations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.file_operations (id, state, type, key, url, size, "userId", "collectionId", "teamId", "createdAt", "updatedAt", error, format, "includeAttachments") FROM stdin;
\.


--
-- Data for Name: group_users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.group_users ("userId", "groupId", "createdById", "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.groups (id, name, "teamId", "createdById", "createdAt", "updatedAt", "deletedAt") FROM stdin;
\.


--
-- Data for Name: integrations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.integrations (id, type, "userId", "teamId", service, "collectionId", "authenticationId", events, settings, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.notifications (id, "actorId", "userId", event, "createdAt", "viewedAt", "emailedAt", "teamId", "documentId", "commentId", "revisionId", "collectionId", "archivedAt") FROM stdin;
\.


--
-- Data for Name: pins; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.pins (id, "documentId", "collectionId", "teamId", "createdById", index, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: revisions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.revisions (id, title, text, "createdAt", "updatedAt", "userId", "documentId", "editorVersion", version, emoji) FROM stdin;
d9317131-783b-4060-8b32-4bb75794fb0c	guapissima		2023-12-01 17:42:54.541+00	2023-12-01 18:07:24.605+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	12.0.0	2	\N
eacf4006-a5bf-480e-a3b5-9069a4798a1b	full		2023-12-13 15:31:10.36+00	2023-12-13 15:36:10.711+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	12.0.0	2	\N
691627bf-bfb7-4f6e-bb08-6235f2e6cae1	Teest		2023-12-13 16:34:16.907+00	2023-12-13 16:34:17.017+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	b1190c7f-51fd-4303-a805-152fc6e5f80f	12.0.0	2	\N
\.


--
-- Data for Name: search_queries; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.search_queries (id, "userId", "teamId", source, query, results, "createdAt", "shareId") FROM stdin;
\.


--
-- Data for Name: shares; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.shares (id, "userId", "teamId", "documentId", "createdAt", "updatedAt", "revokedAt", "revokedById", published, "lastAccessedAt", "includeChildDocuments", views, "urlId") FROM stdin;
\.


--
-- Data for Name: stars; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.stars (id, "documentId", "userId", "createdAt", "updatedAt", index, "collectionId") FROM stdin;
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.subscriptions (id, "userId", "documentId", event, "createdAt", "updatedAt", "deletedAt") FROM stdin;
4451a205-ee5e-4f9f-b6df-11b61dd5161b	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	620d3033-3f30-44d7-9714-eb5e7fe80dc8	documents.update	2023-12-01 17:30:25.168+00	2023-12-01 17:30:25.168+00	\N
d34e7638-6d56-4787-a23e-c64e7c7c407a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	documents.update	2023-12-01 18:07:24.815+00	2023-12-01 18:07:24.815+00	\N
cac28313-1501-4343-be96-0fce52939e6f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	b1190c7f-51fd-4303-a805-152fc6e5f80f	documents.update	2023-12-13 16:34:17.023+00	2023-12-13 16:34:17.023+00	\N
\.


--
-- Data for Name: team_domains; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.team_domains (id, "teamId", "createdById", name, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.teams (id, name, "createdAt", "updatedAt", "avatarUrl", "deletedAt", sharing, subdomain, "documentEmbeds", "guestSignin", domain, "signupQueryParams", "collaborativeEditing", "defaultUserRole", "defaultCollectionId", "memberCollectionCreate", "inviteRequired", preferences) FROM stdin;
e82cc78d-01b7-4225-8c9f-7eccfcc5829e	Wiki	2023-11-29 20:08:06.13+00	2023-11-29 20:08:06.227+00	https://logo.clearbit.com/root.com	\N	t	root	t	t	\N	true	\N	member	\N	t	f	\N
\.


--
-- Data for Name: user_authentications; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_authentications (id, "userId", "authenticationProviderId", "accessToken", "refreshToken", scopes, "providerId", "createdAt", "updatedAt", "expiresAt", "lastValidatedAt") FROM stdin;
880c21fc-57d8-4682-886e-fd6f4735e0ea	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	699d6287-d2b0-495e-9247-f8486ce319aa	\\x600b8da81379fc84e121eb7adb1482afcb37ebf5bbcaefcdc1da2fb2622fbbf9d3173bf9cc467f4101300c02eb6099c40da95fca0d23fd4672794ecb25519d91	\\xb98cccc83e4c5fa2498453a79866267044cae49bd8e8f63832c47a6c2b6b6f772ba413c3d15e708c7e5f3b1e59137e0f1a70c427b5f50a7b3bbf7b1f37ebe395	{openid,profile,email}	1	2023-11-29 20:08:06.325+00	2023-12-13 16:03:58.521+00	2023-12-13 17:03:58.506+00	2023-12-13 15:30:53.631+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (id, email, name, "isAdmin", "jwtSecret", "createdAt", "updatedAt", "teamId", "avatarUrl", "suspendedById", "suspendedAt", "lastActiveAt", "lastActiveIp", "lastSignedInAt", "lastSignedInIp", "deletedAt", "lastSigninEmailSentAt", language, "isViewer", flags, "invitedById", preferences, "notificationSettings") FROM stdin;
1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	root@root.com	root	t	\\xb2c48697a1fcb066eef4a22365a50f09efe24aede4487849802fb3c99e44271a48a35222f6f33322a0606defeb6b187659d56909f83da8e97251ae8ded26304b3d8e21791b38e532e6e82482059f27afe9c8b75096b89ca0469d966405c53df880da92b9ec7e13294ab9b54450bac67631f18dbb51a22089ddf02fdb93bfe45b5dc1e0918ffbbb96c53b1078a49dcdf016d884746c7496db1c4c7a2b548d0feb	2023-11-29 20:08:06.306+00	2023-12-13 16:34:09.468+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	\N	\N	2023-12-13 16:34:09.46+00	172.21.0.1	2023-12-13 16:03:58.525+00	172.24.0.1	\N	\N	en_US	f	{"desktopWeb": 1}	\N	\N	{}
\.


--
-- Data for Name: views; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.views (id, "documentId", "userId", count, "createdAt", "updatedAt", "lastEditingAt") FROM stdin;
c65e50d5-939b-447f-906e-00348a54ad2a	620d3033-3f30-44d7-9714-eb5e7fe80dc8	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-01 17:25:08.013+00	2023-12-01 17:25:21.771+00	2023-12-01 17:25:21.768+00
563c6f7c-8cc6-4d3e-899d-8d5b8e8c2610	7659a701-ab5c-45c0-9460-f973f7514382	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-13 15:33:21.286+00	2023-12-13 15:33:21.286+00	\N
d9e5963b-a209-4d24-9cea-91a40f35659d	711f3b91-b63a-4346-b381-710b5c0f8604	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2	2023-12-13 15:33:25.408+00	2023-12-13 15:33:46.881+00	\N
dba0f429-8450-4ef3-a6ed-6d62f8644278	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	4	2023-12-01 17:42:50.832+00	2023-12-13 16:02:43.027+00	\N
54652057-1381-4790-a01d-ff8dc612424f	9c92cfb8-6460-40b7-85f6-b1cf2361cfc6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-13 16:04:49.517+00	2023-12-13 16:04:49.517+00	\N
2c7d7495-9435-4a6c-8a4a-83e49ebd362d	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-13 16:34:16.107+00	2023-12-13 16:34:16.107+00	\N
\.


--
-- Data for Name: webhook_deliveries; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.webhook_deliveries (id, "webhookSubscriptionId", status, "statusCode", "requestBody", "requestHeaders", "responseBody", "responseHeaders", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: webhook_subscriptions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.webhook_subscriptions (id, "teamId", "createdById", url, enabled, name, events, "createdAt", "updatedAt", "deletedAt", secret) FROM stdin;
\.


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: apiKeys apiKeys_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."apiKeys"
    ADD CONSTRAINT "apiKeys_pkey" PRIMARY KEY (id);


--
-- Name: apiKeys apiKeys_secret_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public."apiKeys"
    ADD CONSTRAINT "apiKeys_secret_key" UNIQUE (secret);


--
-- Name: collections atlases_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT atlases_pkey PRIMARY KEY (id);


--
-- Name: collections atlases_urlId_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT "atlases_urlId_key" UNIQUE ("urlId");


--
-- Name: attachments attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: authentication_providers authentication_providers_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authentication_providers
    ADD CONSTRAINT authentication_providers_pkey PRIMARY KEY (id);


--
-- Name: authentication_providers authentication_providers_providerId_teamId_uk; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authentication_providers
    ADD CONSTRAINT "authentication_providers_providerId_teamId_uk" UNIQUE ("providerId", "teamId");


--
-- Name: authentications authentications_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authentications
    ADD CONSTRAINT authentications_pkey PRIMARY KEY (id);


--
-- Name: backlinks backlinks_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.backlinks
    ADD CONSTRAINT backlinks_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: documents documents_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: documents documents_urlId_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_urlId_key" UNIQUE ("urlId");


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: file_operations file_operations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.file_operations
    ADD CONSTRAINT file_operations_pkey PRIMARY KEY (id);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: integrations integrations_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.integrations
    ADD CONSTRAINT integrations_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: pins pins_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.pins
    ADD CONSTRAINT pins_pkey PRIMARY KEY (id);


--
-- Name: revisions revisions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.revisions
    ADD CONSTRAINT revisions_pkey PRIMARY KEY (id);


--
-- Name: search_queries search_queries_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.search_queries
    ADD CONSTRAINT search_queries_pkey PRIMARY KEY (id);


--
-- Name: shares shares_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT shares_pkey PRIMARY KEY (id);


--
-- Name: shares shares_urlId_teamId_uk; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT "shares_urlId_teamId_uk" UNIQUE ("urlId", "teamId");


--
-- Name: stars stars_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT stars_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: team_domains team_domains_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.team_domains
    ADD CONSTRAINT team_domains_pkey PRIMARY KEY (id);


--
-- Name: teams teams_domain_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_domain_key UNIQUE (domain);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: teams teams_subdomain_key; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_subdomain_key UNIQUE (subdomain);


--
-- Name: user_authentications user_authentications_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_authentications
    ADD CONSTRAINT user_authentications_pkey PRIMARY KEY (id);


--
-- Name: user_authentications user_authentications_providerId_userId_uk; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_authentications
    ADD CONSTRAINT "user_authentications_providerId_userId_uk" UNIQUE ("providerId", "userId");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: views views_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.views
    ADD CONSTRAINT views_pkey PRIMARY KEY (id);


--
-- Name: webhook_deliveries webhook_deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.webhook_deliveries
    ADD CONSTRAINT webhook_deliveries_pkey PRIMARY KEY (id);


--
-- Name: webhook_subscriptions webhook_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.webhook_subscriptions
    ADD CONSTRAINT webhook_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: api_keys_user_id_deleted_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX api_keys_user_id_deleted_at ON public."apiKeys" USING btree ("userId", "deletedAt");


--
-- Name: atlases_tsv_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX atlases_tsv_idx ON public.collections USING gin ("searchVector");


--
-- Name: attachments_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX attachments_document_id ON public.attachments USING btree ("documentId");


--
-- Name: attachments_expires_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX attachments_expires_at ON public.attachments USING btree ("expiresAt");


--
-- Name: attachments_key; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX attachments_key ON public.attachments USING btree (key);


--
-- Name: authentication_providers_provider_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX authentication_providers_provider_id ON public.authentication_providers USING btree ("providerId");


--
-- Name: backlinks_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX backlinks_document_id ON public.backlinks USING btree ("documentId");


--
-- Name: backlinks_reverse_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX backlinks_reverse_document_id ON public.backlinks USING btree ("reverseDocumentId");


--
-- Name: collection_groups_collection_id_group_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collection_groups_collection_id_group_id ON public.collection_groups USING btree ("collectionId", "groupId");


--
-- Name: collection_groups_deleted_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collection_groups_deleted_at ON public.collection_groups USING btree ("deletedAt");


--
-- Name: collection_groups_group_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collection_groups_group_id ON public.collection_groups USING btree ("groupId");


--
-- Name: collection_users_collection_id_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collection_users_collection_id_user_id ON public.collection_users USING btree ("collectionId", "userId");


--
-- Name: collection_users_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collection_users_user_id ON public.collection_users USING btree ("userId");


--
-- Name: collections_import_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collections_import_id ON public.collections USING btree ("importId");


--
-- Name: collections_team_id_deleted_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX collections_team_id_deleted_at ON public.collections USING btree ("teamId", "deletedAt");


--
-- Name: comments_created_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX comments_created_at ON public.comments USING btree ("createdAt");


--
-- Name: comments_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX comments_document_id ON public.comments USING btree ("documentId");


--
-- Name: documents_archived_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_archived_at ON public.documents USING btree ("archivedAt");


--
-- Name: documents_collection_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_collection_id ON public.documents USING btree ("collectionId");


--
-- Name: documents_import_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_import_id ON public.documents USING btree ("importId");


--
-- Name: documents_parent_document_id_atlas_id_deleted_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_parent_document_id_atlas_id_deleted_at ON public.documents USING btree ("parentDocumentId", "collectionId", "deletedAt");


--
-- Name: documents_published_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_published_at ON public.documents USING btree ("publishedAt");


--
-- Name: documents_team_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_team_id ON public.documents USING btree ("teamId", "deletedAt");


--
-- Name: documents_tsv_idx; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_tsv_idx ON public.documents USING gin ("searchVector");


--
-- Name: documents_updated_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_updated_at ON public.documents USING btree ("updatedAt");


--
-- Name: documents_url_id_deleted_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX documents_url_id_deleted_at ON public.documents USING btree ("urlId", "deletedAt");


--
-- Name: events_actor_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX events_actor_id ON public.events USING btree ("actorId");


--
-- Name: events_created_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX events_created_at ON public.events USING btree ("createdAt");


--
-- Name: events_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX events_document_id ON public.events USING btree ("documentId");


--
-- Name: events_name; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX events_name ON public.events USING btree (name);


--
-- Name: events_team_id_collection_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX events_team_id_collection_id ON public.events USING btree ("teamId", "collectionId");


--
-- Name: file_operations_type_state; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX file_operations_type_state ON public.file_operations USING btree (type, state);


--
-- Name: group_users_deleted_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX group_users_deleted_at ON public.group_users USING btree ("deletedAt");


--
-- Name: group_users_group_id_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX group_users_group_id_user_id ON public.group_users USING btree ("groupId", "userId");


--
-- Name: group_users_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX group_users_user_id ON public.group_users USING btree ("userId");


--
-- Name: groups_team_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX groups_team_id ON public.groups USING btree ("teamId");


--
-- Name: integrations_team_id_type_service; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX integrations_team_id_type_service ON public.integrations USING btree ("teamId", type, service);


--
-- Name: notifications_archived_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX notifications_archived_at ON public.notifications USING btree ("archivedAt");


--
-- Name: notifications_created_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX notifications_created_at ON public.notifications USING btree ("createdAt");


--
-- Name: notifications_emailed_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX notifications_emailed_at ON public.notifications USING btree ("emailedAt");


--
-- Name: notifications_event; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX notifications_event ON public.notifications USING btree (event);


--
-- Name: notifications_viewed_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX notifications_viewed_at ON public.notifications USING btree ("viewedAt") WHERE ("viewedAt" IS NULL);


--
-- Name: pins_collection_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX pins_collection_id ON public.pins USING btree ("collectionId");


--
-- Name: pins_team_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX pins_team_id ON public.pins USING btree ("teamId");


--
-- Name: revisions_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX revisions_document_id ON public.revisions USING btree ("documentId");


--
-- Name: search_queries_created_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX search_queries_created_at ON public.search_queries USING btree ("createdAt");


--
-- Name: search_queries_team_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX search_queries_team_id ON public.search_queries USING btree ("teamId");


--
-- Name: search_queries_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX search_queries_user_id ON public.search_queries USING btree ("userId");


--
-- Name: stars_document_id_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX stars_document_id_user_id ON public.stars USING btree ("documentId", "userId");


--
-- Name: stars_user_id_document_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX stars_user_id_document_id ON public.stars USING btree ("userId", "documentId");


--
-- Name: subscriptions_user_id_document_id_event; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX subscriptions_user_id_document_id_event ON public.subscriptions USING btree ("userId", "documentId", event);


--
-- Name: team_domains_team_id_name; Type: INDEX; Schema: public; Owner: user
--

CREATE UNIQUE INDEX team_domains_team_id_name ON public.team_domains USING btree ("teamId", name);


--
-- Name: teams_subdomain; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX teams_subdomain ON public.teams USING btree (subdomain);


--
-- Name: user_authentications_provider_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX user_authentications_provider_id ON public.user_authentications USING btree ("providerId");


--
-- Name: users_email; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX users_email ON public.users USING btree (email);


--
-- Name: users_team_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX users_team_id ON public.users USING btree ("teamId");


--
-- Name: views_document_id_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX views_document_id_user_id ON public.views USING btree ("documentId", "userId");


--
-- Name: views_last_editing_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX views_last_editing_at ON public.views USING btree ("lastEditingAt");


--
-- Name: views_updated_at; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX views_updated_at ON public.views USING btree ("updatedAt");


--
-- Name: views_user_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX views_user_id ON public.views USING btree ("userId");


--
-- Name: webhook_deliveries_createdAt; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX "webhook_deliveries_createdAt" ON public.webhook_deliveries USING btree ("createdAt");


--
-- Name: webhook_deliveries_webhook_subscription_id; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX webhook_deliveries_webhook_subscription_id ON public.webhook_deliveries USING btree ("webhookSubscriptionId");


--
-- Name: webhook_subscriptions_team_id_enabled; Type: INDEX; Schema: public; Owner: user
--

CREATE INDEX webhook_subscriptions_team_id_enabled ON public.webhook_subscriptions USING btree ("teamId", enabled);


--
-- Name: collections atlases_tsvectorupdate; Type: TRIGGER; Schema: public; Owner: user
--

CREATE TRIGGER atlases_tsvectorupdate BEFORE INSERT OR UPDATE ON public.collections FOR EACH ROW EXECUTE FUNCTION public.atlases_search_trigger();


--
-- Name: documents documents_tsvectorupdate; Type: TRIGGER; Schema: public; Owner: user
--

CREATE TRIGGER documents_tsvectorupdate BEFORE INSERT OR UPDATE ON public.documents FOR EACH ROW EXECUTE FUNCTION public.documents_search_trigger();


--
-- Name: attachments attachments_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT "attachments_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: attachments attachments_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.attachments
    ADD CONSTRAINT "attachments_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: authentication_providers authentication_providers_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authentication_providers
    ADD CONSTRAINT "authentication_providers_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: authentications authentications_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authentications
    ADD CONSTRAINT "authentications_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: authentications authentications_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.authentications
    ADD CONSTRAINT "authentications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: backlinks backlinks_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.backlinks
    ADD CONSTRAINT "backlinks_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: backlinks backlinks_reverseDocumentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.backlinks
    ADD CONSTRAINT "backlinks_reverseDocumentId_fkey" FOREIGN KEY ("reverseDocumentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: backlinks backlinks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.backlinks
    ADD CONSTRAINT "backlinks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: collection_groups collection_groups_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collection_groups
    ADD CONSTRAINT "collection_groups_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: collection_groups collection_groups_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collection_groups
    ADD CONSTRAINT "collection_groups_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: collection_groups collection_groups_groupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collection_groups
    ADD CONSTRAINT "collection_groups_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON DELETE CASCADE;


--
-- Name: collection_users collection_users_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collection_users
    ADD CONSTRAINT "collection_users_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: collection_users collection_users_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collection_users
    ADD CONSTRAINT "collection_users_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: collection_users collection_users_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collection_users
    ADD CONSTRAINT "collection_users_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: collections collections_importId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.collections
    ADD CONSTRAINT "collections_importId_fkey" FOREIGN KEY ("importId") REFERENCES public.file_operations(id);


--
-- Name: comments comments_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: comments comments_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: comments comments_parentCommentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_parentCommentId_fkey" FOREIGN KEY ("parentCommentId") REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: comments comments_resolvedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT "comments_resolvedById_fkey" FOREIGN KEY ("resolvedById") REFERENCES public.users(id);


--
-- Name: documents documents_atlasId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_atlasId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: documents documents_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: documents documents_importId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_importId_fkey" FOREIGN KEY ("importId") REFERENCES public.file_operations(id);


--
-- Name: documents documents_lastModifiedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_lastModifiedById_fkey" FOREIGN KEY ("lastModifiedById") REFERENCES public.users(id);


--
-- Name: documents documents_parentDocumentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_parentDocumentId_fkey" FOREIGN KEY ("parentDocumentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: documents documents_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.documents
    ADD CONSTRAINT "documents_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: events events_actorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_actorId_fkey" FOREIGN KEY ("actorId") REFERENCES public.users(id);


--
-- Name: events events_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id);


--
-- Name: events events_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: events events_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: file_operations file_operations_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.file_operations
    ADD CONSTRAINT "file_operations_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: file_operations file_operations_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.file_operations
    ADD CONSTRAINT "file_operations_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: file_operations file_operations_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.file_operations
    ADD CONSTRAINT "file_operations_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: group_users group_users_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.group_users
    ADD CONSTRAINT "group_users_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: group_users group_users_groupId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.group_users
    ADD CONSTRAINT "group_users_groupId_fkey" FOREIGN KEY ("groupId") REFERENCES public.groups(id) ON DELETE CASCADE;


--
-- Name: group_users group_users_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.group_users
    ADD CONSTRAINT "group_users_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: groups groups_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT "groups_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: groups groups_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT "groups_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: integrations integrations_authenticationId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.integrations
    ADD CONSTRAINT "integrations_authenticationId_fkey" FOREIGN KEY ("authenticationId") REFERENCES public.authentications(id) ON DELETE CASCADE;


--
-- Name: integrations integrations_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.integrations
    ADD CONSTRAINT "integrations_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: integrations integrations_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.integrations
    ADD CONSTRAINT "integrations_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: integrations integrations_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.integrations
    ADD CONSTRAINT "integrations_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: notifications notifications_actorId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_actorId_fkey" FOREIGN KEY ("actorId") REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: notifications notifications_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_commentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_commentId_fkey" FOREIGN KEY ("commentId") REFERENCES public.comments(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_revisionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_revisionId_fkey" FOREIGN KEY ("revisionId") REFERENCES public.revisions(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: notifications notifications_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT "notifications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: pins pins_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.pins
    ADD CONSTRAINT "pins_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: pins pins_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.pins
    ADD CONSTRAINT "pins_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: pins pins_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.pins
    ADD CONSTRAINT "pins_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: pins pins_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.pins
    ADD CONSTRAINT "pins_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: revisions revisions_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.revisions
    ADD CONSTRAINT "revisions_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: revisions revisions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.revisions
    ADD CONSTRAINT "revisions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: search_queries search_queries_shareId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.search_queries
    ADD CONSTRAINT "search_queries_shareId_fkey" FOREIGN KEY ("shareId") REFERENCES public.shares(id);


--
-- Name: search_queries search_queries_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.search_queries
    ADD CONSTRAINT "search_queries_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: search_queries search_queries_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.search_queries
    ADD CONSTRAINT "search_queries_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: shares shares_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT "shares_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: shares shares_revokedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT "shares_revokedById_fkey" FOREIGN KEY ("revokedById") REFERENCES public.users(id);


--
-- Name: shares shares_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT "shares_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id);


--
-- Name: shares shares_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.shares
    ADD CONSTRAINT "shares_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: stars stars_collectionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT "stars_collectionId_fkey" FOREIGN KEY ("collectionId") REFERENCES public.collections(id) ON DELETE CASCADE;


--
-- Name: stars stars_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT "stars_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: stars stars_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.stars
    ADD CONSTRAINT "stars_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: subscriptions subscriptions_documentId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT "subscriptions_documentId_fkey" FOREIGN KEY ("documentId") REFERENCES public.documents(id) ON DELETE CASCADE;


--
-- Name: subscriptions subscriptions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT "subscriptions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: team_domains team_domains_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.team_domains
    ADD CONSTRAINT "team_domains_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: team_domains team_domains_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.team_domains
    ADD CONSTRAINT "team_domains_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: user_authentications user_authentications_authenticationProviderId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_authentications
    ADD CONSTRAINT "user_authentications_authenticationProviderId_fkey" FOREIGN KEY ("authenticationProviderId") REFERENCES public.authentication_providers(id) ON DELETE CASCADE;


--
-- Name: user_authentications user_authentications_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.user_authentications
    ADD CONSTRAINT "user_authentications_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users users_invitedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_invitedById_fkey" FOREIGN KEY ("invitedById") REFERENCES public.users(id);


--
-- Name: users users_suspendedById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_suspendedById_fkey" FOREIGN KEY ("suspendedById") REFERENCES public.users(id);


--
-- Name: users users_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "users_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- Name: webhook_deliveries webhook_deliveries_webhookSubscriptionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.webhook_deliveries
    ADD CONSTRAINT "webhook_deliveries_webhookSubscriptionId_fkey" FOREIGN KEY ("webhookSubscriptionId") REFERENCES public.webhook_subscriptions(id) ON DELETE CASCADE;


--
-- Name: webhook_subscriptions webhook_subscriptions_createdById_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.webhook_subscriptions
    ADD CONSTRAINT "webhook_subscriptions_createdById_fkey" FOREIGN KEY ("createdById") REFERENCES public.users(id);


--
-- Name: webhook_subscriptions webhook_subscriptions_teamId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.webhook_subscriptions
    ADD CONSTRAINT "webhook_subscriptions_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES public.teams(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

