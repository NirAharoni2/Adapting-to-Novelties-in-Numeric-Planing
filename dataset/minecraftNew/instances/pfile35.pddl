;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_35)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5180163013853831)
		(= (value_axe a1) 0.33133985248927056)
		(= (value_axe a2) 0.853781367652912)
		(= (value_axe a3) 0.06654893686656382)
		(= (value_axe a4) 0.6998974846967574)

        (= (value_pickaxe p0) 0.5218952831931912)
		(= (value_pickaxe p1) 0.5379678921751136)
		(= (value_pickaxe p2) 0.4728318699606251)
		(= (value_pickaxe p3) 0.16757612874644012)
		(= (value_pickaxe p4) 0.021884338220593658)

        (= (trees_in_map) 27)

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

