-- NPM completers

local gitArgs = {
    "access", "adduser", "audit", "bin", "bugs", "c", "cache", "ci", "cit",
    "clean-install", "clean-install-test", "completion", "config",
    "create", "ddp", "dedupe", "deprecate", "dist-tag", "docs", "doctor",
    "edit", "explore", "fund", "get", "help", "help-search", "hook", "i", "init",
    "install", "install-ci-test", "install-test", "it", "link", "list", "ln",
    "login", "logout", "ls", "org", "outdated", "owner", "pack", "ping", "prefix",
    "profile", "prune", "publish", "rb", "rebuild", "repo", "restart", "root",
    "run", "run-script", "s", "se", "search", "set", "shrinkwrap", "star",
    "stars", "start", "stop", "t", "team", "test", "token", "tst", "un",
    "uninstall", "unpublish", "unstar", "up", "update", "v", "version", "view",
    "whoami"
}

clink.argmatcher("npm", "npm.cmd"):addarg(table.unpack(gitArgs))