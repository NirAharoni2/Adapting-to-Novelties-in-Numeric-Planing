;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.8421442614967736)
		(= (value_axe a1) 0.44110666150895383)
		(= (value_axe a2) 0.18367502053145923)

        (= (value_pickaxe p0) 0.11939354059150797)
		(= (value_pickaxe p1) 0.020544412237572418)

        (= (value_shovel s0) 6.519580590641207)
		(= (value_shovel s1) 4.050593619956879)

        (= (value_hoe h0) 29.79248429350273)
		(= (value_hoe h1) 20.396302139382733)

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

