: <<'END_COMMENT'
Sync vscode settings from VSCODE to your repo

Requirements:
- export VSCODE_SETTING to the path of your vscode setting folder

END_COMMENT

DEFAULT_VSCODE_SETTING_PATH=$HOME/.config/Code/User
VSCODE_SETTING_PATH=${VSCODE_SETTING:-$DEFAULT_VSCODE_SETTING_PATH}

echo "Copy all settings to $VSCODE_SETTING_PATH/*"

for file in $(ls -A ./settings)
do
    cp "$VSCODE_SETTING_PATH/$file" ./settings/$file
done