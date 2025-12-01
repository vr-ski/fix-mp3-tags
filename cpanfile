# cpanfile
requires 'perl' => '5.034';

# Runtime dependencies
requires 'MP3::Tag';
requires 'Getopt::Long' => '2.58';
requires 'File::Find' => '1.39';
requires 'File::Basename' => '2.85';
requires 'Cwd' => '3.75';

# Development dependencies
on test => sub {
    requires 'Test::More';
    requires 'Test::Exception';
    requires 'Test::Output';
    requires 'Path::Tiny';
};

on develop => sub {
    requires 'Perl::Critic' => '0';
    requires 'Perl::Tidy' => '0';
    requires 'Perl::Version';
};
