local status, nvim_notify = pcall(require, "notify")
if not status then
	print("Neo-tree isn't working")
end

vim.notify = nvim_notify
