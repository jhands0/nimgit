import std/[os, osproc]


proc init(repo: string):
    var output = execProcess("mkdir", args=[repo])
    output = execProcess("mkdir", args=[joinPath(repo, ".git")]) 
    let names = ["objects", "refs", "refs/head"]
    for name in names:
        output = execProcess("mkdir", args=[joinPath(repo, ".git", name)])
    let file = open(joinPath(repo, ".git", "HEAD"), fmWrite)
    file.writeLine("ref: ref/heads/master".toBytes())
    echo "initialised empty repository: " & repo


when isMainModule:
    #echo commandLineParams()
    init()
