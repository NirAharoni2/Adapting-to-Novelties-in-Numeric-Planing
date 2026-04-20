;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.25611818314518786)
		(= (value_axe a1) 0.6106363507513475)
		(= (value_axe a2) 0.005716749045853842)
		(= (value_axe a3) 0.7989268547463598)
		(= (value_axe a4) 0.3513112622962049)

        (= (value_pickaxe p0) 0.4725190916704982)
		(= (value_pickaxe p1) 0.7587745350636593)

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

