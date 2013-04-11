maintainer        "Dario Blanco"
maintainer_email  "dario@darioblanco.com"
license           "Apache 2.0"
description       "Installs and configures Gaffer"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.1"

recipe "gaffer", "Gets and installs Gaffer"

depends "python"

%w{ ubuntu debian }.each do |os|
  supports os
end
