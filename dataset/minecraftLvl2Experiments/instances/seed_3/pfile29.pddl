;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_29)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.770456483632056)
		(= (value_axe a1) 0.6619375663533508)

        (= (value_pickaxe p0) 0.4918725428961803)
		(= (value_pickaxe p1) 0.523639691062421)
		(= (value_pickaxe p2) 0.4605334490456211)

        (= (value_shovel s0) 2.3540549388160055)
		(= (value_shovel s1) 4.70683541508938)

        (= (value_hoe h0) 10.741245271671232)
		(= (value_hoe h1) 20.00894083470821)

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

