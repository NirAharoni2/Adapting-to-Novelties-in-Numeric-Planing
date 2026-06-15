;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.5333434374513922)
		(= (value_axe a1) 0.03930548197232575)
		(= (value_axe a2) 0.13856571083627323)

        (= (value_pickaxe p0) 0.19438446601326664)
		(= (value_pickaxe p1) 0.32263901438516784)
		(= (value_pickaxe p2) 0.5723086956657789)

        (= (value_shovel s0) 2.2723138989476173)
		(= (value_shovel s1) 6.50943698419878)
		(= (value_shovel s2) 4.346857568988517)
		(= (value_shovel s3) 5.569726638629612)

        (= (value_hoe h0) 20.639504810934884)
		(= (value_hoe h1) 28.619857823937963)

        (= (trees_in_map) 25)

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

