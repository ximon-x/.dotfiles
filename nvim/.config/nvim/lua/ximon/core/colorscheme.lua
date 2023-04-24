local status, github_theme = pcall(require, "github-theme")
if not status then
	print("Github theme not installed")
end

github_theme.setup({
	theme_style = "dark",
	transparent = "true",
})
