board.csv : board.sql
	psql -d 990 -f $< | csvsort | csvgrep -i -r "^$$" -c "PrsnNm" > $@

%.ncol : %.csv
	sed 's/ /_/g' $< | \
            sed 's/[-&]//g' | \
            csvformat -T > $@

org.gml : board.ncol
	python scripts/csv2out.py $< | \
            sed 's/    name /    label /g' | \
            sed 's/    weight /    label /g' > $@
