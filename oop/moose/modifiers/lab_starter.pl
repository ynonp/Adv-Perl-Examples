my $d = Document->new('file1.txt');
my $p = PersistentDocument->new('file2.txt');

# This one does not change file1.txt
$d->set_line(2, 'This is the new line 2');

# This one changes file2.txt
$p->set_line(2, 'This is the new line 2');

# Finally, this one changes file1.txt
$d->save;