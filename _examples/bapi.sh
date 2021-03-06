mkdir _download
cd _download
bget api biots --tool signalp
bget api biots --name signalp
bget api biots --topic Proteomics
bget api biots --dtype 'Protein sequence'
bget api biots --dfmt FASTA
bget api biots --ofmt 'ClustalW format'
bget api cligov --info-dat-vers
bget api cligov --info-api-vers
bget api cligov --info-api-defs
bget api cligov --info-study-struct
bget api cligov --info-study-fields
bget api cligov --info-study-stat
bget api cligov --info-search-area
bget api cligov -q heart+attack --full-studies --format json
bget api cligov -q heart+attack --fields NCTId,Condition,BriefTitle --study-fields
bget api cligov -q heart+attack --field Condition --field-values
bget api dta -a DCA00000060
bget api dta -s GSE31106 | bfmt --json-pretty -
bget api dta --type dataset | bfmt --json-pretty --indent 2 -
bget api dta -g upregulated | json2csv -o out.csv
bget api gdc -p
bget api gdc -p --json-pretty
bget api gdc -p -q TARGET-NBL --json-pretty
bget api gdc -p --format tsv > tcga_projects.tsv
bget api gdc -p --format csv > tcga_projects.csv
bget api gdc -p --from 1 --size 2
bget api gdc -s
bget api gdc -c
bget api gdc -f
bget api gdc -a
bget api gdc -m -q "5b2974ad-f932-499b-90a3-93577a9f0573,556e5e3f-0ab9-4b6c-aa62-c42f6a6cf20c" -o my_manifest.txt
bget api gdc -m -q "5b2974ad-f932-499b-90a3-93577a9f0573,556e5e3f-0ab9-4b6c-aa62-c42f6a6cf20c" > my_manifest.txt
bget api gdc -m -q "5b2974ad-f932-499b-90a3-93577a9f0573,556e5e3f-0ab9-4b6c-aa62-c42f6a6cf20c" -n
bget api gdc -d -q "5b2974ad-f932-499b-90a3-93577a9f0573" -n
bget api ncbi -q "Galectins control MTOR and AMPK in response to lysosomal damage to induce autophagy OR MTOR-independent autophagy induced by interrupted endoplasmic reticulum-mitochondrial Ca2+ communication: a dead end in cancer cells. OR The PARK10 gene USP24 is a negative regulator of autophagy and ULK1 protein stability OR Coordinate regulation of autophagy and the ubiquitin proteasome system by MTOR." | bioctl cvrt  --xml2json pubmed -
bget api covid19 --all
bget api covid19 --cts
bget api covid19 --ct --name China
bget api covid19 --ct-d-one --name China
bget api covid19 --ct-d-one-total --name China
bget api covid19 --ct-st-d-one --name China --status confirmed
bget api covid19 --ct-st-d-one-live --name China --status confirmed
bget api covid19 --ct-st-d-one-total --name China --status confirmed
bget api covid19 --ct-st-live --name China --status confirmed
bget api covid19 --ct-st --name China --status confirmed
bget api covid19 --ct-st-total --name China --status confirmed
bget api covid19 --ct-total --name China
bget api covid19 --live-ct --name China
bget api covid19 --live-ct-st-date --name China --status confirmed --date 2020-04-20T06:20:47Z
bget api covid19 --live-ct-st --name China --status confirmed
bget api covid19 --summary
bget api covid19 --export
bget api covid19 --webhook https://your_webhook.com

cd ..
bget --clean
