import std/[os, osfunc, strformat, strutils]
import argparse

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
    #[ var p = newParser:
        command("add")
        command("cat-file")
        command("commit")
        command("diff")
        command("hash-object")
        command("init")
        command("ls-files")
        command("push")
        command("status") ]#
