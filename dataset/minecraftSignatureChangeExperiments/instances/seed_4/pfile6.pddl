;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_6)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.2919953326615514)
		(= (value_axe a1) 0.25004737363483476)

        (= (value_pickaxe p0) 0.5988096666471184)
		(= (value_pickaxe p1) 0.15890465923627628)
		(= (value_pickaxe p2) 0.5730900616153811)
		(= (value_pickaxe p3) 0.363324836230257)

        (= (value_shovel s0) 4.183497333429525)
		(= (value_shovel s1) 3.5563357732163343)
		(= (value_shovel s2) 6.6304435248603655)

        (= (value_hoe h0) 29.943705244412158)
		(= (value_hoe h1) 21.429115101263257)
		(= (value_hoe h2) 18.78653540935347)
		(= (value_hoe h3) 14.144734505407886)
		(= (value_hoe h4) 28.33059612034512)

        (= (trees_in_map) 23)

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

