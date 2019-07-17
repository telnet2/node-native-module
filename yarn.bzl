def yarn(name, arg, visibility = None):
    native.genrule(
        name = name,
        outs = [name + ".txt"],
        cmd = "$(location generator) %s > $@" % arg,
        tools = ["//:generator"],
        visibility = visibility
    )
