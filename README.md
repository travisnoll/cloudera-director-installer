# cloudera-director-installer
The idea is that you can pass a url to an AWS instance so it runs a set of commands on provision, resulting in the provisioning of a functioning cloudera director.


try using this as yourn user data script:

#!/bin/sh
curl https://raw.githubusercontent.com/travisnoll/cloudera-director-installer/master/ubuntu-boostrap.sh | sh
