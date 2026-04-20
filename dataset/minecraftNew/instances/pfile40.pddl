;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.9324991170535005)
		(= (value_axe a1) 0.5905891791605568)
		(= (value_axe a2) 0.05040347054471184)
		(= (value_axe a3) 0.3870781376526625)

        (= (value_pickaxe p0) 0.6724987562907828)
		(= (value_pickaxe p1) 0.2143042178985396)

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

