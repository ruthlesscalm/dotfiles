return {
    "atiladefreitas/bloocky",
    config = function()
        require("bloocky").setup({
            default_view = "day",
            week_start = "monday",

            hours = {
                start = 0,
                ["end"] = 24,
            },

            sync = {
                enabled = true,
                accounts = {
                    {
                        id = "gcal",
                        provider = "google",

                        client_id = "319075165399-eq0ho99ppobaumcvp8mhhdau00nahq0s.apps.googleusercontent.com",

                        client_secret_cmd = {
                            "cat",
                            vim.fn.expand(
                                "~/.config/bloocky/google-secret"
                            ),
                        },

                        calendars = {
                            { name = "Bloocky Test" },
                        },
                    }
                }
            }
        })
    end,
}
