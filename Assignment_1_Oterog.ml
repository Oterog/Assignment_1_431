(*
Objective: Show that you can write elementary phrases in OCaml, 
especially phrases involving pattern matching and recursion.

Collaborators: Gabriel Otero, Sam Grigol

Due: 09/26/24
*)

(* #8 *)

let rec dup lst =
  match lst with
  | [] -> []  
  | x :: xs -> x :: x :: dup xs
let () =
  let original_list = ['a'; 'b'; 'c'; 'd'] in
  let duplicated_list = dup original_list in
  List.iter (Printf.printf "%c ") duplicated_list

(* 9 *)

let rec undup lst =
  if (is_dup_valid lst) then
    raise (InvalidInput "Bad Input")
  else
    match lst with
    | [] -> []
    | [x] -> [x]
    | x1 :: x2 :: xs ->
      if x1 = x2 then
      x1 :: undup (x2 :: xs)
      else
      x1 :: undup (x2 :: xs)

  (* 10 *)

let rec find_min lst =
  match lst with
  | [] -> raise (EmptyList "Empty list")
  | [x] -> x
  | x :: xs ->
    let smallest_in_tail = find_min xs in
    min x smallest_in_tail
  
(* 11 *)

    (* a *)
type float_tree =
  | Empty
  | Node of float * float_tree * float_tree

    (* b *)
  let my_float_tree =
    Node (5.0,
      Node (3.0,
        Node (1.0, Empty, Empty),
        Node (4.0, Empty, Empty)
      ),
      Node (8.0,
        Node (7.0, Empty, Empty),
        Node (9.0, Empty, Empty)
      )
    )

(* 12 *)
  
let rec tree_depth tree =
  match tree with
  | Empty -> 0
  | Node (_, left, right) ->
      1 + max (tree_depth left) (tree_depth right)

(* 13 *)

let rec count_leaves tree =
  match tree with
  | Empty -> 0
  | Node (_, Empty, Empty) -> 1
  | Node (_, left, right) ->
      count_leaves left + count_leaves right
