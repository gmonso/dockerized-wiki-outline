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
c33eee7c-085f-405a-8d2e-b43b03f86e5d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	public/1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7/c33eee7c-085f-405a-8d2e-b43b03f86e5d/780e0e64d323aad2cdd5.png	image/png	144894	public-read	2023-12-26 01:58:52.358+00	2023-12-26 01:58:52.358+00	\N	\N
8a31527c-a5dd-4f43-b001-3075c331116b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	uploads/1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7/8a31527c-a5dd-4f43-b001-3075c331116b/Monosnap Flutter - Crea aplicaciones para cualquier pantalla 2023-12-26 03-21-27.png	image/png	1013109	private	2023-12-26 02:21:34.276+00	2023-12-26 02:21:34.541+00	2023-12-26 02:21:34.54+00	\N
d7022dff-30a8-4598-8893-79837c85f8f8	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	uploads/1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7/d7022dff-30a8-4598-8893-79837c85f8f8/Monosnap Flutter - Crea aplicaciones para cualquier pantalla 2023-12-26 03-21-27.png	image/png	872817	private	2023-12-26 02:22:21.509+00	2023-12-26 02:22:21.89+00	2023-12-26 02:22:21.889+00	\N
431af781-d753-4dbf-9e60-a022d3f8f376	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	uploads/1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7/431af781-d753-4dbf-9e60-a022d3f8f376/image.png	image/png	2476	private	2023-12-26 02:23:28.047+00	2023-12-26 02:23:28.145+00	2023-12-26 02:23:28.145+00	\N
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
86712e27-00bd-4eb1-b254-88f56b3a5f8b	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:02:36.163+00	2023-12-26 02:02:36.163+00
57fab8ab-aeee-4af9-9a97-af9d3948cd47	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:31:08.557+00	2023-12-26 02:31:08.557+00
7f0c5dbc-1952-4f91-8174-3bc36432ec8f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	admin	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:32:36.328+00	2023-12-26 02:32:36.328+00
\.


--
-- Data for Name: collections; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.collections (id, name, description, "createdAt", "updatedAt", "teamId", "searchVector", "createdById", "deletedAt", "urlId", "documentStructure", color, "maintainerApprovalRequired", icon, sort, sharing, index, permission, state, "importId") FROM stdin;
b33457b5-df85-470f-a7a0-abb74c6fc083	Test	\N	2023-12-13 16:04:43.166+00	2023-12-13 16:06:56.46+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'test':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-13 16:06:56.46+00	voXRZyyCCE	[{"id": "9c92cfb8-6460-40b7-85f6-b1cf2361cfc6", "url": "/doc/hola-SwYCkoInx6", "title": "Hola :)", "children": []}]	#FF4DFA	f	beaker	{"field": "index", "direction": "asc"}	t	8	read_write	\N	\N
57fab8ab-aeee-4af9-9a97-af9d3948cd47	Bibliografía	\N	2023-12-26 02:31:08.543+00	2023-12-26 02:35:27.488+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'bibliografía':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:35:27.488+00	tXMS8eiHMy	[]	#0366d6	f	notepad	{"field": "index", "direction": "asc"}	t	D	read_write	\N	\N
baa1278e-4d95-4187-afbe-0e0d5612060d	Welcome	This collection is a quick guide to what Outline is all about. Feel free to delete this collection once your team is up to speed with the basics!	2023-11-29 20:08:06.363+00	2023-12-26 02:31:18.184+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'basic':29C 'collect':3C,19C 'delet':17C 'feel':14C 'free':15C 'guid':7C 'outlin':10C 'quick':6C 'speed':26C 'team':22C 'welcom':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:31:18.184+00	6PrGt9zI9d	[{"id": "03eb0ae6-b115-4373-8e2f-b16819e0f571", "url": "/doc/test-etsststsgdjhsjhdfk-WQSHx6zwAr", "title": "test etsststsgdjhsjhdfk", "children": []}, {"id": "b1190c7f-51fd-4303-a805-152fc6e5f80f", "url": "/doc/teest-slkdfjaslk-wq6Cc33udP", "title": "Teest slkdfjaslk", "children": []}]	\N	f	\N	{"field": "index", "direction": "asc"}	t	P	read_write	\N	\N
7f0c5dbc-1952-4f91-8174-3bc36432ec8f	Flutter	\N	2023-12-26 02:32:36.315+00	2023-12-26 02:34:59.433+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'flutter':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	zB62f05Nfb	[{"id": "73358b46-0b2d-463e-9a8c-491a22155470", "url": "/doc/descripcio-del-projecte-LKcZ6B7jBi", "emoji": "ℹ️", "title": "Descripció del Projecte", "children": [{"id": "39a57f78-7f77-492b-8e6a-7219d79963b7", "url": "/doc/historia-99rjOULYL0", "emoji": "🏛️", "title": "Història", "children": []}, {"id": "12ae755f-8cdb-4138-9190-471bc63c7532", "url": "/doc/objectius-i-motivacions-PFUyro8kx3", "emoji": "📈", "title": "Objectius i motivacions", "children": []}, {"id": "6b70768f-3b44-4e55-a7ef-d5b7fa929659", "url": "/doc/informacio-tecnica-actual-hDfy4663CI", "emoji": "⚙️", "title": "Informació tècnica actual", "children": []}]}, {"id": "96ec4573-c77f-4501-a351-25eb8d5875dd", "url": "/doc/bibliografia-XjxDDCCCLA", "emoji": "📚", "title": "Bibliografía", "children": []}]	#0366d6	f	code	{"field": "index", "direction": "asc"}	t	,	read_write	\N	\N
86712e27-00bd-4eb1-b254-88f56b3a5f8b	Contextualització	\N	2023-12-26 02:02:36.079+00	2023-12-26 02:33:46.502+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	'contextualització':1A	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:33:46.502+00	rP1M8v0aU5	[]	#0366d6	f	info	{"field": "index", "direction": "asc"}	t	8	read_write	\N	\N
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
b1190c7f-51fd-4303-a805-152fc6e5f80f	wq6Cc33udP	Teest slkdfjaslk		2023-12-13 16:34:12.877+00	2023-12-13 16:42:04.529+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3	'slkdfjaslk':2A 'teest':1A,3C	2023-12-26 02:31:18.187+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-12-13 16:34:16.907+00	\N	\N	f	12.0.0	2	f	\N	{Teest}	\\x0101d19dca910a0007010764656661756c74030970617261677261706800	f	\N	t
711f3b91-b63a-4346-b381-710b5c0f8604	g4fCXKlGU8	What is Outline	Outline is a place to build your team knowledge base, you could think of it like your team’s shared library – a place for important documentation, notes, and ideas to live and be discovered. Some things you might want to keep in Outline include:\n\n\\\n- Documentation\n- Support knowledge base\n- Product plans and RFCs\n- Sales playbooks\n- Onboarding checklists\n- Company policies\n- Meeting notes\n\n## Structure\n\nOutline allows you to organize documents in "collections", for example these could represent topics like Sales, Product, or HR. You can assign users or groups access to collections. Within collections documents can be interlinked and deeply nested to easily build relationships within your knowledge base.\n\n## Search\n\nOutline is built from the ground up to be really fast, and that includes [search](/search). You can start searching from anywhere with the `CMD+K` shortcut – then filter by time, author, and more to find the information you need. Or you can search from within Slack with the `/outline` slash command.	2023-11-29 20:08:06.576+00	2023-12-13 15:57:27.697+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3	'/outline':160B '/search':126B 'access':90B 'allow':66B 'anywher':132B 'assign':86B 'author':142B 'base':13B,51B,109B 'build':9B,104B 'built':113B 'checklist':59B 'cmd':135B 'collect':72B,92B,94B 'command':162B 'compani':60B 'could':15B,76B 'deepli':100B 'discov':37B 'document':29B,48B,70B,95B 'easili':103B 'exampl':74B 'fast':121B 'filter':139B 'find':146B 'ground':116B 'group':89B 'hr':83B 'idea':32B 'import':28B 'includ':47B,124B 'inform':148B 'interlink':98B 'k':136B 'keep':44B 'knowledg':12B,50B,108B 'librari':24B 'like':19B,79B 'live':34B 'meet':62B 'might':41B 'need':150B 'nest':101B 'note':30B,63B 'onboard':58B 'organ':69B 'outlin':3A,4B,46B,65B,111B 'place':7B,26B 'plan':53B 'playbook':57B 'polici':61B 'product':52B,81B 'realli':120B 'relationship':105B 'repres':77B 'rfcs':55B 'sale':56B,80B 'search':110B,125B,130B,154B 'share':23B 'shortcut':137B 'slack':157B 'slash':161B 'start':129B 'structur':64B 'support':49B 'team':11B,21B 'thing':39B 'think':16B 'time':141B 'topic':78B 'user':87B 'want':42B 'within':93B,106B,156B	2023-12-13 15:57:27.697+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-11-29 20:08:06.588+00	\N	\N	t	\N	2	f	\N	\N	\\x013dbce0e6e2030007010764656661756c7403097061726167726170680700bce0e6e20300060400bce0e6e20301f9014f75746c696e65206973206120706c61636520746f206275696c6420796f7572207465616d206b6e6f776c6564676520626173652c20796f7520636f756c64207468696e6b206f66206974206c696b6520796f7572207465616de280997320736861726564206c69627261727920e28093206120706c61636520666f7220696d706f7274616e7420646f63756d656e746174696f6e2c206e6f7465732c20616e6420696465617320746f206c69766520616e6420626520646973636f76657265642e20536f6d65207468696e677320796f75206d696768742077616e7420746f206b65657020696e204f75746c696e6520696e636c7564653a87bce0e6e20300030970617261677261706887bce0e6e203f701030b62756c6c65745f6c6973740700bce0e6e203f80103096c6973745f6974656d0700bce0e6e203f90103097061726167726170680700bce0e6e203fa01060400bce0e6e203fb010d446f63756d656e746174696f6e87bce0e6e203f90103096c6973745f6974656d0700bce0e6e203890203097061726167726170680700bce0e6e2038a02060400bce0e6e2038b0216537570706f7274206b6e6f776c65646765206261736587bce0e6e203890203096c6973745f6974656d0700bce0e6e203a20203097061726167726170680700bce0e6e203a302060400bce0e6e203a4021650726f6475637420706c616e7320616e64205246437387bce0e6e203a20203096c6973745f6974656d0700bce0e6e203bb0203097061726167726170680700bce0e6e203bc02060400bce0e6e203bd020f53616c657320706c6179626f6f6b7387bce0e6e203bb0203096c6973745f6974656d0700bce0e6e203cd0203097061726167726170680700bce0e6e203ce02060400bce0e6e203cf02154f6e626f617264696e6720636865636b6c6973747387bce0e6e203cd0203096c6973745f6974656d0700bce0e6e203e50203097061726167726170680700bce0e6e203e602060400bce0e6e203e70210436f6d70616e7920706f6c696369657387bce0e6e203e50203096c6973745f6974656d0700bce0e6e203f80203097061726167726170680700bce0e6e203f902060400bce0e6e203fa020d4d656574696e67206e6f74657387bce0e6e203f801030768656164696e670700bce0e6e2038803060400bce0e6e2038903095374727563747572652800bce0e6e2038803056c6576656c017d022800bce0e6e203880309636f6c6c6170736564017f87bce0e6e203880303097061726167726170680700bce0e6e2039503060400bce0e6e2039603b1024f75746c696e6520616c6c6f777320796f7520746f206f7267616e697a6520646f63756d656e747320696e2022636f6c6c656374696f6e73222c20666f72206578616d706c6520746865736520636f756c6420726570726573656e7420746f70696373206c696b652053616c65732c2050726f647563742c206f722048522e20596f752063616e2061737369676e207573657273206f722067726f7570732061636365737320746f20636f6c6c656374696f6e732e2057697468696e20636f6c6c656374696f6e7320646f63756d656e74732063616e20626520696e7465726c696e6b656420616e6420646565706c79206e657374656420746f20656173696c79206275696c642072656c6174696f6e73686970732077697468696e20796f7572206b6e6f776c6564676520626173652e87bce0e6e2039503030768656164696e670700bce0e6e203c805060400bce0e6e203c905065365617263682800bce0e6e203c805056c6576656c017d022800bce0e6e203c80509636f6c6c6170736564017f87bce0e6e203c80503097061726167726170680700bce0e6e203d205060400bce0e6e203d305494f75746c696e65206973206275696c742066726f6d207468652067726f756e6420757020746f206265207265616c6c7920666173742c20616e64207468617420696e636c756465732086bce0e6e2039c06046c696e6b1f7b2268726566223a222f736561726368222c227469746c65223a6e756c6c7d84bce0e6e2039d060673656172636886bce0e6e203a306046c696e6b046e756c6c84bce0e6e203a406312e20596f752063616e20737461727420736561726368696e672066726f6d20616e7977686572652077697468207468652086bce0e6e203d5060b636f64655f696e6c696e65027b7d84bce0e6e203d60605434d442b4b86bce0e6e203db060b636f64655f696e6c696e65046e756c6c84bce0e6e203dc0683012073686f727463757420e28093207468656e2066696c7465722062792074696d652c20617574686f722c20616e64206d6f726520746f2066696e642074686520696e666f726d6174696f6e20796f75206e6565642e204f7220796f752063616e207365617263682066726f6d2077697468696e20536c61636b2077697468207468652086bce0e6e203dd070b636f64655f696e6c696e65027b7d84bce0e6e203de07082f6f75746c696e6586bce0e6e203e6070b636f64655f696e6c696e65046e756c6c84bce0e6e203e7070f20736c61736820636f6d6d616e642e00	f	\N	t
03eb0ae6-b115-4373-8e2f-b16819e0f571	WQSHx6zwAr	test etsststsgdjhsjhdfk		2023-12-13 16:42:08.266+00	2023-12-13 16:42:14.143+00	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2	'etsststsgdjhsjhdfk':2A 'test':1A	2023-12-26 02:31:18.187+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	2023-12-13 16:42:14.143+00	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101cda9c1830f0007010764656661756c74030970617261677261706800	f	\N	t
80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	hhoHrcmRqw	full		2023-12-01 17:42:47.532+00	2023-12-26 02:31:18.262+00	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5	'full':1A 'guapissima':2C	2023-12-26 02:18:50.532+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	{guapissima}	\\x0101ef84adee0b0007010764656661756c74030970617261677261706800	f	\N	t
320691a8-2d1b-4e7b-b045-cf1131ddb83a	0lkMm3vN97			2023-12-26 02:02:50.943+00	2023-12-26 02:33:46.777+00	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3		2023-12-26 02:02:55.457+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101e7d0b2e2030007010764656661756c74030970617261677261706800	f	\N	t
66f115db-2e91-42fe-a61a-70540d735096	eyhCcTl8Rb			2023-12-26 02:31:23.401+00	2023-12-26 02:35:27.542+00	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3		2023-12-26 02:31:25.771+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101d7c28cad060007010764656661756c74030970617261677261706800	f	\N	t
96ec4573-c77f-4501-a351-25eb8d5875dd	XjxDDCCCLA	Bibliografía		2023-12-26 02:31:41.434+00	2023-12-26 02:33:52.923+00	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5	'bibliografía':1A	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	📚	2023-12-26 02:32:09.406+00	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101be8786f8030007010764656661756c74030970617261677261706800	f	\N	t
037c56f4-75f5-4981-8ad0-0b3b76fb5db6	8SF3aqEpO6			2023-12-26 02:32:22.338+00	2023-12-26 02:33:46.919+00	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3		2023-12-26 02:32:36.789+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101ba95dba9070007010764656661756c74030970617261677261706800	f	\N	t
fa4114b5-f8dd-4ced-9c4a-9de09f0bb938	I4HIJ23uZC			2023-12-26 02:33:22.443+00	2023-12-26 02:33:33.297+00	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2		2023-12-26 02:33:33.296+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	\N	\\x01018c8dafe4060007010764656661756c74030970617261677261706800	f	\N	t
7c379bec-75da-487e-91dc-44a10b2222de	rWrKvlNFYf			2023-12-26 02:24:54.282+00	2023-12-26 02:33:47.006+00	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	3		2023-12-26 02:24:57.222+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	\N	\N	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101c8a681ee0c0007010764656661756c74030970617261677261706800	f	\N	t
12ae755f-8cdb-4138-9190-471bc63c7532	PFUyro8kx3	Objectius i motivacions		2023-12-26 02:25:20.814+00	2023-12-26 02:34:44.982+00	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6	'motivacion':3A 'objectius':1A	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	📈	2023-12-26 02:25:53.323+00	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101b1bcebfe0e0007010764656661756c74030970617261677261706800	f	\N	t
6b70768f-3b44-4e55-a7ef-d5b7fa929659	hDfy4663CI	Informació tècnica actual		2023-12-26 02:26:57.185+00	2023-12-26 02:34:59.383+00	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6	'actual':3A 'informació':1A 'tècnica':2A	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	⚙️	2023-12-26 02:27:10.042+00	\N	\N	f	12.0.0	2	f	\N	\N	\\x0101d9c8e1990c0007010764656661756c74030970617261677261706800	f	\N	t
73358b46-0b2d-463e-9a8c-491a22155470	LKcZ6B7jBi	Descripció del Projecte	# Informació\n\nFlutter és un framework de desenvolupament de programari multiplataforma basat en el llenguatge de programació Dart. \n\nÉs de codi obert i va ser creat per Google.  ![Flutter logo](/api/attachments.redirect?id=431af781-d753-4dbf-9e60-a022d3f8f376 "right-50 =269x77")\n\n\\\nS’utilitza per desenvolupar aplicacions per a mòbils, web i escriptori de forma nativa. Ha estat utilitzat com el mètode principal per crear aplicacions per a Google Fuchsia. \n\nDe forma resumida, podríem dir que amb una única base de codi, pots crear aplicacions que funcionen tant en Android, iOS, Linux, Web o Windows.\n\n\\\n\\\n ![Flutter previsualització aplicacions.](/api/attachments.redirect?id=d7022dff-30a8-4598-8893-79837c85f8f8 " =896x476")\n\n\\\n# Característiques\n\n\\\n	2023-12-26 02:02:58.056+00	2023-12-26 02:39:52.796+00	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6	'-50':43B '-79837':108B '-8893':107B '/api/attachments.redirect':34B,101B '269x77':44B '30a8':105B '431af781':37B '431af781-d753-4dbf-9e60-a022d3f8f376':36B '4598':106B '4dbf':39B '896x476':110B '9e60':40B 'a022d3f8f376':41B 'amb':79B 'android':92B 'aplicacion':49B,68B,87B,100B 'basat':15B 'base':82B 'c85f8f8':109B 'característiqu':111B 'codi':24B,84B 'com':62B 'contextualització':4C 'crear':67B,86B 'creat':29B 'd7022dff':104B 'd7022dff-30a8':103B 'd753':38B 'dart':21B 'de':10B,12B,19B,23B,56B,73B,83B 'del':2A 'descripció':1A 'desenvolupa':11B 'desenvolupar':48B 'dir':77B 'el':17B,63B 'en':16B,91B 'escriptori':55B 'estat':60B 'flutter':6B,32B,98B 'forma':57B,74B 'framework':9B 'fuchsia':72B 'funcionen':89B 'googl':31B,71B 'ha':59B 'id':35B,102B 'informació':5B 'io':93B 'linux':94B 'llenguatg':18B 'logo':33B 'multiplataforma':14B 'mètode':64B 'mòbil':52B 'nativa':58B 'o':96B 'obert':25B 'per':30B,47B,50B,66B,69B 'podríem':76B 'pot':85B 'previsualització':99B 'princip':65B 'programació':20B 'programari':13B 'project':3A 'que':78B,88B 'resumida':75B 'right':42B 'ser':28B 'tant':90B 'un':8B 'una':80B 'utilitza':46B 'utilitzat':61B 'va':27B 'web':53B,95B 'window':97B 'és':7B,22B 'única':81B	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	ℹ️	2023-12-26 02:17:38.248+00	\N	\N	f	12.0.0	2	f	\N	{Contextualització}	\\x0401cbc28e9d060007010764656661756c7403097061726167726170682897d6f797040087c0eae78c03810603097061726167726170688797d6f79704000309706172616772617068010097d6f797040101000a4197d6f797040201000441c0eae78c03f00801000484c0eae78c039107b30153e280997574696c69747a612070657220646573656e766f6c757061722061706c69636163696f6e73207065722061206dc3b262696c732c20776562206920657363726970746f726920646520666f726d61206e61746976612e204861206573746174207574696c69747a617420636f6d20656c206dc3a8746f6465207072696e636970616c207065722063726561722061706c69636163696f6e7320706572206120476f6f676c6520467563687369612e20070097d6f797040006040097d6f79704c6019101446520666f726d6120726573756d6964612c20706f6472c3ad656d206469722071756520616d6220756e6120c3ba6e696361206261736520646520636f64692c20706f74732063726561722061706c69636163696f6e73207175652066756e63696f6e656e2074616e7420656e20416e64726f69642c20694f532c204c696e75782c20576562206f2057696e646f77732e8797d6f7970401030970617261677261706881c0eae78c0393070100048797d6f79704d60203097061726167726170688797d6f79704dc020309706172616772617068010097d6f79704dd020100048197d6f79704dd0201070097d6f79704dc020305696d616765280097d6f79704e402037372630177412f6170692f6174746163686d656e74732e72656469726563743f69643d64373032326466662d333061382d343539382d383839332d373938333763383566386638210097d6f79704e40205776964746801210097d6f79704e4020668656967687401210097d6f79704e4020b6c61796f7574436c61737301a197d6f79704e60201a197d6f79704e70201a197d6f79704e80201a897d6f79704e902017d800ea897d6f79704ea02017d9c07c7c0eae78c03930797d6f79704d7020305696d616765280097d6f79704ee02037372630177412f6170692f6174746163686d656e74732e72656469726563743f69643d34333161663738312d643735332d346462662d396536302d613032326433663866333736210097d6f79704ee0205776964746801210097d6f79704ee020668656967687401280097d6f79704ee020b6c61796f7574436c61737301770872696768742d3530a897d6f79704f002017d8d04a897d6f79704f102017d8d01210097d6f79704ee0203616c7401a897d6f79704f50201770c466c7574746572206c6f676f210097d6f79704e40203616c7401a897d6f79704f702017726466c75747465722070726576697375616c69747a616369c3b32061706c69636163696f6e732e48c0eae78c03000700cbc28e9d0600060400c0eae78c03000f466c757474657220c3a97320756e2081c0eae78c030e1384c0eae78c0321012084c0eae78c03221f6c6c656e6775617467652064652070726f6772616d616369c3b3204461727481c0eae78c03402c84c0eae78c036c022e2081c0eae78c036e6781c0eae78c03d5010381c0eae78c03d8017681c0eae78c03ce020181c0eae78c03cf025081c0eae78c039f030381c0eae78c03a2039101c4c0eae78c0321c0eae78c032203667261c1c0eae78c03b604c0eae78c032202c4c0eae78c03b804c0eae78c0322056d65776f72c1c0eae78c03bd04c0eae78c032204c1c0eae78c0322c0eae78c032301c4c0eae78c03c104c0eae78c0322016bc4c0eae78c03c204c0eae78c03230120c4c0eae78c03c204c0eae78c03c404026465c4c0eae78c03c404c0eae78c03230120c4c0eae78c03c404c0eae78c03c7040f646573656e766f6c7570616d656e74c4c0eae78c03c704c0eae78c03230120c4c0eae78c03c704c0eae78c03d704026465c4c0eae78c03d704c0eae78c03230120c1c0eae78c03d704c0eae78c03da0408c4c0eae78c03da04c0eae78c03230120c4c0eae78c03da04c0eae78c03e3040f6d756c7469706c617461666f726d61c4c0eae78c03e304c0eae78c03230120c1c0eae78c03e304c0eae78c03f30401c4c0eae78c03f404c0eae78c03f3040461736174c4c0eae78c03f304c0eae78c03230120c4c0eae78c03f304c0eae78c03f90402656ec4c0eae78c03f904c0eae78c03230120c4c0eae78c03f904c0eae78c03fc0402656cc4c0eae78c03e204c0eae78c03da040a70726f6772616d617269c4c0eae78c03f404c0eae78c03f5040162c1c0eae78c03d501c0eae78c03d6012ac1c0eae78c03d801c0eae78c03d90101c1c0eae78c03ce02c0eae78c03cf0202c1c0eae78c03cf02c0eae78c03d00201c1c0eae78c03cf02c0eae78c03b70505c1c0eae78c03b705c0eae78c03d00201c1c0eae78c03b705c0eae78c03bd050ac1c0eae78c03bd05c0eae78c03d00201c1c0eae78c03bd05c0eae78c03c80509c1c0eae78c03c805c0eae78c03d00202c1c0eae78c03d105c0eae78c03c80501c1c0eae78c03d305c0eae78c03d00201c1c0eae78c03d305c0eae78c03d50503c1c0eae78c03d505c0eae78c03d00201c1c0eae78c03d505c0eae78c03d90503c1c0eae78c03d905c0eae78c03d00201c1c0eae78c03d905c0eae78c03dd0503c1c0eae78c03dd05c0eae78c03d00204c1c0eae78c039f03c0eae78c03a00302c1c0eae78c03a203c0eae78c03a3030ec1c0eae78c03f405c0eae78c03a30307c1c0eae78c03f405c0eae78c03f50503c1c0eae78c03bd05c0eae78c03c9050287cbc28e9d060003097061726167726170680700c0eae78c038106060100c0eae78c0382068f01c7cbc28e9d0600c0eae78c03810603097061726167726170680700c0eae78c039207060400c0eae78c0393072dc3897320646520636f6469206f626572742069207661207365722063726561742070657220476f6f676c652e2081c0eae78c03bf07af01c7c0eae78c039207c0eae78c03810603097061726167726170680100c0eae78c03ef080100af011985868e7f0041cbc28e9d0600014785868e7f00030768656164696e67280085868e7f01056c6576656c017d01210085868e7f0109636f6c6c617073656401070085868e7f0106040085868e7f0401498185868e7f050a0003c797d6f79704dd0297d6f79704e302030768656164696e67280085868e7f13056c6576656c017d01210085868e7f1309636f6c6c617073656401010085868e7f130100044785868e7f1606040085868e7f1b01438185868e7f1c048485868e7f2007617261637465728185868e7f27018485868e7f2809c3ad73746971756573c785868e7f1397d6f79704e3020309706172616772617068010085868e7f310100048485868e7f0f086e666f726d6163698185868e7f3e028485868e7f4002c3b30397d6f79704070215d70205de0206e60206f00202f50201f70201c0eae78c030b0f13412c6fc503b70402be0405db0408f404018a057783068f01c007af01f008b00185868e7f0800010301060d15061d04280132053f02	f	\N	t
39a57f78-7f77-492b-8e6a-7219d79963b7	99rjOULYL0	Història	* **2015**: Flutter fue presentado por primera vez bajo el nombre de "Sky" y se ejecutó en el sistema operativo Android.\n* **2017**: Flutter se lanzó oficialmente como un producto de la división de ingeniería de Chrome de Google³.\n* **4 de diciembre de 2018**: Se lanzó la primera versión estable, Flutter 1.0⁴⁵.\n* **Junio de 2020**: Se anunció que las empresas Canonical y Google se unirían para llevar el entorno de desarrollo al sistema operativo Linux¹.\n* **3 de marzo de 2021**: En el evento virtual llamado "Flutter Engage", Google lanzó Flutter 2, el cambio oficial más grande que tuvo el SDK¹.\n\n\\\n	2023-12-26 02:26:41.084+00	2023-12-26 02:34:17.347+00	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6	'1.0':51B '2':90B '2015':2B '2017':22B '2018':43B '2020':54B '2021':79B '3':75B '4':39B 'al':71B 'android':21B 'anunció':56B 'bajo':9B 'cambio':92B 'canon':60B 'chrome':36B 'como':27B 'de':12B,30B,33B,35B,37B,40B,42B,53B,69B,76B,78B 'desarrollo':70B 'diciembr':41B 'división':32B 'ejecutó':16B 'el':10B,18B,67B,81B,91B,98B 'empresa':59B 'en':17B,80B 'engag':86B 'entorno':68B 'establ':49B 'evento':82B 'flutter':3B,23B,50B,85B,89B 'fue':4B 'googl':38B,62B,87B 'grand':95B 'història':1A 'ingeniería':34B 'junio':52B 'la':31B,46B 'lanzó':25B,45B,88B 'las':58B 'linux':74B 'llamado':84B 'llevar':66B 'marzo':77B 'más':94B 'nombr':11B 'ofici':93B 'oficialment':26B 'operativo':20B,73B 'para':65B 'por':6B 'presentado':5B 'primera':7B,47B 'producto':29B 'que':57B,96B 'sdk':99B 'se':15B,24B,44B,55B,63B 'sistema':19B,72B 'sky':13B 'tuvo':97B 'un':28B 'unirían':64B 'versión':48B 'vez':8B 'virtual':83B 'y':14B,61B	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	{1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7}	🏛️	2023-12-26 02:27:17.198+00	\N	\N	f	12.0.0	2	f	\N	\N	\\x0201b799e288080001010764656661756c740149c0fcc9e9030000940941b799e28808000100d20b87b799e2880800030b62756c6c65745f6c6973740100c0fcc9e903e71401007887c0fcc9e903e81403096c6973745f6974656d0700c0fcc9e903e11503097061726167726170680700c0fcc9e903e215060600c0fcc9e903e315067374726f6e67027b7d84c0fcc9e903e415043230313786c0fcc9e903e815067374726f6e67046e756c6c84c0fcc9e903e915673a20466c7574746572207365206c616e7ac3b3206f66696369616c6d656e746520636f6d6f20756e2070726f647563746f206465206c6120646976697369c3b36e20646520696e67656e696572c3ad61206465204368726f6d6520646520476f6f676c65c2b32e87c0fcc9e903e11503096c6973745f6974656d0700c0fcc9e903cd1603097061726167726170680700c0fcc9e903ce16060600c0fcc9e903cf16067374726f6e67027b7d84c0fcc9e903d01616342064652064696369656d627265206465203230313886c0fcc9e903e616067374726f6e67046e756c6c84c0fcc9e903e7163b3a205365206c616e7ac3b3206c61207072696d657261207665727369c3b36e2065737461626c652c20466c757474657220312e30e281b4e281b52e87c0fcc9e903cd1603096c6973745f6974656d0700c0fcc9e9039d1703097061726167726170680700c0fcc9e9039e17060600c0fcc9e9039f17067374726f6e67027b7d84c0fcc9e903a0170d4a756e696f206465203230323086c0fcc9e903ad17067374726f6e67046e756c6c84c0fcc9e903ae1780013a20536520616e756e6369c3b320717565206c617320656d7072657361732043616e6f6e6963616c207920476f6f676c6520736520756e6972c3ad616e2070617261206c6c6576617220656c20656e746f726e6f206465206465736172726f6c6c6f20616c2073697374656d61206f706572617469766f204c696e7578c2b92e87c0fcc9e9039d1703096c6973745f6974656d0700c0fcc9e903ac1803097061726167726170680700c0fcc9e903ad18060600c0fcc9e903ae18067374726f6e67027b7d84c0fcc9e903af181233206465206d61727a6f206465203230323186c0fcc9e903c118067374726f6e67046e756c6c84c0fcc9e903c2187a3a20456e20656c206576656e746f207669727475616c206c6c616d61646f2022466c757474657220456e67616765222c20476f6f676c65206c616e7ac3b320466c757474657220322c20656c2063616d62696f206f66696369616c206dc3a173206772616e646520717565207475766f20656c2053444bc2b92e87c0fcc9e903e71403097061726167726170680100c0fcc9e903ba1901002f81c0fcc9e903ba190100a105c1b799e2880800c0fcc9e903e714010075c1c0fcc9e9039409b799e28808000141c0fcc9e903e814010076c1c0fcc9e9038320b799e288080001007541c0fcc9e9038420010076c1c0fcc9e9038320c0fcc9e903fb2001007541c0fcc9e903f12101007641c0fcc9e903de23010077c1c0fcc9e903d524c0fcc9e903de230100bf01c1c0fcc9e903cd25c0fcc9e903de2301009201c1c0fcc9e9038d27c0fcc9e903de2301007dc1c0fcc9e903a028c0fcc9e903de23010077c7c0fcc9e9039e29c0fcc9e903de2303096c6973745f6974656d0700c0fcc9e903962a03097061726167726170680700c0fcc9e903972a060600c0fcc9e903982a067374726f6e67027b7d84c0fcc9e903992a043230313586c0fcc9e9039d2a067374726f6e67046e756c6c84c0fcc9e9039e2a6f3a20466c7574746572206675652070726573656e7461646f20706f72207072696d6572612076657a2062616a6f20656c206e6f6d6272652064652022536b7922207920736520656a65637574c3b320656e20656c2073697374656d61206f706572617469766f20416e64726f69642e41c0fcc9e90394090181c0fcc9e903ac1801000181c0fcc9e903ad180102b799e28808010001c0fcc9e9030400e714e81479bb19db108d2b04	f	\N	t
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
e2bdf39d-b4ad-4f52-bb89-38ae7303fbad	views.create	{"title": "Teest"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:02.01+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
6bf9e0e5-e43f-41d8-971b-49509c30ee64	documents.update	{"done": false, "title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:04.558+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
33da0ebd-80ad-424f-a056-a96a76c17346	documents.create	{"title": ""}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:08.277+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9093a5f3-d8c7-4f67-9376-24786c29e5d0	views.create	{"title": ""}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:11.511+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	8ef8f714-35ed-4813-a46c-2ffae8d44eca	172.21.0.1
b6c80384-3e0c-401e-878c-ca145b9095b9	documents.publish	{"title": "test etsststsgdjhsjhdfk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:14.157+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
fb3963c2-7f48-4a40-9917-f2b5cf882dfe	revisions.create	\N	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:14.143+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	12fdd680-186b-4193-9ad9-799892adf248	172.21.0.1
587e2d8e-39b7-43c8-81ff-1f21218af7ca	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-13 16:42:14.487+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d77a61fc-6cc4-42e1-9e48-c48d7164eb65	172.21.0.1
7ed49738-34d3-4eda-9df1-593637238c00	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:13.573+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
fab0815e-4e77-40d7-8a62-8f54b1609231	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:17.888+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
84dcf97a-717b-4cfb-8cb2-9b5fbb89bee4	users.signout	{"name": "root"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:21.97+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
4e7a7670-cf41-4335-997e-d16f170409e5	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:23.625+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9f90bdcd-4ff0-4e2c-bf3c-fc8a86ca1520	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:27.83+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
bf9b2843-c5d4-48fa-8fea-4ffd254b2ad0	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:28.842+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
b6843068-06f0-4675-893a-8c42ce979fa2	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:44.223+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
a7235f0f-6c52-4776-b26c-07e3ee8978a1	users.signout	{"name": "root"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:31:46.028+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9070d702-d89c-4e96-975c-c762f0802d69	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:34:07.625+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
2aa7e410-f60b-42a1-a994-223567677d2e	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:34:11.833+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
438f5558-856f-454f-b03f-27b5d996e343	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:34:12.207+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
68c78035-344c-41d5-b090-7b228f01bf01	users.update	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:34:18.022+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
09c8c71f-2f17-432b-8a6c-51ede6c160e0	fileOperations.create	{"type": "export", "format": "json"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:35:00.784+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	c662dfff-de32-4dd4-ba38-d96361b90a3e	172.21.0.1
5d383ccb-f474-470b-86f5-9710291171f9	fileOperations.create	{"type": "export", "format": "outline-markdown"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:44:58.626+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5caf6fdf-e1a4-4697-b7a9-e625f8002b5d	172.21.0.1
568b0dfe-2fe7-40c5-bb28-d8efc0c7e5fd	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:51:15.024+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
c4c59885-4d2a-4778-b95f-a7a6337f33ca	views.create	{"title": "Teest slkdfjaslk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 23:53:32.013+00	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2c7d7495-9435-4a6c-8a4a-83e49ebd362d	172.21.0.1
518e47af-42b9-480f-bb42-3cf28aa0ee6f	users.signout	{"name": "root"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 23:53:42.411+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
2bcaf67d-860e-4601-8709-8625e43e6808	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 23:53:54.919+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
eff4cd8f-5285-48b8-8490-605667a9487d	views.create	{"title": "test etsststsgdjhsjhdfk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 23:53:59.104+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	8ef8f714-35ed-4813-a46c-2ffae8d44eca	172.21.0.1
fea62871-a048-4378-9611-0830fc33108a	views.create	{"title": "test etsststsgdjhsjhdfk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 23:54:00.111+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	8ef8f714-35ed-4813-a46c-2ffae8d44eca	172.21.0.1
280ef6f2-1dc6-42e5-b255-708d8f295721	views.create	{"title": "test etsststsgdjhsjhdfk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-25 00:39:04.817+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	8ef8f714-35ed-4813-a46c-2ffae8d44eca	172.21.0.1
1f14f7b3-9971-434f-bb46-0690c7ea078f	users.signin	{"name": "root", "service": "oidc"}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-25 00:39:17.781+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9d58e99b-25b8-4907-bc5b-2d7743f82ddb	views.create	{"title": "test etsststsgdjhsjhdfk"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 01:56:49.866+00	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	8ef8f714-35ed-4813-a46c-2ffae8d44eca	172.21.0.1
93e2ab1b-ad58-4324-a833-08cf6206aca7	attachments.create	{"name": "780e0e64d323aad2cdd5.png"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 01:58:52.38+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	c33eee7c-085f-405a-8d2e-b43b03f86e5d	172.21.0.1
29d5488a-c5e9-41d5-9f83-0656fade87ca	teams.update	{"avatarUrl": "/api/files.get?key=public/1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7/c33eee7c-085f-405a-8d2e-b43b03f86e5d/780e0e64d323aad2cdd5.png"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 01:58:52.565+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
a91ffcc5-9a8d-4e9b-a7a4-8213aebd19df	teams.update	{"preferences": {"customTheme": {}, "publicBranding": true}}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 01:59:11.497+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
48d3b0eb-b44c-4b80-b715-47f798e24218	users.invite	{"name": "Gerard Monsó Salmons", "role": "admin", "email": "gerardmonso@gmail.com"}	1336ee01-727b-454e-b95c-7610a7ffd6b7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 01:59:34.828+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9a967ab0-19be-40ae-a02e-a1ac2840b81b	collections.create	{"name": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:02:36.205+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9c08a332-65ce-47c7-80dd-334d936b286b	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:02:51.016+00	320691a8-2d1b-4e7b-b045-cf1131ddb83a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
3c1bd178-93d6-422e-8876-d32fc572d95c	views.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:02:54.364+00	320691a8-2d1b-4e7b-b045-cf1131ddb83a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	22ece646-8c5b-4471-add7-6bffd87493f9	172.21.0.1
b7e2cc84-4fa0-4c84-a7d5-1c06a4c43a18	documents.delete	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:02:55.501+00	320691a8-2d1b-4e7b-b045-cf1131ddb83a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
ac3a90e4-c84c-467e-a1be-6b02f8a1ba8e	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:02:58.062+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
eb7ab465-3d41-4fd1-91b2-5f9eca2e83b8	views.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:03:01.237+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
ec2b499c-2959-4118-9ec6-a42d531795b6	documents.update	{"title": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:03:03.538+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
88470b15-91ce-48ba-8b3e-498078f41633	revisions.create	\N	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:03:03.518+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	b0a8ed41-f240-432f-846c-c6c8d5271e70	172.21.0.1
f5af5a4e-a30f-470b-90d4-68d903dc743a	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:08:04.234+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	ae7488ec-03df-450a-9f10-1cb0929dd173	172.21.0.1
136728f0-03d5-4067-ab00-e22fda350537	documents.publish	{"title": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:17:38.254+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
b3a73640-7459-4e1e-9639-e0c282c021aa	revisions.create	\N	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:17:38.248+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6b4f4f7e-9df9-46c1-9ff3-60d5d2cf95ab	172.21.0.1
3b4eae9c-f68b-4fe4-9d3c-f0ec781d317f	fileOperations.create	{"type": "export", "format": "json"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:18:07.286+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	59cba744-1d66-40bb-b11b-e94825a87037	172.21.0.1
b6e37b01-5b39-4c28-8627-1040bba9ef5b	teams.update	{"name": "Flutter Wiki", "preferences": {"customTheme": {}, "publicBranding": true}}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:18:40.5+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
4b56e2ec-436b-4b3a-80bd-22aff16ee04a	documents.delete	{"title": "full"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:18:50.547+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
3caf37cf-8a40-44d7-b691-800d198544f9	views.create	{"title": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:18:55.077+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
c96ec237-0221-49c5-86bd-514345a74671	attachments.create	{"name": "Monosnap Flutter - Crea aplicaciones para cualquier pantalla 2023-12-26 03-21-27.png"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:21:34.285+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	8a31527c-a5dd-4f43-b001-3075c331116b	172.21.0.1
4a5bd34b-66be-4347-9778-66a4bff43535	attachments.create	{"name": "Monosnap Flutter - Crea aplicaciones para cualquier pantalla 2023-12-26 03-21-27.png"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:22:21.518+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	d7022dff-30a8-4598-8893-79837c85f8f8	172.21.0.1
9ac3edbd-4983-42c5-8558-6a452dfba899	attachments.create	{"name": "image.png"}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:23:28.057+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	431af781-d753-4dbf-9e60-a022d3f8f376	172.21.0.1
35ab0af9-ec96-4ed8-94b5-d37f999148f1	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:24:54.303+00	7c379bec-75da-487e-91dc-44a10b2222de	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
01a0688b-ecda-43e9-be4d-cafb6e9a5320	documents.delete	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:24:57.289+00	7c379bec-75da-487e-91dc-44a10b2222de	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
bce111bf-f1bf-432c-9c21-0f9d7d4ce2d6	views.create	{"title": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:24:59.867+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
35076158-8fc7-41a5-a036-b078e3de80fe	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:25:20.833+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
99e92a05-754d-499f-afca-92045f62d90b	views.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:25:23.976+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	acf902b1-00c6-4628-9df8-ceb73d6c5de6	172.21.0.1
aa078c0d-a667-4a0c-a0f4-7cfc32864f73	documents.update	{"title": "Objectius i motivacions"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:25:45.922+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
70ae42fe-4457-497f-a3cd-5e85b8d48f88	documents.publish	{"title": "Objectius i motivacions"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:25:53.325+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
08207438-b66d-46d3-88b9-0c121bda45f8	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:25:53.425+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	17941658-cea8-4ab3-a3b1-9d7cb3f92d19	172.21.0.1
3687c8e1-2baf-4a03-beca-74577b73e788	revisions.create	\N	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:25:53.323+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	65655c36-ee47-4004-b024-5c1ce915f59b	172.21.0.1
a665a5c1-4334-4d25-91f3-4f073d1e0c11	documents.move	{"title": "Objectius i motivacions", "documentIds": ["12ae755f-8cdb-4138-9190-471bc63c7532"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b"]}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:09.944+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
6066bc5b-ddfe-43dc-82c6-7b212cb8308c	views.create	{"title": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:14.308+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
d0a53d52-a0f0-4df1-92b7-a7c0e14eebf9	documents.update	{"title": "Descripció del Projecte"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:28.793+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
208bceef-f859-459e-ac17-9a6d8790bf6f	views.create	{"title": "Objectius i motivacions"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:33.265+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	acf902b1-00c6-4628-9df8-ceb73d6c5de6	172.21.0.1
c0b2e2a7-401c-4a62-9753-6b1c97eb0a66	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:41.096+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
37ca8c70-2d28-48f2-b6f2-77d458de646b	views.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:44.234+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5f667adf-1e7b-4089-bb81-f7227cd7c569	172.21.0.1
8a45af17-1af9-4664-adfa-b93f4d9e7883	documents.update	{"title": "Història"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:45.771+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
be87dc91-4838-456f-9de0-6653201e4c6c	views.create	{"title": "Objectius i motivacions"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:53.041+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	acf902b1-00c6-4628-9df8-ceb73d6c5de6	172.21.0.1
9b7b82ee-e2c8-415b-ade2-6e64a739a60f	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:57.195+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
02a368d9-07c6-4c54-8982-ea2afcb0d79a	views.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:00.356+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	c0ce4701-c7f9-4bab-9953-d43d5771aa4f	172.21.0.1
6e2df14a-d245-4570-846f-e86c4e221557	documents.update	{"title": "Informació tècnica actual"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:07.888+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
cd320aa0-c0de-470b-b940-81ae76f1eedd	documents.publish	{"title": "Informació tècnica actual"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:10.07+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
08a4a4d8-a951-48b6-964d-4a8fe63bc2c7	revisions.create	\N	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:10.043+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	74a8ed52-2c5e-487c-af12-b5e82e974519	172.21.0.1
f842a098-c093-41cd-9fdf-f7d66c4aca02	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:10.297+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	97b47f68-ffa0-40b8-a564-88e43bb531f4	172.21.0.1
51f73e0c-9920-4840-bc18-8bc14a31d65f	documents.move	{"title": "Informació tècnica actual", "documentIds": ["6b70768f-3b44-4e55-a7ef-d5b7fa929659"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b"]}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:14.165+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
0e3e568d-f7ac-4fe3-9e96-19a8feab95f5	documents.publish	{"title": "Història"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:17.205+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
b97f7437-7617-41dc-b724-d83606217ac8	revisions.create	\N	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:17.198+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	79bca196-a813-4610-ac6a-2ba4a8dc08f3	172.21.0.1
abc240c4-f93e-4108-8381-2b5dd6e7a546	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:17.308+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	a331285c-e7f5-4fe8-a97a-a3dad2ccb2b1	172.21.0.1
6f492455-ba15-4ae3-9a2e-c9cc563f9ecb	views.create	{"title": "Història"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:19.316+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5f667adf-1e7b-4089-bb81-f7227cd7c569	172.21.0.1
8b512212-1d59-4b9d-9274-dfda8e496d96	documents.move	{"title": "Història", "documentIds": ["39a57f78-7f77-492b-8e6a-7219d79963b7"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b"]}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:21.443+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
e7944536-fa0e-4adb-954c-c004b1631ce2	views.create	{"title": "Descripció del Projecte"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:27:25.748+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
d127f674-8e68-4092-aac0-9b798aa55f37	views.create	{"title": "Història"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:28:21.296+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5f667adf-1e7b-4089-bb81-f7227cd7c569	172.21.0.1
a77fbee5-f9fb-43d9-8835-f84eacb6e2be	views.create	{"title": "Descripció del Projecte"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:30:47.348+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
1d06c687-f95a-40cd-9679-a8dd2321d9e4	collections.create	{"name": "Bibliografía"}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:08.566+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
fb0131ae-f285-4456-8dce-49bd161e0fd4	collections.move	{"index": "D"}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:14.66+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
60ea4102-c94f-4947-863b-75e568dfd65b	collections.delete	{"name": "Welcome"}	\N	baa1278e-4d95-4187-afbe-0e0d5612060d	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:18.193+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
d5aa8858-146c-42e2-b4d0-484478e66951	documents.move	{"title": "full", "documentIds": ["80da3cdf-2c1e-4da7-a947-75a77f4bc1e9"], "collectionIds": []}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:18.288+00	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
24461a48-0bc9-4dbb-9adc-8da37f54c902	documents.create	{"title": ""}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:23.409+00	66f115db-2e91-42fe-a61a-70540d735096	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
ca2b84a3-fa7d-4914-8341-86e747d52947	documents.delete	{"title": ""}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:25.828+00	66f115db-2e91-42fe-a61a-70540d735096	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
c7eec5f8-f8c8-486b-8cd5-0b43d67d14bf	revisions.create	\N	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:26:28.771+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	16cd1e2d-b74a-4f6a-8b23-e5924c090446	172.21.0.1
9ca2127c-e6c0-4e9d-bb48-beca77dd3756	documents.create	{"title": ""}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:41.444+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
929498aa-8156-4087-a8db-9795a7bd736e	views.create	{"title": ""}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:44.592+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	aa7bcd7f-172a-461b-aab1-4f84857b965d	172.21.0.1
6c976fc8-1d29-4e8d-88b3-ac2e89430a99	documents.update	{"title": "Bibliografía"}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:31:49.438+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
2645540d-9e29-493a-9376-7e6fb5eaef86	documents.update	{"title": "Bibliografía"}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:02.878+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
a005d4b2-eb4f-4408-b52c-1ce2fa766eda	documents.publish	{"title": "Bibliografía"}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:09.41+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
c854d01e-5b88-4a3c-b519-f1dde727f2f8	revisions.create	\N	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:09.406+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	153a64bf-4891-4cb5-bfe1-f4c5a3271637	172.21.0.1
4c3dc468-2a92-498c-826c-6d9c2500606a	subscriptions.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:09.546+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	70316fcd-0891-4b5f-b5ed-cab444a667bd	172.21.0.1
a2629676-5d21-4d67-8029-68c63b589bd2	documents.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:22.359+00	037c56f4-75f5-4981-8ad0-0b3b76fb5db6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
f4df0ee4-feb3-44ea-935d-699fc3d1a5c4	views.create	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:25.555+00	037c56f4-75f5-4981-8ad0-0b3b76fb5db6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	4e7cf30d-4318-4a2c-b0ac-d58bd5c4a7d2	172.21.0.1
6ca78c81-ec54-4de6-a36b-761395f1d6ad	collections.create	{"name": "Flutter"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:36.337+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
6337e2f4-91c7-4236-80dc-5f9804437d3a	documents.delete	{"title": ""}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:36.842+00	037c56f4-75f5-4981-8ad0-0b3b76fb5db6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
6f53abfa-4473-4bd2-aedb-babe453d442a	stars.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:32:49.291+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	0f82a1ee-fb4a-407c-a2c4-60c9d466d726	172.21.0.1
2448623a-31d1-4ca6-b66e-fc2a324a372a	collections.update	{"name": "Flutter"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:10.166+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
868d9d0b-9fae-4194-8d2f-501b88f01156	documents.move	{"title": "Descripció del Projecte", "documentIds": ["73358b46-0b2d-463e-9a8c-491a22155470"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b", "7f0c5dbc-1952-4f91-8174-3bc36432ec8f"]}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:20.154+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
307066bb-622b-4198-9c86-97aac26a26e2	documents.create	{"title": ""}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:22.466+00	fa4114b5-f8dd-4ced-9c4a-9de09f0bb938	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
658e43ab-ab0f-4c13-a839-a54149d7fd04	views.create	{"title": ""}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:25.633+00	fa4114b5-f8dd-4ced-9c4a-9de09f0bb938	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	cf6bd34f-d096-4503-a73b-10546ec89d9e	172.21.0.1
ff2ca0cd-8550-4cb9-92d8-e2c04030ef0b	documents.delete	{"title": ""}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:33.307+00	fa4114b5-f8dd-4ced-9c4a-9de09f0bb938	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
93fbe31c-f27d-4441-9424-89e0066f1bf7	documents.move	{"title": "Història", "documentIds": ["39a57f78-7f77-492b-8e6a-7219d79963b7"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b", "7f0c5dbc-1952-4f91-8174-3bc36432ec8f"]}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:35.969+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
9ac1e692-04cc-4269-9b42-cf8a115e2384	documents.move	{"title": "Objectius i motivacions", "documentIds": ["12ae755f-8cdb-4138-9190-471bc63c7532"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b", "7f0c5dbc-1952-4f91-8174-3bc36432ec8f"]}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:38.086+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
7dd9f59a-b886-4a3d-b0a7-5f9868669224	documents.move	{"title": "Informació tècnica actual", "documentIds": ["6b70768f-3b44-4e55-a7ef-d5b7fa929659"], "collectionIds": ["86712e27-00bd-4eb1-b254-88f56b3a5f8b", "7f0c5dbc-1952-4f91-8174-3bc36432ec8f"]}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:41.021+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
aaa02f7d-99d8-42cd-9ca8-996bbf9014d6	collections.delete	{"name": "Contextualització"}	\N	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:46.51+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
7e20f634-1a13-4e89-94da-479e4357a7f0	documents.move	{"title": "", "documentIds": ["320691a8-2d1b-4e7b-b045-cf1131ddb83a"], "collectionIds": []}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:46.796+00	320691a8-2d1b-4e7b-b045-cf1131ddb83a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
95dd5e76-c8ad-44f8-88d2-71f2e4d151c6	documents.move	{"title": "", "documentIds": ["037c56f4-75f5-4981-8ad0-0b3b76fb5db6"], "collectionIds": []}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:46.94+00	037c56f4-75f5-4981-8ad0-0b3b76fb5db6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
24176822-a6b5-4ceb-b0d6-13c864b18458	documents.move	{"title": "", "documentIds": ["7c379bec-75da-487e-91dc-44a10b2222de"], "collectionIds": []}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:47.028+00	7c379bec-75da-487e-91dc-44a10b2222de	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
af053746-d148-483d-9f09-dadf343c913b	documents.move	{"title": "Bibliografía", "documentIds": ["96ec4573-c77f-4501-a351-25eb8d5875dd"], "collectionIds": ["57fab8ab-aeee-4af9-9a97-af9d3948cd47", "7f0c5dbc-1952-4f91-8174-3bc36432ec8f"]}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:33:52.925+00	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
a752d47b-a2f5-4ddd-bee3-69fd69061057	views.create	{"title": "Descripció del Projecte"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:04.679+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
1e5752fb-66eb-4691-a823-c901b77a435d	documents.update	{"title": "Descripció del Projecte"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:08.715+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
ab75e340-188b-496c-991f-30b5ec6727a4	views.create	{"title": "Història"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:12.055+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5f667adf-1e7b-4089-bb81-f7227cd7c569	172.21.0.1
8bb3dd66-7f46-4def-97c8-373a58f869bb	documents.update	{"title": "Història"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:17.391+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
f5f4140a-e0b5-43ac-8e4e-dce70a8e917b	views.create	{"title": "Objectius i motivacions"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:19.838+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	acf902b1-00c6-4628-9df8-ceb73d6c5de6	172.21.0.1
1d7f2fb1-32b0-4100-aaf2-405ea0a348ac	documents.update	{"title": "Objectius i motivacions"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:45.028+00	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
7e871668-ee5e-480f-a743-c79736b96bc0	views.create	{"title": "Informació tècnica actual"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:47.484+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	c0ce4701-c7f9-4bab-9953-d43d5771aa4f	172.21.0.1
59908eb0-d86c-446f-85ba-98d23044e6c9	documents.update	{"done": false, "title": "Informació tècnica actual"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:59.485+00	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
ced7258e-f569-4008-b21e-db1f3175d91f	views.create	{"title": "Història"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:35:02.391+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5f667adf-1e7b-4089-bb81-f7227cd7c569	172.21.0.1
c92ed2f0-fea0-452d-b247-b71c734203bc	views.create	{"title": "Descripció del Projecte"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:35:06.387+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
a4621715-44c5-4d4e-b970-018630497615	collections.delete	{"name": "Bibliografía"}	\N	57fab8ab-aeee-4af9-9a97-af9d3948cd47	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:35:27.496+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
939e52bd-9632-43bc-8807-cb40c9722709	documents.move	{"title": "", "documentIds": ["66f115db-2e91-42fe-a61a-70540d735096"], "collectionIds": []}	\N	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:35:27.553+00	66f115db-2e91-42fe-a61a-70540d735096	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	172.21.0.1
04c0dcc6-7879-4fca-b601-9eca4d9d00c2	fileOperations.create	{"type": "export", "format": "outline-markdown"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:35:47.152+00	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	c3526c88-ca80-4ca0-8e6b-5088309fd9e0	172.21.0.1
f4699a34-3f39-4b37-851f-2bf08852c22c	views.create	{"title": "Descripció del Projecte"}	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:37:44.881+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	108e386a-8b63-4aa1-a92d-4a576fe6f6f5	172.21.0.1
8067076c-7e16-46b6-b26e-ef3b82a6289f	stars.create	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:38:41.853+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	0c0903ff-798f-416e-91e1-064b2bd04986	172.21.0.1
f779f57b-c53a-4763-9dbc-7623c9f4f901	stars.delete	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:38:42.794+00	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	0c0903ff-798f-416e-91e1-064b2bd04986	172.21.0.1
af0fa70f-1e10-49d9-b1a8-60604f4684be	revisions.create	\N	\N	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:34:17.347+00	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	0b498a57-e911-4c4f-938a-fae9826009e9	172.21.0.1
\.


--
-- Data for Name: file_operations; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.file_operations (id, state, type, key, url, size, "userId", "collectionId", "teamId", "createdAt", "updatedAt", error, format, "includeAttachments") FROM stdin;
c662dfff-de32-4dd4-ba38-d96361b90a3e	complete	export	uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/46ce682b-6b62-49ab-8356-4347dc20801f/Wiki-export.zip	/api/files.get?key=uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/46ce682b-6b62-49ab-8356-4347dc20801f/Wiki-export.zip	1076	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:35:00.769+00	2023-12-24 20:35:01.004+00	\N	json	t
5caf6fdf-e1a4-4697-b7a9-e625f8002b5d	complete	export	uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/8860604f-6a96-4f60-9d87-5bc6a2773a76/Wiki-export.zip	/api/files.get?key=uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/8860604f-6a96-4f60-9d87-5bc6a2773a76/Wiki-export.zip	625	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-24 20:44:58.614+00	2023-12-24 20:44:58.806+00	\N	outline-markdown	t
59cba744-1d66-40bb-b11b-e94825a87037	complete	export	uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/bc4dd8b0-5cd2-410c-9ac7-699315584910/Contextualització-export.zip	/api/files.get?key=uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/bc4dd8b0-5cd2-410c-9ac7-699315584910/Contextualització-export.zip	1265	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	86712e27-00bd-4eb1-b254-88f56b3a5f8b	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:18:07.275+00	2023-12-26 02:18:07.483+00	\N	json	t
c3526c88-ca80-4ca0-8e6b-5088309fd9e0	complete	export	uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/91237b76-1b01-4dab-ac3c-6ae44f3905b0/Flutter-export.zip	/api/files.get?key=uploads/e82cc78d-01b7-4225-8c9f-7eccfcc5829e/91237b76-1b01-4dab-ac3c-6ae44f3905b0/Flutter-export.zip	879491	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	7f0c5dbc-1952-4f91-8174-3bc36432ec8f	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	2023-12-26 02:35:47.145+00	2023-12-26 02:35:47.882+00	\N	outline-markdown	t
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
691627bf-bfb7-4f6e-bb08-6235f2e6cae1	Teest		2023-12-13 16:34:16.907+00	2023-12-13 16:34:17.017+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	b1190c7f-51fd-4303-a805-152fc6e5f80f	12.0.0	2	\N
12fdd680-186b-4193-9ad9-799892adf248	test etsststsgdjhsjhdfk		2023-12-13 16:42:14.143+00	2023-12-13 16:42:14.34+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	03eb0ae6-b115-4373-8e2f-b16819e0f571	12.0.0	2	\N
b0a8ed41-f240-432f-846c-c6c8d5271e70	Contextualització		2023-12-26 02:03:03.518+00	2023-12-26 02:08:04.09+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	12.0.0	2	\N
6b4f4f7e-9df9-46c1-9ff3-60d5d2cf95ab	Contextualització	Flutter és un framework de desenvolupament de programari multiplataforma basat en el llenguatge de programació Dart. \n\nÉs de codi obert i va ser creat per Google. \n\nS’utilitza per desenvolupar aplicacions per a mòbils, web i escriptori de forma nativa. Ha estat utilitzat com el mètode principal per crear aplicacions per a Google Fuchsia. \n\nDe forma resumida, podríem dir que amb una única base de codi, pots crear aplicacions que funcionen tant en Android, iOS, Linux, Web o Windows.	2023-12-26 02:17:38.248+00	2023-12-26 02:17:38.447+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	12.0.0	2	\N
65655c36-ee47-4004-b024-5c1ce915f59b	Objectius i motivacions		2023-12-26 02:25:53.323+00	2023-12-26 02:25:53.42+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	12ae755f-8cdb-4138-9190-471bc63c7532	12.0.0	2	\N
74a8ed52-2c5e-487c-af12-b5e82e974519	Informació tècnica actual		2023-12-26 02:27:10.043+00	2023-12-26 02:27:10.282+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6b70768f-3b44-4e55-a7ef-d5b7fa929659	12.0.0	2	\N
79bca196-a813-4610-ac6a-2ba4a8dc08f3	Història		2023-12-26 02:27:17.198+00	2023-12-26 02:27:17.282+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	39a57f78-7f77-492b-8e6a-7219d79963b7	12.0.0	2	\N
16cd1e2d-b74a-4f6a-8b23-e5924c090446	Descripció del Projecte	Flutter és un framework de desenvolupament de programari multiplataforma basat en el llenguatge de programació Dart. \n\nÉs de codi obert i va ser creat per Google.  ![Flutter logo](/api/attachments.redirect?id=431af781-d753-4dbf-9e60-a022d3f8f376 "right-50 =269x77")\n\n\\\nS’utilitza per desenvolupar aplicacions per a mòbils, web i escriptori de forma nativa. Ha estat utilitzat com el mètode principal per crear aplicacions per a Google Fuchsia. \n\nDe forma resumida, podríem dir que amb una única base de codi, pots crear aplicacions que funcionen tant en Android, iOS, Linux, Web o Windows.\n\n\\\n\\\n ![Flutter previsualització aplicacions.](/api/attachments.redirect?id=d7022dff-30a8-4598-8893-79837c85f8f8 " =896x476")\n\n\\\n\\\n	2023-12-26 02:26:28.771+00	2023-12-26 02:31:28.944+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	12.0.0	2	\N
153a64bf-4891-4cb5-bfe1-f4c5a3271637	Bibliografía		2023-12-26 02:32:09.406+00	2023-12-26 02:32:09.527+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	96ec4573-c77f-4501-a351-25eb8d5875dd	12.0.0	2	📚
0b498a57-e911-4c4f-938a-fae9826009e9	Història	* **2015**: Flutter fue presentado por primera vez bajo el nombre de "Sky" y se ejecutó en el sistema operativo Android.\n* **2017**: Flutter se lanzó oficialmente como un producto de la división de ingeniería de Chrome de Google³.\n* **4 de diciembre de 2018**: Se lanzó la primera versión estable, Flutter 1.0⁴⁵.\n* **Junio de 2020**: Se anunció que las empresas Canonical y Google se unirían para llevar el entorno de desarrollo al sistema operativo Linux¹.\n* **3 de marzo de 2021**: En el evento virtual llamado "Flutter Engage", Google lanzó Flutter 2, el cambio oficial más grande que tuvo el SDK¹.\n\n\\\n	2023-12-26 02:34:17.347+00	2023-12-26 02:39:17.554+00	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	39a57f78-7f77-492b-8e6a-7219d79963b7	12.0.0	2	🏛️
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
0f82a1ee-fb4a-407c-a2c4-60c9d466d726	\N	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2023-12-26 02:32:49.274+00	2023-12-26 02:32:49.274+00	P	7f0c5dbc-1952-4f91-8174-3bc36432ec8f
\.


--
-- Data for Name: subscriptions; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.subscriptions (id, "userId", "documentId", event, "createdAt", "updatedAt", "deletedAt") FROM stdin;
4451a205-ee5e-4f9f-b6df-11b61dd5161b	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	620d3033-3f30-44d7-9714-eb5e7fe80dc8	documents.update	2023-12-01 17:30:25.168+00	2023-12-01 17:30:25.168+00	\N
d34e7638-6d56-4787-a23e-c64e7c7c407a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	80da3cdf-2c1e-4da7-a947-75a77f4bc1e9	documents.update	2023-12-01 18:07:24.815+00	2023-12-01 18:07:24.815+00	\N
cac28313-1501-4343-be96-0fce52939e6f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	b1190c7f-51fd-4303-a805-152fc6e5f80f	documents.update	2023-12-13 16:34:17.023+00	2023-12-13 16:34:17.023+00	\N
d77a61fc-6cc4-42e1-9e48-c48d7164eb65	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	03eb0ae6-b115-4373-8e2f-b16819e0f571	documents.update	2023-12-13 16:42:14.385+00	2023-12-13 16:42:14.385+00	\N
ae7488ec-03df-450a-9f10-1cb0929dd173	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	73358b46-0b2d-463e-9a8c-491a22155470	documents.update	2023-12-26 02:08:04.204+00	2023-12-26 02:08:04.204+00	\N
17941658-cea8-4ab3-a3b1-9d7cb3f92d19	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	12ae755f-8cdb-4138-9190-471bc63c7532	documents.update	2023-12-26 02:25:53.414+00	2023-12-26 02:25:53.414+00	\N
97b47f68-ffa0-40b8-a564-88e43bb531f4	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	6b70768f-3b44-4e55-a7ef-d5b7fa929659	documents.update	2023-12-26 02:27:10.276+00	2023-12-26 02:27:10.276+00	\N
a331285c-e7f5-4fe8-a97a-a3dad2ccb2b1	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	39a57f78-7f77-492b-8e6a-7219d79963b7	documents.update	2023-12-26 02:27:17.292+00	2023-12-26 02:27:17.292+00	\N
70316fcd-0891-4b5f-b5ed-cab444a667bd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	96ec4573-c77f-4501-a351-25eb8d5875dd	documents.update	2023-12-26 02:32:09.531+00	2023-12-26 02:32:09.531+00	\N
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
e82cc78d-01b7-4225-8c9f-7eccfcc5829e	Flutter Wiki	2023-11-29 20:08:06.13+00	2023-12-26 02:18:40.494+00	/api/files.get?key=public/1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7/c33eee7c-085f-405a-8d2e-b43b03f86e5d/780e0e64d323aad2cdd5.png	\N	t	root	t	t	\N	true	\N	member	\N	t	f	{"customTheme": {}, "publicBranding": true}
\.


--
-- Data for Name: user_authentications; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.user_authentications (id, "userId", "authenticationProviderId", "accessToken", "refreshToken", scopes, "providerId", "createdAt", "updatedAt", "expiresAt", "lastValidatedAt") FROM stdin;
880c21fc-57d8-4682-886e-fd6f4735e0ea	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	699d6287-d2b0-495e-9247-f8486ce319aa	\\x6db7c84bed4ddad84b2425e913b9b3d69efe7e42e782a54c9ad9d1e302dcbf74d95d0d6e1259ded874bde80c139860ce3634f3ad4b7736ac4042979b531e03bc	\\x4a256b103aadf05bd41016ea71fe05b64f97f9149f4d190f07a048b2534b4d6ac2556b97e35dbeef28bf8d2f0875fdbbd15fea7f6959283b9922ef7d2097452c	{openid,profile,email}	1	2023-11-29 20:08:06.325+00	2023-12-26 01:56:46.689+00	2023-12-26 02:56:46.608+00	2023-12-26 01:56:46.689+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.users (id, email, name, "isAdmin", "jwtSecret", "createdAt", "updatedAt", "teamId", "avatarUrl", "suspendedById", "suspendedAt", "lastActiveAt", "lastActiveIp", "lastSignedInAt", "lastSignedInIp", "deletedAt", "lastSigninEmailSentAt", language, "isViewer", flags, "invitedById", preferences, "notificationSettings") FROM stdin;
1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	root@root.com	root	t	\\x61f5c8115f987f6d5591acf5903a351197692891e2b90a62363b8802a5633da0f79d80e77f604eca3856615aff531c6c2dd82d3883d41274d24689115f9f7484d468aee1fe54f0c55eca11e90404842a0ef1a73a90b63365b3f1844bcf7db4167874f0cbeab60d3d6477099df73ba534f192f2eb6dc8098c5a17f27015f5bbd8d4cc935abcbeee774d42f907faaeb1bd60ebe9352b34ea60429c54650564f8f4	2023-11-29 20:08:06.306+00	2023-12-26 02:35:47.084+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	\N	\N	2023-12-26 02:35:47.084+00	172.21.0.1	2023-12-25 00:39:17.775+00	172.21.0.1	\N	\N	es_ES	f	{"desktopWeb": 1}	\N	\N	{}
1336ee01-727b-454e-b95c-7610a7ffd6b7	gerardmonso@gmail.com	Gerard Monsó Salmons	t	\\xc5ff68d4ca05df346e05f4c796ddf082826e9603bc499372a74a709770622ae227f383e9c835deb238bf6e4ba88135acfc87e568b6f73f271344a07e09b3489d1ea34463397fda030195a0deab9b350f69904adae56ce3f83410a940212d9b1634139eff1d491a46b7fe1299bb066a90063b3e94b6753ffac436f187e9dadff488d4d3253d3ca8b9ecb2a1c6f05bb657988a758c2ca368520518b09f00134abe	2023-12-26 01:59:34.806+00	2023-12-26 01:59:34.806+00	e82cc78d-01b7-4225-8c9f-7eccfcc5829e	\N	\N	\N	\N	\N	\N	\N	\N	\N	en_US	f	{"inviteSent": 1}	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	\N	{}
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
2c7d7495-9435-4a6c-8a4a-83e49ebd362d	b1190c7f-51fd-4303-a805-152fc6e5f80f	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	10	2023-12-13 16:34:16.107+00	2023-12-24 23:53:32.006+00	\N
8ef8f714-35ed-4813-a46c-2ffae8d44eca	03eb0ae6-b115-4373-8e2f-b16819e0f571	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5	2023-12-13 16:42:11.492+00	2023-12-26 01:56:49.847+00	\N
22ece646-8c5b-4471-add7-6bffd87493f9	320691a8-2d1b-4e7b-b045-cf1131ddb83a	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-26 02:02:54.351+00	2023-12-26 02:02:54.351+00	\N
aa7bcd7f-172a-461b-aab1-4f84857b965d	96ec4573-c77f-4501-a351-25eb8d5875dd	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-26 02:31:44.58+00	2023-12-26 02:31:44.58+00	\N
4e7cf30d-4318-4a2c-b0ac-d58bd5c4a7d2	037c56f4-75f5-4981-8ad0-0b3b76fb5db6	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-26 02:32:25.546+00	2023-12-26 02:32:25.546+00	\N
cf6bd34f-d096-4503-a73b-10546ec89d9e	fa4114b5-f8dd-4ced-9c4a-9de09f0bb938	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	1	2023-12-26 02:33:25.621+00	2023-12-26 02:33:25.621+00	\N
acf902b1-00c6-4628-9df8-ceb73d6c5de6	12ae755f-8cdb-4138-9190-471bc63c7532	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	4	2023-12-26 02:25:23.949+00	2023-12-26 02:34:19.835+00	\N
c0ce4701-c7f9-4bab-9953-d43d5771aa4f	6b70768f-3b44-4e55-a7ef-d5b7fa929659	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	2	2023-12-26 02:27:00.348+00	2023-12-26 02:34:47.48+00	\N
5f667adf-1e7b-4089-bb81-f7227cd7c569	39a57f78-7f77-492b-8e6a-7219d79963b7	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	5	2023-12-26 02:26:44.22+00	2023-12-26 02:35:02.388+00	2023-12-26 02:30:21.659+00
108e386a-8b63-4aa1-a92d-4a576fe6f6f5	73358b46-0b2d-463e-9a8c-491a22155470	1ac35fa3-c67a-41dd-ad0e-ae2a33de71d7	9	2023-12-26 02:03:01.228+00	2023-12-26 02:38:57.554+00	2023-12-26 02:38:57.554+00
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

