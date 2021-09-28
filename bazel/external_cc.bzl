""" """

def _impl(ctx):
    print(ctx.files.hdrs)

external_cc_library = rule(
    implementation = _impl,
    attrs = {
        "hdrs": attr.label_list(allow_files = [ ".hpp", ".h" ]) 
    }
)
