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