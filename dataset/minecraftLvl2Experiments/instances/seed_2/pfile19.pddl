;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6123237064383619)
		(= (value_axe a1) 0.43439798416239184)
		(= (value_axe a2) 0.2536911108601183)

        (= (value_pickaxe p0) 0.5660946233091266)
		(= (value_pickaxe p1) 0.4670868792587053)
		(= (value_pickaxe p2) 0.20499749461103856)
		(= (value_pickaxe p3) 0.9667807874095398)
		(= (value_pickaxe p4) 0.07282536737797862)

        (= (value_shovel s0) 1.0212610165755533)
		(= (value_shovel s1) 4.397961905093219)
		(= (value_shovel s2) 6.86034048112941)

        (= (value_hoe h0) 23.168041268802387)
		(= (value_hoe h1) 25.093391774827467)

        (= (trees_in_map) 35)

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

