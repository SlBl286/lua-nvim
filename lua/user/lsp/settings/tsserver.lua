local lspconfig = require("lspconfig")
return {
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    init_options = {
      hostInfo = "neovim"
    },
    root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
}
