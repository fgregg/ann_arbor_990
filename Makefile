board.csv : board.sql
	psql -d 990 -f $< | csvsort > $@

%.ncol : %.csv
	sed 's/ /_/g' $< | csvformat -T > $@

org.gml : board.ncol
	python scripts/csv2out.py $< | \
            sed 's/    name /    label /g' | \
            sed 's/    weight /    label /g' > $@
