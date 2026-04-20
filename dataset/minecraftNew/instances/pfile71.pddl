;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.2587387697544502)
		(= (value_axe a1) 0.03797377476585162)
		(= (value_axe a2) 0.5127724201683524)

        (= (value_pickaxe p0) 0.6901615510122686)
		(= (value_pickaxe p1) 0.3935730071538788)
		(= (value_pickaxe p2) 0.29520407342928145)
		(= (value_pickaxe p3) 0.9239160688298023)

        (= (trees_in_map) 34)

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

