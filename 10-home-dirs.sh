for directory in code desktop documents downloads music pictures videos; do
    mkdir -p $HOME/directory
done

for directory in Desktop Documents Downloads Music Pictures Videos Templates; do
    rmdir $HOME/directory
done

# TODO: Update XDG directories so it doesn't recreate uppercase ones
