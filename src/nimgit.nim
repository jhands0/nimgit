import std/[os, osproc]
import argparse
import strutils

proc add(paths: string[]):
    
proc catFile(mode: string):
    
proc commit(message: string, author: string):
    
proc diff():

proc hashObject(data: string, objType: string, write: bool):

proc init(repo: string):
    var output = execProcess("mkdir", args=[repo])
    output = execProcess("mkdir", args=[joinPath(repo, ".git")]) 
    let names = ["objects", "refs", "refs/head"]
    for name in names:
        output = execProcess("mkdir", args=[joinPath(repo, ".git", name)])
    let file = open(joinPath(repo, ".git", "HEAD"), fmWrite)
    file.writeLine("ref: ref/heads/master".toBytes())
    echo "initialised empty repository: " & repo
    
proc lsFiles(details: bool):
    
proc push(gitUrl: string, username: string, password: string):
    
proc status():


when isMainModule:
    var p = newParser:
        command("add")
        command("cat-file")
        command("commit")
        command("diff")
        command("hash-object")
        command("init")
        command("ls-files")
        command("push")
        command("status")
