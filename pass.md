# PASS - UNIX PASSWORD MANAGER

To migrate pass across machines, export keys and import on new machine. Then
copy and paste .password-store folder. Based on this [article](https://droidrant.com/notes-pass-unix-password-manager/)

For exporting. Careful to choose the correct one, usually last one.
* `gpg --list-keys` and `gpg --list-secret-keys` to view current keys.
* `gpg --export-secret-keys <keyID> > <filename.gpg>` and
  `gpg --export <keyID> > <filename.gpg>`

For importing in new machine.
* `gpg --import <filename.gpg>`

Lastly paste `.password-store` folder. It should work out of the box.

If trust issu arises: `gpg: There is no assurance this key belongs to
the named user`.

```console
gpg --edit-key <key ID>`
> trust
> 5
```
