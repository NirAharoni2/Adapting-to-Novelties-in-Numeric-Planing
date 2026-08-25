;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.058758896398655724)
		(= (value_axe a1) 0.6529099274345497)
		(= (value_axe a2) 0.27309973233714935)
		(= (value_axe a3) 0.22661652924476305)

        (= (value_pickaxe p0) 0.8754911714482378)
		(= (value_pickaxe p1) 0.10626598264552489)

        (= (value_shovel s0) 4.65653865751251)
		(= (value_shovel s1) 6.977601050294104)
		(= (value_shovel s2) 2.7138238457831183)

        (= (value_hoe h0) 14.20957877391293)
		(= (value_hoe h1) 27.611635187325597)

        (= (trees_in_map) 33)

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

