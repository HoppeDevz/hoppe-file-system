## 📂 Hoppe File System


| Fun              | Args                | Return                                          |
| ------------     | ----------------    | -------------------                             |
| readFileSync     | fileDir: string     | byteArr: array<int>                             |
| readdirSync      | dir: string         | dirArr: array<string>                           |
| stringifyByteArr | byteArr: array<int> | str: string                                     |
| stringifyArr     | arr: arr<'a>        | str: string                                     |
| getDirName       | unit: ()            | dirname: string                                 |
| mkdirSync        | dir: string         | unit: ()                                        |
| unlinkSync       | dir: string         | unit: ()                                        |
| writeFileSync    | ~file: string, ~data: string, ~options: {encondig: string} | unit: () |


## Examples.res
```res
    open Hpfs

    try {

        readFileSync("C:\\FiveFps\\log - Copy.txt")
        -> Hpfs.byteArrStringify -> Js.log


    } catch {
    | err => err |> Js.log
    }

    // get current file directory
    let __dirname = Hpfs.getDirName() -> Js.log

    Hpfs.writeFileSync(
    ~file = Hpfs.getDirName() ++ "\\text.txt", 
    ~data = "ASD", 
    ~options = { encondig: "utf-8" }
    )
```