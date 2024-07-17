-- Ensure lazy is set up
require("pkgs.lazy-setup")
local utils = require("scripts.utils")

-- Load the pkgs
local development = require("pkgs.development")
local finder = require("pkgs.finder")


local pkgs = utils.package_loader(
  development, finder
)

require("lazy").setup(pkgs, {
  ui = { border = "single" }
})
