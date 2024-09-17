
(* #1 *)
let list_cardinality lst =
  match lst with
  | [] -> 1
  | [_] -> 2
  |_::_::_-> 0



(* #2 *)
let rotate_list lst = 
  match lst with
  | [] -> []
  | head :: tail -> tail @ [head]
 


(* #3 *)
let rec remove_last lst = 
  match lst with
  | [] -> []
  | [_] -> []
  | head :: tail -> head :: remove_last tail


(* #4 *)
let rec remove_element y lst =
  match lst with
  |[] -> []
  | head :: tail -> 
      if head = y then
        remove_element y tail
      else 
        head :: remove_element y tail 


(* #5 *)
let rec binary_count lst =
  match lst with
  |[] -> (0, 0)
  | head :: tail ->
    let (zeros, ones) = binary_count tail 
    in match head with 
    | 0 -> (zeros + 1, ones)
    | 1 -> (zeros, ones +1)
    | _ -> (zeros, ones)



(* #6 *)
let rec makepairs x lst = 
  match lst with
  | [] -> []
  | head :: tail -> (x, head) :: makepairs x tail



(* #7 *)
let rec binomial_coeff n k =
  match (n, k) with
  | (_, 0) -> 1
  | (n, k) when k = n -> 1
  | (n, k) when k > n -> 0
  | (n, k) -> binomial_coeff (n - 1) (k - 1) + binomial_coeff (n - 1) k


