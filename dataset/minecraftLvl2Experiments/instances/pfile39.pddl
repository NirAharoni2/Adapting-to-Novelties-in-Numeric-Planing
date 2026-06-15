;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_39)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6635555632640343)
		(= (value_axe a1) 0.6627383953715137)
		(= (value_axe a2) 0.7910383544758627)
		(= (value_axe a3) 0.5499525950693543)
		(= (value_axe a4) 0.3818423568478021)

        (= (value_pickaxe p0) 0.02697268739023362)
		(= (value_pickaxe p1) 0.9704067612064623)
		(= (value_pickaxe p2) 0.5464795405497561)
		(= (value_pickaxe p3) 0.3748471231580963)
		(= (value_pickaxe p4) 0.8563040853176286)

        (= (value_shovel s0) 4.206327107021889)
		(= (value_shovel s1) 4.4859699113850375)
		(= (value_shovel s2) 2.7349583324426234)

        (= (value_hoe h0) 27.38824669473489)
		(= (value_hoe h1) 23.700304886217232)
		(= (value_hoe h2) 19.716318813616923)
		(= (value_hoe h3) 29.529177023335787)
		(= (value_hoe h4) 17.31839711022684)

        (= (trees_in_map) 30)

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

