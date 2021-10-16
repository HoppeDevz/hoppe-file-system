open HoppeFileSystem

try {

    readFileSync("C:\\FiveFps\\log - Copy.txt")
    -> HoppeFileSystem.byteArrStringify -> Js.log


} catch {
  | err => err |> Js.log
}

// get current file directory
let __dirname = HoppeFileSystem.getDirName() -> Js.log