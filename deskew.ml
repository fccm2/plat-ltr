open Mgk_cmd

let () =
  let mgk = Mgk.new_genesis () in
  let png_sk = "deskew/plat-ltr_2024-04-02_20.04.05.png" in
  let png_bg = "received/plat-ltr_2024-04-02_20.04.05.png" in
  Mgk.input_image png_bg mgk;
  Mgk.open_layer (fun mgk -> Mgk.input_image png_sk mgk; ) mgk;
  Mgk.set_composite_op Mgk.over mgk;
  Mgk.set_geometry (208, 194) mgk;
  Mgk.composite mgk;
  Mgk.set_filename "deskewed/plat-ltr_2024-04-02_20.04.05.png" mgk;
  Mgk.write_command mgk;
;;
(* spdx:any *)
(* fccm *)
