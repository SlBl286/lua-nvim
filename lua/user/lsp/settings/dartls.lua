local lspconfig = require("lspconfig")
return {
     filetypes = { "dart" },
    init_options = {
      closingLabels = true,
      flutterOutline = true,
      onlyAnalyzeProjectsWithOpenFiles = true,
      outline = true,
      suggestFromUnimportedLibraries = true
    },
    root_dir = lspconfig.util.root_pattern("pubspec.yaml"),
    settings = {
      dart = {
        completeFunctionCalls = true,
        showTodos = true
      }
    }
}
