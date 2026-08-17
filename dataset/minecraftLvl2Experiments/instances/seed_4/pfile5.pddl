;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.45901875217017585)
		(= (value_axe a1) 0.042811187782019644)

        (= (value_pickaxe p0) 0.6972918814615184)
		(= (value_pickaxe p1) 0.8959277791118226)
		(= (value_pickaxe p2) 0.9547375983423451)
		(= (value_pickaxe p3) 0.7348779564739258)

        (= (value_shovel s0) 7.719073141290657)
		(= (value_shovel s1) 1.1273126770531523)
		(= (value_shovel s2) 3.0229752753059023)

        (= (value_hoe h0) 29.320135139362456)
		(= (value_hoe h1) 25.50478870450297)
		(= (value_hoe h2) 18.20855362137751)
		(= (value_hoe h3) 28.866167347059626)

        (= (trees_in_map) 39)

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

