# Ignore all Obsidian configuration by default
.obsidian/*

# Exception: sync core configuration files within the .obsidian folder
!.obsidian/plugins/
!.obsidian/themes/
!.obsidian/community-plugins.json
!.obsidian/hotkeys.json
!.obsidian/appearance.json
!.obsidian/graph.json
!.obsidian/publish.json
!.obsidian/snippets/

# Ignore specific files that are temporary or cause merge conflicts
.obsidian/workspace
.obsidian/workspace.json
.obsidian/auto-pair-mod.json
.obsidian/backups/
.obsidian/cache/
.obsidian/plugins/obsidian-git/
.obsidian/plugins/last-modified-timestamp/
.obsidian/tasks-plugin.json # Example for a specific plugin's local settings

# Ignore OS-specific temporary files
.DS_Store
Thumbs.db
# Godot 4+ specific ignores
.godot/
.nomedia

# Godot-specific ignores
.import/
export.cfg
export_credentials.cfg
*.tmp

# Imported translations (automatically generated from CSV files)
*.translation

# Mono-specific ignores
.mono/
data_*/
mono_crash.*.json
