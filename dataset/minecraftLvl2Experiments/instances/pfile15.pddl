;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.9189036343069469)
		(= (value_axe a1) 0.23062868616101784)
		(= (value_axe a2) 0.13610310581391305)
		(= (value_axe a3) 0.5628171683023598)

        (= (value_pickaxe p0) 0.7656675852522749)
		(= (value_pickaxe p1) 0.11800457805668729)
		(= (value_pickaxe p2) 0.023110094029112793)
		(= (value_pickaxe p3) 0.21323704894456152)

        (= (value_shovel s0) 1.9075221324690217)
		(= (value_shovel s1) 7.46499833413896)
		(= (value_shovel s2) 5.471681397372546)
		(= (value_shovel s3) 2.09825958774724)
		(= (value_shovel s4) 5.795682700908581)

        (= (value_hoe h0) 18.811962187513103)
		(= (value_hoe h1) 29.0495697817921)

        (= (trees_in_map) 21)

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

