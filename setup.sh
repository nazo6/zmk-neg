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
  ln -s ../../../../keyball/boards/shields/keyball61 ./app/boards/shields/keyball61
fi
