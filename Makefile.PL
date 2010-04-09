
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'POEx::Role::Streaming',
                       'DISTNAME' => 'POEx-Role-Streaming',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31'
                                               },
                       'AUTHOR' => 'Nicholas Perez <nperez@cpan.org>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'IO::All' => '0',
                                             'Text::Lorem' => '0',
                                             'File::Temp' => '0',
                                             'POE' => '0'
                                           },
                       'ABSTRACT' => 'Encapsulated streaming behavior from one handle to another',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100990',
                       'PREREQ_PM' => {
                                        'POEx::Role::SessionInstantiation' => '0',
                                        'MooseX::Types::Moose' => '0',
                                        'POE::Wheel::ReadWrite' => '0',
                                        'MooseX::Declare' => '0',
                                        'aliased' => '0',
                                        'POE::Filter::Stream' => '0',
                                        'POEx::Types' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



