#!/bin/bash

# Using Puppet, create a manifest that kills a process named killmenow.

exec { 'kill_killmenow_process':
    command => 'pkill -f killmenow',
    onlyif => 'pgrep -f killmenow',
}

