#!/bin/python
import csv
import sys
import re


header_rows = [ 0] 
key_columns = [ ]
headers =[];
def clean() :
	num_pattern=re.compile('^[+\-]?[0-9.,]+$')
	empty_string =re.compile('[\t ]?')
	#with open('abc.txt', newline='') as csvfile:
	with sys.stdin as csvfile:
		row_num ++
		reader = csv.reader(csvfile, delimiter=',', quotechar='"')
		for row in reader:
			for i in range(0, len(row) ) : # check for empty line
				if not empty_string.match ( row[i]) :
					empty=false 
					break
			if ! empty :	
				for i in range(0, len(row) ) :
					if num_pattern.match(row[i]):
						row[i]=re.sub(',','', row[i])
				if row_num in header_rows:
					headers.append(row)
				if not 	( row_num in header_rows) :
					columnar(row)

def columnar (key_columns, headers, row):
	"Convert to clolumnar key value format"

	for col in range(0, len(row))-key_rows :
		if not col in key_columns
		cell =   [record[i] for i in key_columns] + headers[0:len(headers)][col] +  [row[col]]
		print('|'.join(cell))

def pivot(key_columns, pivot_column, value_column, cell):
	if 

	

	
	
	
