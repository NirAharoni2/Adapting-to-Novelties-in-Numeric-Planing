;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_95)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9364945445469633)
		(= (value_axe a1) 0.6643572537095874)
		(= (value_axe a2) 0.05048049414608857)
		(= (value_axe a3) 0.4257689380458254)

        (= (value_pickaxe p0) 0.8368430277009294)
		(= (value_pickaxe p1) 0.593455211448267)
		(= (value_pickaxe p2) 0.20898387097818283)
		(= (value_pickaxe p3) 0.2344394302820456)
		(= (value_pickaxe p4) 0.06366582047202018)

        (= (value_shovel s0) 4.652794688968731)
		(= (value_shovel s1) 2.2696549785159608)

        (= (value_hoe h0) 18.91035392065113)
		(= (value_hoe h1) 27.911702985834566)
		(= (value_hoe h2) 28.016984261141282)
		(= (value_hoe h3) 19.837661918011374)
		(= (value_hoe h4) 25.679366568291904)

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

