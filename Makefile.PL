use 5.034;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'FixMP3Tags',
    VERSION_FROM  => 'bin/fix-mp3-tags',
    AUTHOR        => 'vr-ski 166657596+vr-ski@users.noreply.github.com',
    ABSTRACT      => 'Fix MP3 tags from directory structure',
    PREREQ_PM     => {
        'MP3::Tag'      => '1.16',
        'Getopt::Long'  => '2.58',
        'File::Find'    => '1.39',
        'File::Basename'=> '2.86',
        'Cwd'           => '3.75',
    },
    EXE_FILES     => ['bin/fix-mp3-tags'],
    test          => { TESTS => 't/*.t' },
    LICENSE       => 'bsd',
    META_MERGE    => {
        'meta-spec' => { version => 2 },
        resources   => {
            repository => {
                type => 'git',
                url  => 'https://github.com/vr-ski/fix-mp3-tags.git',
                web  => 'https://github.com/vr-ski/fix-mp3-tags',
            },
            bugtracker => {
                web => 'https://github.com/vr-ski/fix-mp3-tags/issues',
            },
        },
    },
);
