#!/bin/perl 
@key_columns = (0,1) ;
$pivot_column_no = 2 ;
$value_column_no = 3 ;
$same_record=1 ;
@record=();
while (<>) {
	if ($_ =~ /^[ \t]*\r*$/ ){ #do nothing if input line is empty
	}
	else {
		chomp;
		s/\r$//;
		#s/\t/EF\t/g ;
		#s/$/EF/ ;     # so empty fields at the end of a records will not be dropped by split function
		@cell = split /\t/;
		foreach $i (@key_columns)
		{
			$same_record = 0 if ($cell[$i] ne $record[$i] )	;
		}
		if ( ! $same_record ) { 
			# encounter new record. Write out existing record
			write_out (@record) ;
			@record=();
			foreach $i ( @key_columns, $value_column_no) {
				$record[$i] = $cell[$i] ;
			}
			$same_record=1 ;
		} 
		else {
			$pivoted_heading= $cell[$pivot_column_no] ;
			$record[$#record + 1 ]  = $cell[$value_column_no] ;
		};
	}
}
write_out (@record);

sub write_out
{
	@record = @_ ;
	$record_line = join ("\t", @record) ;
	#$record_line =~ s/EF\t/\t/g ;
	#$record_line =~ s/EF$//g ;
	if ( $record_line !~ /^$/ ) 
	{
		print $record_line, "\n"   ;
	}
}
