open Types

@module("process") external getDirName: () => string = "cwd"

@module("fs") external readFileSync: string => array<int> = "readFileSync";
@module("fs") external readdirSync: string => array<string> = "readdirSync";

@send external stringifyByteArr: array<int> => string = "toString"
@send external stringifyArr: array<'a> => string = "toString"

module HoppeFileSystem = {

    let readFileSync = readFileSync
    let readdirSync = readdirSync

    let byteArrStringify = (byteArr: array<int>) => stringifyByteArr(byteArr)

    let getDirName = getDirName
}