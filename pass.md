# PASS - UNIX PASSWORD MANAGER
To migrate pass across machines, export keys and import on new machine. Then
copy and paste .password-store folder. Based on this [article](https://antisyllogism.medium.com/password-manager-pass-importing-and-exporting-b206a7eaaa70)

Check which gpg key is pass using, not sure if it needs mail or ID, works
with mail so far.
```bash
cat .password-store/.gpg-id 
```

List all gpg keys
```bash
gpg -k
```
Export public and private keys
```bash
gpg --output MY_FILENAME_public.gpg --armor --export GPG_KEY_ID
gpg --output MY_FILENAME_secret.gpg --armor --export-secret-key GPG_KEY_ID
```
Copy all files to new computer with `scp`
```bash
scp MY_FILENAME_public.gpg MY_FILENAME_secret.gpg myUser@192.168.2.137:~/
scp -r .password-store/ jonrda@192.XXX.X.XXX:~/.password-store
```

Import gpg in new machine
```bash
gpg2 --import MY_FILENAME_public.gpg
gpg2 --allow-secret-key-import --import MY_FILENAME_secret.gpg
```

It should work out of the box. Make sure that `.password-store/..gpg-id` uses
the appropiate gpg key.


## Another method, not so good
From this [article](https://droidrant.com/notes-pass-unix-password-manager/)

For exporting. Careful to choose the correct one, usually last one.
* `gpg --list-keys` and `gpg --list-secret-keys` to view current keys.
* `gpg --export-secret-keys <keyID> > <filename.gpg>` and
  `gpg --export <keyID> > <filename.gpg>`

For importing in new machine.
* `gpg --import <filename.gpg>`

Lastly paste `.password-store` folder. It should work out of the box.

If trust issue arises: `gpg: There is no assurance this key belongs to
the named user`.

```console
gpg --edit-key <key ID>`
> trust
> 5
```
