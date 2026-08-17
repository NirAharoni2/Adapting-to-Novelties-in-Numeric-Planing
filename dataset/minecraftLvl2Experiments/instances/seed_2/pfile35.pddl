;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.369468328394542)
		(= (value_axe a1) 0.6262844865037337)
		(= (value_axe a2) 0.47134388403782257)
		(= (value_axe a3) 0.7685396419144326)

        (= (value_pickaxe p0) 0.654030760069822)
		(= (value_pickaxe p1) 0.5768951988581144)
		(= (value_pickaxe p2) 0.12808768959457117)
		(= (value_pickaxe p3) 0.9340937682078834)

        (= (value_shovel s0) 7.084096204125456)
		(= (value_shovel s1) 4.747054210737639)

        (= (value_hoe h0) 26.46527637528959)
		(= (value_hoe h1) 11.962152721379042)
		(= (value_hoe h2) 25.779090057380756)

        (= (trees_in_map) 20)

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

