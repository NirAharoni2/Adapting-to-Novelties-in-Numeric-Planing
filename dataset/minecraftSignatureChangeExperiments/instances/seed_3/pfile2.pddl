;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7800764890835564)
		(= (value_axe a1) 0.8235705112332644)

        (= (value_pickaxe p0) 0.26943166906199667)
		(= (value_pickaxe p1) 0.594749515643894)
		(= (value_pickaxe p2) 0.9201566195399522)

        (= (value_shovel s0) 3.7132600992836533)
		(= (value_shovel s1) 6.516761984286387)

        (= (value_hoe h0) 18.538697718823464)
		(= (value_hoe h1) 24.562519461051934)
		(= (value_hoe h2) 21.538193292114293)
		(= (value_hoe h3) 29.28187503450911)

        (= (trees_in_map) 24)

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

