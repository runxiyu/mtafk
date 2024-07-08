# mtafk, a Minetest AFK client

## Usage
```sh
passvar=supersecretpassword ./mtafk minetest.example.org 30000 myusername passvar
```

The password must be passed as an environment variable so it won't appear on
the process list, which is important when running on multiuser systems.

## Licensing

* The entire project may be used under the terms of GNU LGPL v3 or later.
* The SRP implementation by est31 is licensed under the MIT/Expat license
* The main client loop and networking code by celeron55, taken from Minetest
  and modified by hax, is licensed GNU LGPL v2.1 or later.
* The sha256 implementation, taken from the OpenSSL project, is licensed
  under the OpenSSL license.
* The small version of the GNU GMP (big numbers) library is taken from the
  GNU project, licensed under GNU LGPL v3 or later.
