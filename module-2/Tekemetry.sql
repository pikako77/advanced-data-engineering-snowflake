USE DATABASE snowflake;
USE SCHEMA telemetry;
SELECT * FROM events;

DESC TABLE EVENTS;

USE DATABASE staging_tasty_bytes;
CREATE OR REPLACE SCHEMA telemetry;
CREATE OR REPLACE EVENT TABLE pipeline_events;
DESC TABLE pipeline_events;

ALTER ACCOUNT SET EVENT_TABLE = staging_tasty_bytes.telemetry.pipeline_events;
