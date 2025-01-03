# Archived on January 2025: superseded by VCV Rack 2.6.0: building Rack with MSYS has been fixed.

Kept in case anyone finds it useful. No further updates will be released.

# GccDowngraderForVCV
Downgrades MSYS2' GCC to allow building VCV Rack dependencies.

---

## To use:

- Clone this repository.

- Change to the folder where you cloned it.

- Run `./downgradegcc.sh`

- Press any key to confirm and wait.

- If you want to prevent pacman from updating GCC (and only GCC), run `./preventgccupgrade.sh`, press a key and wait.

- You can now build VCV Rack's dependencies **and** update other packages.

## To remove

If you used the preventgccupgrade.sh script...

- Open the

  `<yourmsysinstalldir>/etc/pacman.conf`

file with your favorite text editor.

Remove the lines between:

`#<<<<Begin GCC downgrader update prevention>>>>`

and

`#<<<<End GCC downgrader update prevention>>>>`

You can remove those lines if you would like to, as well. (They are comments ignored by pacman).

Save the file.

And… that’s it, your MSYS2 GCC will update normally going forward.

Enjoy! -Bloodbat
