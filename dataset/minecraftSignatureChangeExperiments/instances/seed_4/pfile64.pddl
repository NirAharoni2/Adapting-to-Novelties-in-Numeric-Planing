;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5311408843071963)
		(= (value_axe a1) 0.6872671382327156)
		(= (value_axe a2) 0.3144911459988501)
		(= (value_axe a3) 0.030081541363913944)

        (= (value_pickaxe p0) 0.9356175447831602)
		(= (value_pickaxe p1) 0.6166040151583813)
		(= (value_pickaxe p2) 0.8557830011200862)

        (= (value_shovel s0) 2.238597825395728)
		(= (value_shovel s1) 2.8453603098847653)
		(= (value_shovel s2) 7.194208399906119)

        (= (value_hoe h0) 10.958016914565679)
		(= (value_hoe h1) 27.43872975398578)

        (= (trees_in_map) 30)

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

