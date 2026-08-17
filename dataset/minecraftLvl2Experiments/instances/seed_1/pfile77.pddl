;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.3943813314133705)
		(= (value_axe a1) 0.9057097386732066)
		(= (value_axe a2) 0.4706292224006611)
		(= (value_axe a3) 0.9346421662649822)
		(= (value_axe a4) 0.5521910708222612)

        (= (value_pickaxe p0) 0.9098574658614854)
		(= (value_pickaxe p1) 0.47715640081037314)

        (= (value_shovel s0) 3.9877455095368735)
		(= (value_shovel s1) 5.120776200612085)
		(= (value_shovel s2) 3.221173260856733)
		(= (value_shovel s3) 2.045783312416786)
		(= (value_shovel s4) 5.12532710202206)

        (= (value_hoe h0) 27.019258439076225)
		(= (value_hoe h1) 15.555524984876339)
		(= (value_hoe h2) 27.300428242556976)
		(= (value_hoe h3) 25.742579220365354)

        (= (trees_in_map) 31)

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

