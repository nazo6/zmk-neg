if [ -e ./zmk ]; then
  echo "Updating ZMK"
  cd zmk
  git pull
  uv run -- west update
else
  echo "Cloning ZMK"
  git clone https://github.com/zmkfirmware/zmk.git
  cd zmk
  uv run -- west init -l /app
  uv run -- west update
  ln -s ../../../../neg/boards/shields/negl ./app/boards/shields/negl
fi
