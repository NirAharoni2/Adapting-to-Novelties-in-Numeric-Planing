;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5172930758402844)
		(= (value_axe a1) 0.1250741527059036)
		(= (value_axe a2) 0.2886146096441887)
		(= (value_axe a3) 0.16836476418891932)

        (= (value_pickaxe p0) 0.7879610598776267)
		(= (value_pickaxe p1) 0.7719069317002282)
		(= (value_pickaxe p2) 0.5893832102741932)

        (= (trees_in_map) 29)

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

