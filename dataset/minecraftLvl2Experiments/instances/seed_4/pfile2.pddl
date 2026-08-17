;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_2)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.30984995729953557)
		(= (value_axe a1) 0.6269756024131301)
		(= (value_axe a2) 0.731894708878718)
		(= (value_axe a3) 0.8546483579913472)

        (= (value_pickaxe p0) 0.8800507513611994)
		(= (value_pickaxe p1) 0.08671825263492183)
		(= (value_pickaxe p2) 0.6058518837198799)
		(= (value_pickaxe p3) 0.6717014565164733)

        (= (value_shovel s0) 4.541676429972908)
		(= (value_shovel s1) 2.2445312196854914)
		(= (value_shovel s2) 4.315115213096016)

        (= (value_hoe h0) 11.786924145307808)
		(= (value_hoe h1) 28.69176727799816)
		(= (value_hoe h2) 27.309683403701666)

        (= (trees_in_map) 37)

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

