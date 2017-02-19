use Alien::Base::ModuleBuild;
# See perldoc Module::Build for details of how this works

my $builder = Alien::Base::ModuleBuild->new
    ( module_name     => 'Alien::Tcl',
      license         => 'perl',
      alien_repository => {
      			protocol => 'local',
      			location => 'src',
      			exact_filename => 'tcl866-src.zip',				
      },
      alien_build_commands => ['cd win && %c --prefix=%s --enable-64bit', 'make'],
      alien_install_commands => ['make install'],
    )->create_build_script;
