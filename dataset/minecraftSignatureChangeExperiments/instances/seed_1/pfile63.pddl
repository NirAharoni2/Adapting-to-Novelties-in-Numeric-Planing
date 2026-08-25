;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_63)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5623565610644854)
		(= (value_axe a1) 0.35771700644490745)
		(= (value_axe a2) 0.15865919825735098)
		(= (value_axe a3) 0.7768544334216305)
		(= (value_axe a4) 0.916341667652535)

        (= (value_pickaxe p0) 0.31369855569597016)
		(= (value_pickaxe p1) 0.8797625357454809)
		(= (value_pickaxe p2) 0.34625609407939617)

        (= (value_shovel s0) 5.602887528988823)
		(= (value_shovel s1) 7.970527159337245)
		(= (value_shovel s2) 6.40449514544817)

        (= (value_hoe h0) 11.113344224833302)
		(= (value_hoe h1) 18.69745335205425)

        (= (trees_in_map) 32)

		(= (count_log_in_inventory) 0)

        (= (count_planks_in_inventory) 0)

        (= (count_stick_in_inventory) 0)

		(= (count_sack_polyisoprene_pellets_in_inventory) 0)

        (= (count_tree_tap_in_inventory) 0)

        (= (count_pogo_stick) 0)
	)
	(:goal
		(and
			(= (count_pogo_stick) 1)
		)
	)
)

