import re
import sys

month_names = {
  1: "jan",
  2: "feb",
  3: "mar",
  4: "apr",
  5: "may",
  6: "jun",
  7: "jul",
  8: "aug",
  9: "sep",
  10: "oct",
  11: "nov",
  12: "dec"
}

db_name = sys.argv[1]

old_db = open(db_name + ".bib","r")
new_db = open(db_name + "-bibtex.bib","w")

for line in old_db.readlines():
    date_pattern = re.search("date.*{(\d+)-?(\d+)?}",line)
    if date_pattern:
        new_db.write("  year = {{{0:s}}},\n".format(date_pattern.group(1)))
        # print "  year = {{{0:s}}},\n".format(date_pattern.group(1)),
        if date_pattern.group(2) != None:
            month = month_names[int(date_pattern.group(2))];
            new_db.write("  month = {},\n".format(month))
        continue
    if re.search("journaltitle",line):
        new_db.write(line.replace("journaltitle","journal"))
        continue
    new_db.write(line)
old_db.close()
new_db.close()
