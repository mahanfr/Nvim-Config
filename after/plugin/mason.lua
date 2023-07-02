local registry = require("mason-registry")

registry.refresh(function ()
    print("Updated!")
end)
