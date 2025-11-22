#!/bin/sh

cat > "$HOME/.config/chezmoi/chezmoi.toml" <<EOF
encryption = "age"
[age]
    identity = "$HOME/.config/chezmoi/key.txt"
    recipient = "age1heynlrltn9spy0dntnwqlz9rmeunh34v9y09z9qfzf2ve5n44p4q3ukqsu"
EOF


bw get attachment key.txt --itemid fa8790c9-a7f0-42f0-8b5d-b39d0180e53a --output "$HOME/.config/chezmoi/key.txt"
