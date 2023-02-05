return {
  'akinsho/bufferline.nvim',
  config = function()
    local bl = require("bufferline")
    bl.setup({
      options = {
        mode = "buffers"
      }
    })
  end
}
