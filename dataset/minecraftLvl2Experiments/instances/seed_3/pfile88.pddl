;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_88)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.07411736037929118)
		(= (value_axe a1) 0.30492210526868624)
		(= (value_axe a2) 0.23369190082986424)
		(= (value_axe a3) 0.5315090873439897)
		(= (value_axe a4) 0.6596136083180957)

        (= (value_pickaxe p0) 0.17342107873452706)
		(= (value_pickaxe p1) 0.7368982493520071)
		(= (value_pickaxe p2) 0.9623189066389177)
		(= (value_pickaxe p3) 0.31388149468773807)
		(= (value_pickaxe p4) 0.36270977959542317)

        (= (value_shovel s0) 1.0309501951400464)
		(= (value_shovel s1) 2.548654689776944)

        (= (value_hoe h0) 16.663693916347455)
		(= (value_hoe h1) 10.294457372979513)
		(= (value_hoe h2) 22.215705670886774)
		(= (value_hoe h3) 29.673734661793297)
		(= (value_hoe h4) 13.30140055819095)

        (= (trees_in_map) 40)

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

