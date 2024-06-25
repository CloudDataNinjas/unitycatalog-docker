install uc_catalog from core_nightly;
load uc_catalog;
install delta;
load delta;

CREATE SECRET (
    TYPE UC,
    TOKEN 'not-used',
    ENDPOINT 'http://unitycatalog:8080',
    AWS_REGION 'us-east-2'
);

ATTACH 'unity' AS unity (TYPE UC_CATALOG);

--ATTACH 'my_catalog' AS my_catalog (TYPE UC_CATALOG);

SHOW ALL TABLES;
select * from unity.default.numbers;