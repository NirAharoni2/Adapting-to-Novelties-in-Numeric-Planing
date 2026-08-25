;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5235732846824562)
		(= (value_axe a1) 0.9067132240773806)
		(= (value_axe a2) 0.46630760766629153)
		(= (value_axe a3) 0.1773688108926259)
		(= (value_axe a4) 0.09442988795889462)

        (= (value_pickaxe p0) 0.40292168366335)
		(= (value_pickaxe p1) 0.21652719921964125)

        (= (value_shovel s0) 4.984872611203102)
		(= (value_shovel s1) 3.700499522218564)
		(= (value_shovel s2) 2.508494497781679)
		(= (value_shovel s3) 7.808121917420637)

        (= (value_hoe h0) 17.799683036747755)
		(= (value_hoe h1) 21.15446668371569)
		(= (value_hoe h2) 26.031838387182063)
		(= (value_hoe h3) 15.488195232189547)
		(= (value_hoe h4) 28.427743552063024)

        (= (trees_in_map) 38)

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

