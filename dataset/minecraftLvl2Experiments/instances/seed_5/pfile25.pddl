;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.19160191830004192)
		(= (value_axe a1) 0.653361753814228)
		(= (value_axe a2) 0.07119045685704117)
		(= (value_axe a3) 0.8690671949510088)

        (= (value_pickaxe p0) 0.8689164808418067)
		(= (value_pickaxe p1) 0.46966007465209003)
		(= (value_pickaxe p2) 0.5520630721305839)
		(= (value_pickaxe p3) 0.11023682562583426)
		(= (value_pickaxe p4) 0.8184258949871173)

        (= (value_shovel s0) 6.25257512188979)
		(= (value_shovel s1) 5.703902107821215)
		(= (value_shovel s2) 1.232071424828853)
		(= (value_shovel s3) 7.274507554059241)
		(= (value_shovel s4) 3.4100892653438355)

        (= (value_hoe h0) 25.039965416337253)
		(= (value_hoe h1) 16.32129787474007)

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

