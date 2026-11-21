
CREATE SCHEMA IF NOT EXISTS identity_schema;
CREATE SCHEMA IF NOT EXISTS payment_schema;
CREATE SCHEMA IF NOT EXISTS settlement_schema;

CREATE USER identity_svc_user WITH PASSWORD 'identity_pass';
CREATE USER payment_svc_user WITH PASSWORD 'payment_pass';
CREATE USER settlement_svc_user WITH PASSWORD 'settlement_pass';

GRANT USAGE, CREATE ON SCHEMA identity_schema TO identity_svc_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA identity_schema GRANT ALL ON TABLES TO identity_svc_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA identity_schema GRANT ALL ON SEQUENCES TO identity_svc_user;

GRANT USAGE, CREATE ON SCHEMA payment_schema TO payment_svc_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA payment_schema GRANT ALL ON TABLES TO payment_svc_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA payment_schema GRANT ALL ON SEQUENCES TO payment_svc_user;

GRANT USAGE, CREATE ON SCHEMA settlement_schema TO settlement_svc_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA settlement_schema GRANT ALL ON TABLES TO settlement_svc_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA settlement_schema GRANT ALL ON SEQUENCES TO settlement_svc_user;