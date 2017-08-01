# Installation
0. Download the `flatui.dconf` file
1. Start gnome-terminal and create a new profile(`File -> New Profile`). Don't forget to name it (`FlatUI` will do).
2. Copy the profile id from the new profile window, for example: `dcdb7bed-0624-4a5f-8a96-56888fec5c68`
3. Close the new profile window and execute the following command in a directory containing the downloaded file(replace `<PROFILE_ID>` with the one copied in step 2:
```
$ dconf load /org/gnome/terminal/legacy/profiles:/:<PROFILE_ID>/ < flatui.dconf

# with an actual profile id:
$ dconf load /org/gnome/terminal/legacy/profiles:/:dcdb7bed-0624-4a5f-8a96-56888fec5c68/ < flatui.dconf
```
4. Go to `File -> Preferences -> Profiles` and set `FlatUI` as default profile for new terminals.
