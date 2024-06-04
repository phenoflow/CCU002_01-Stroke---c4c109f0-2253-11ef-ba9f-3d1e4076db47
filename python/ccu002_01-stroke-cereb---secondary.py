# Rochelle Knight, Venexia Walker, et al., 2024.

import sys, csv, re

codes = [{"code":"195168007","system":"icd10"},{"code":"195206000","system":"icd10"},{"code":"G45","system":"icd10"},{"code":"I63.0","system":"icd10"},{"code":"I63.8","system":"icd10"},{"code":"I63.5","system":"icd10"},{"code":"I63.1","system":"icd10"},{"code":"I63.9","system":"icd10"},{"code":"I63.3","system":"icd10"},{"code":"I63.2","system":"icd10"},{"code":"I63.4","system":"icd10"},{"code":"230706003","system":"icd10"},{"code":"78569004","system":"icd10"},{"code":"276219001","system":"icd10"},{"code":"230695002","system":"icd10"},{"code":"734384004","system":"icd10"},{"code":"230708002","system":"icd10"},{"code":"230696001","system":"icd10"},{"code":"329641000119104","system":"icd10"},{"code":"230693009","system":"icd10"},{"code":"230690007","system":"icd10"},{"code":"230694003","system":"icd10"},{"code":"95460007","system":"icd10"},{"code":"195211003","system":"icd10"},{"code":"734383005","system":"icd10"},{"code":"195210002","system":"icd10"},{"code":"432504007","system":"icd10"},{"code":"16002111000119106","system":"icd10"},{"code":"75543006","system":"icd10"},{"code":"195190007","system":"icd10"},{"code":"16371781000119100","system":"icd10"},{"code":"444172003","system":"icd10"},{"code":"195216008","system":"icd10"},{"code":"230707007","system":"icd10"},{"code":"195209007","system":"icd10"},{"code":"195213000","system":"icd10"},{"code":"307766002","system":"icd10"},{"code":"281240008","system":"icd10"},{"code":"195230003","system":"icd10"},{"code":"307767006","system":"icd10"},{"code":"71444005","system":"icd10"},{"code":"195189003","system":"icd10"},{"code":"16002031000119102","system":"icd10"},{"code":"G641.","system":"icd10"},{"code":"L440.","system":"icd10"},{"code":"G64z2","system":"icd10"},{"code":"G64z3","system":"icd10"},{"code":"Gyu64","system":"icd10"},{"code":"G640.","system":"icd10"},{"code":"G64z.","system":"icd10"},{"code":"G664.","system":"icd10"},{"code":"G6410","system":"icd10"},{"code":"G6400","system":"icd10"},{"code":"G683.","system":"icd10"},{"code":"G66..","system":"icd10"},{"code":"Fyu55","system":"icd10"},{"code":"G65..","system":"icd10"},{"code":"G65y.","system":"icd10"},{"code":"G65zz","system":"icd10"},{"code":"G65z1","system":"icd10"},{"code":"G65z.","system":"icd10"},{"code":"Gyu6F","system":"icd10"},{"code":"G61X.","system":"icd10"},{"code":"G61X1","system":"icd10"},{"code":"G619.","system":"icd10"},{"code":"G617.","system":"icd10"},{"code":"Gyu62","system":"icd10"},{"code":"G618.","system":"icd10"},{"code":"G61z.","system":"icd10"},{"code":"G613.","system":"icd10"},{"code":"G61..","system":"icd10"},{"code":"G61X0","system":"icd10"},{"code":"70043","system":"icd10"},{"code":"G681.","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_01-stroke-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_01-stroke-cereb---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_01-stroke-cereb---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_01-stroke-cereb---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
