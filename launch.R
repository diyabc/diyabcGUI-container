library(diyabcGUI)
options(shiny.port = 8888)
options(shiny.launch.browser = function(url) {
    system2("/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe",
    args = c("Start", url))
})
diyabcGUI::diyabc()