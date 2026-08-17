;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5528151808409244)
		(= (value_axe a1) 0.3657172032215088)
		(= (value_axe a2) 0.7238598917037438)
		(= (value_axe a3) 0.60650976361534)
		(= (value_axe a4) 0.7018491938825299)

        (= (value_pickaxe p0) 0.16581683237178024)
		(= (value_pickaxe p1) 0.6655153197584674)
		(= (value_pickaxe p2) 0.11915536299936713)
		(= (value_pickaxe p3) 0.5520021508448991)
		(= (value_pickaxe p4) 0.11729022803297107)

        (= (value_shovel s0) 3.710334107874175)
		(= (value_shovel s1) 4.8980100647261935)
		(= (value_shovel s2) 3.2089552117971114)

        (= (value_hoe h0) 15.48386783392395)
		(= (value_hoe h1) 19.58992798274111)
		(= (value_hoe h2) 23.683160590267807)
		(= (value_hoe h3) 14.60906147085733)
		(= (value_hoe h4) 15.217076259434661)

        (= (trees_in_map) 26)

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

