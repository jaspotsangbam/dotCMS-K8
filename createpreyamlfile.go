package main

import (
    "flag"
    "os"
    "strings"
    "text/template"
)

type Environment struct {
    NFS_IPADDRESS string
}

var nfsIPAddr *string

func init()  {
    nfsIPAddr = flag.String("nfsIP", "", "IPAddress of NFS Server (required)")
    flag.Parse()
    if len(strings.TrimSpace(*nfsIPAddr)) == 0 {
        flag.PrintDefaults()
        os.Exit(1)
    }
}

func main() {
    t, err := template.ParseFiles("prereq_template.yaml")
    if err != nil {
        panic(err)
    }
    env := Environment{NFS_IPADDRESS: *nfsIPAddr}
    out, err := os.Create("prereq.yaml")
    if err != nil {
        panic(err)
    }
    err = t.Execute(out, env)
    if err != nil {
        panic(err)
    }
}
