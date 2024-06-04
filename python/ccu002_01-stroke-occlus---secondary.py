# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"H34","system":"icd10"},{"code":"16000511000119103","system":"icd10"},{"code":"724424009","system":"icd10"},{"code":"1089411000000104","system":"icd10"},{"code":"373606000","system":"icd10"},{"code":"230691006","system":"icd10"},{"code":"20059004","system":"icd10"},{"code":"G64..","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-stroke-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-stroke-occlus---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-stroke-occlus---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-stroke-occlus---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
