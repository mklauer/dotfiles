# dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

## What's included

| Source file | Installed as |
|---|---|
| `dot_bashrc` | `~/.bashrc` |
| `dot_bashrc.d/` | `~/.bashrc.d/` |
| `dot_tmux.conf` | `~/.tmux.conf` |

### External repos (`.chezmoiexternal.toml`)

chezmoi automatically clones these on apply:

- `~/.config/nvim` — [mklauer/nvim](https://github.com/mklauer/nvim)
- `~/.tmux/plugins/tpm` — [tmux-plugins/tpm](https://github.com/tmux-plugins/tpm)

## First-time setup on a new machine

1. Install chezmoi:
   ```sh
   sh -c "$(curl -fsLS get.chezmoi.io)"
   ```

2. Initialize and apply directly from this repo:
   ```sh
   chezmoi init --apply https://github.com/mklauer/dotfiles.git
   ```

   This clones the repo to `~/.local/share/chezmoi` and applies all dotfiles in one step.

## Daily usage

| Task | Command |
|---|---|
| See what would change | `chezmoi diff` |
| Apply changes to home dir | `chezmoi apply` |
| Edit a managed file | `chezmoi edit ~/.bashrc` |
| Pull latest and apply | `chezmoi update` |
| Add a new dotfile | `chezmoi add ~/.some_config` |
| Open source directory | `chezmoi cd` |

## Making changes

Edit files in the chezmoi source directory (`~/.local/share/chezmoi`), then commit and push:

```sh
chezmoi cd
# edit files...
git add -p
git commit -m "your message"
git push
```

Or use `chezmoi edit <file>` which opens the source file directly in your `$EDITOR`.
