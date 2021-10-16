open Types

@module("process") external getDirName: () => string = "cwd"

@module("fs") external readFileSync: string => array<int> = "readFileSync"
@module("fs") external readdirSync: string => array<string> = "readdirSync"
@module("fs") external mkdirSync: string => unit = "mkdirSync"
@module("fs") external unlinkSync: string => unit = "unlinkSync"
@module("fs") external writeFileSync: 
(
    ~file: string, 
    ~data: Types.writeFileSyncData, 
    ~options: Types.writeFileSyncOptions
) 
=> unit = "writeFileSync"

@send external stringifyByteArr: array<int> => string = "toString"
@send external stringifyArr: array<'a> => string = "toString"

module Hpfs = {

    let readFileSync = readFileSync
    let readdirSync = readdirSync

    let byteArrStringify = (byteArr: array<int>) => stringifyByteArr(byteArr)

    let getDirName = getDirName

    let mkdirSync = mkdirSync
    let unlinkSync = unlinkSync

    let writeFileSync = writeFileSync
}