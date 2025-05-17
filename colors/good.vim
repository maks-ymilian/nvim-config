lua << EOF
local current_dir = vim.fn.fnamemodify(vim.fn.expand('<sfile>:p:h'), ":p")
package.path = current_dir .. "/?.lua;" .. package.path
require 'good'
EOF

lua require 'good'
