ssh-add -D
ssh-add ~/.ssh/id_ed25519
git add --all
git commit -a -m "wip"
git push
ssh-add -D
ssh-add ~/.ssh/id_rsa
