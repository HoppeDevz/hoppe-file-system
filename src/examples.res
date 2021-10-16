open HoppeFileSystem

try {

    readFileSync("C:\\FiveFps\\log - Copy.txt")
    -> HoppeFileSystem.byteArrStringify -> Js.log


} catch {
  | err => err |> Js.log
}