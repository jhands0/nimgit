import std/[os, osfunc, strformat, strutils]

func add(paths: string[]):

func catFile(mode: string):
    
func commit(message: string, author: string):
    
func diff():

func hashObject(data: string, objType: string, write: bool):

func init(repo: string):
    var output = execProcess("mkdir", args=[repo])
    output = execProcess("mkdir", args=[joinPath(repo, ".git")]) 
    let names = ["objects", "refs", "refs/head"]
    for name in names:
        output = execProcess("mkdir", args=[joinPath(repo, ".git", name)])
    let file = open(joinPath(repo, ".git", "HEAD"), fmWrite)
    file.writeLine("ref: ref/heads/master".toBytes())
    echo "initialised empty repository: " & repo
    
func lsFiles(details: bool):

func push(gitUrl: string, username: string, password: string):
    
func status():

when isMainModule:
    init("gaming")
