
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Provides behavior for streaming from one filehandle to another',
  'AUTHOR' => 'Nicholas Perez <nperez@cpan.org>',
  'BUILD_REQUIRES' => {
    'File::Temp' => '0',
    'IO::All' => '0',
    'POE' => '0',
    'Test::More' => '0',
    'Text::Lorem' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'POEx-Role-Streaming',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'POEx::Role::Streaming',
  'PREREQ_PM' => {
    'MooseX::Declare' => '0',
    'MooseX::Types::Moose' => '0',
    'POE::Filter::Stream' => '0',
    'POE::Wheel::ReadWrite' => '0',
    'POEx::Role::SessionInstantiation' => '0',
    'POEx::Types' => '0',
    'aliased' => '0'
  },
  'VERSION' => '1.102610',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



