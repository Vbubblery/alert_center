CREATE INDEX alerts_index ON alert
(
    site_id,
    date_of_alert DESC,
    criticality DESC,
    product_site_id
);
