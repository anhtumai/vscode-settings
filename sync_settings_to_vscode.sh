: <<'END_COMMENT'
Sync vscode settings from the repo to your VSCode

Requirements:
- export VSCODE_SETTING to the path of your vscode setting folder
END_COMMENT

VSCODE_SETTING_PATH=${VSCODE_SETTING:-'~/.config/Code/User'}

echo "Copy all settings to $VSCODE_SETTING_PATH/*"

for file in $(ls -A ./settings)
do
    cp ./settings/$file $VSCODE_SETTING_PATH
done