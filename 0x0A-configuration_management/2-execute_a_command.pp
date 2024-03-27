#!/bin/bash

# Using Puppet, create a manifest that kills a process named killmenow.
exec { 'kill_killmenow_process':
command     => "pkill -f killmenow",
path        => ['/usr/bin/':'/bin/':'/usr/local/bin/'],
onlyif      => 'pgrep -f killmenow',
refreshonly => true,
}

