;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.6866838847226532)
		(= (value_axe a1) 0.8603297833722081)

        (= (value_pickaxe p0) 0.2826819654279813)
		(= (value_pickaxe p1) 0.2545334709827065)
		(= (value_pickaxe p2) 0.03519049010164066)
		(= (value_pickaxe p3) 0.9850833533439821)
		(= (value_pickaxe p4) 0.3150474396658034)

        (= (trees_in_map) 29)

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

