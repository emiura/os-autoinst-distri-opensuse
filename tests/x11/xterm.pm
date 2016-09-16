# SUSE's openQA tests
#
# Copyright © 2009-2013 Bernhard M. Wiedemann
# Copyright © 2012-2016 SUSE LLC
#
# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.

use base "x11test";
use strict;
use testapi;

sub run() {
    mouse_hide(1);
    x11_start_program("xterm");
    assert_screen('xterm-started');
    for (1 .. 13) { send_key "ret" }
    type_string "echo If you can see this text xterm is working.\n";
    assert_screen 'test-xterm-1';
    send_key "alt-f4";
}

1;
# vim: set sw=4 et:
