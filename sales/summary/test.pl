#!/bin/perl
while (<>) {
	s/""/dqDQ/g;
	print;
}
