-- migrate:up

CREATE TABLE stripe.charges (
    id text primary key,
    object text,
    card jsonb,
    paid boolean,
    "order" text,
    amount bigint,
    review text,
    source jsonb,
    status text,
    created integer,
    dispute text,
    invoice text,
    outcome jsonb,
    refunds jsonb,
    updated integer,
    captured boolean,
    currency text,
    customer text,
    livemode boolean,
    metadata jsonb,
    refunded boolean,
    shipping jsonb,
    application text,
    description text,
    destination text,
    failure_code text,
    on_behalf_of text,
    fraud_details jsonb,
    receipt_email text,
    payment_intent text,
    receipt_number text,
    transfer_group text,
    amount_refunded bigint,
    application_fee text,
    failure_message text,
    source_transfer text,
    balance_transaction text,
    statement_descriptor text,
    statement_description text,
    payment_method_details jsonb
);

-- migrate:down

drop table "stripe"."charges";