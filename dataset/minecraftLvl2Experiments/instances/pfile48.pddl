;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_48)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.12065841509560915)
		(= (value_axe a1) 0.08505832117917511)
		(= (value_axe a2) 0.41928722163465026)

        (= (value_pickaxe p0) 0.5626215915765026)
		(= (value_pickaxe p1) 0.6332466613629982)
		(= (value_pickaxe p2) 0.42824269555665795)
		(= (value_pickaxe p3) 0.24413599547647624)

        (= (value_shovel s0) 3.0473290349807067)
		(= (value_shovel s1) 3.7303058663378055)
		(= (value_shovel s2) 2.131776229316151)

        (= (value_hoe h0) 11.38708509429158)
		(= (value_hoe h1) 21.863792831644496)

        (= (trees_in_map) 28)

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

