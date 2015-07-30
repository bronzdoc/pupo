##Pupo
Just a little lamp environment to experiment with puppet.

#Configuration
<code>vagrant up</code>

This will generate a coumple of things:

1. It will configure a puppet master server.
2. Setup the puppet master main manifest with a lamp module to run on <code>web nodes</code>.
3. Then it will build up 3 web nodes, each will be provisioned with a lamp stack.

#Notes:

When the web nodes be running make sure to sign the certificate nodes from the
puppet master server.

