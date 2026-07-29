config.load_autoconfig()

c.colors.webpage.bg = "red"

config.bind('td', 'jseval -q DarkReader.isEnabled() ? DarkReader.disable() : DarkReader.enable({brightness: 90, contrast: 80, sepia: 15, grayscale: 0});')
