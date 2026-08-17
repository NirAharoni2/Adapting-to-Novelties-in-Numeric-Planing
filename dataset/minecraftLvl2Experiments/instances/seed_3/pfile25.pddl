;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.5086829465043379)
		(= (value_axe a1) 0.059523148224452926)

        (= (value_pickaxe p0) 0.29442364482986805)
		(= (value_pickaxe p1) 0.7278939751266793)
		(= (value_pickaxe p2) 0.7422633482663317)
		(= (value_pickaxe p3) 0.6458343837087437)

        (= (value_shovel s0) 6.111396278561585)
		(= (value_shovel s1) 2.0467934105823256)

        (= (value_hoe h0) 17.415586991596108)
		(= (value_hoe h1) 28.399651148225562)
		(= (value_hoe h2) 19.084755349625766)
		(= (value_hoe h3) 12.164316614246975)
		(= (value_hoe h4) 21.195626726952828)

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

