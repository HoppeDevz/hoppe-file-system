open HoppeFileSystem

try {

    readFileSync("C:\\FiveFps\\log - Copy.txt")
    -> HoppeFileSystem.byteArrStringify -> Js.log


} catch {
  | err => err |> Js.log
}

// get current file directory
let __dirname = HoppeFileSystem.getDirName() -> Js.log

HoppeFileSystem.writeFileSync(
  ~file = HoppeFileSystem.getDirName() ++ "\\text.txt", 
  ~data = "ASD", 
  ~options = { encondig: "utf-8" }
)