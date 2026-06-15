;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_81)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.2522825054579074)
		(= (value_axe a1) 0.07450939556204739)
		(= (value_axe a2) 0.6325730591367444)

        (= (value_pickaxe p0) 0.3504914921575286)
		(= (value_pickaxe p1) 0.395264239427477)
		(= (value_pickaxe p2) 0.9729595914630894)
		(= (value_pickaxe p3) 0.08197861745971546)
		(= (value_pickaxe p4) 0.9875634796574646)

        (= (value_shovel s0) 6.271506989261914)
		(= (value_shovel s1) 4.662200273022538)
		(= (value_shovel s2) 5.655854360555107)

        (= (value_hoe h0) 24.148919890402446)
		(= (value_hoe h1) 16.8918171153012)
		(= (value_hoe h2) 23.301885052083737)

        (= (trees_in_map) 21)

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

