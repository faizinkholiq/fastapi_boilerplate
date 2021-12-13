CREATE TABLE IF NOT EXISTS ocr_web.vendor
(
    id SERIAL PRIMARY KEY,
    name character varying(60)  NOT NULL,
    npwp character varying(100),
    no_ebupot character varying(100),
    date timestamp with time zone,
    masa_pajak character varying(15),
    qty_bruto character varying(15),
    pph character varying(15),
    tarif character varying(15),
    alamat text,
    email character varying(50),
    status character varying(50),
    keterangan text
);