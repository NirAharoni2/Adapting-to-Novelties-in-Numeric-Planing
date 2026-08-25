;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.43508654821910786)
		(= (value_axe a1) 0.7174535868175361)
		(= (value_axe a2) 0.8785333426847872)
		(= (value_axe a3) 0.575843780154843)

        (= (value_pickaxe p0) 0.6217385766172147)
		(= (value_pickaxe p1) 0.9243356766384969)
		(= (value_pickaxe p2) 0.28466746303256385)
		(= (value_pickaxe p3) 0.3352100292931526)
		(= (value_pickaxe p4) 0.03553837925233683)

        (= (value_shovel s0) 7.144695240530559)
		(= (value_shovel s1) 5.406407272036911)

        (= (value_hoe h0) 23.455310416824762)
		(= (value_hoe h1) 14.76113000723156)
		(= (value_hoe h2) 13.690916564370983)
		(= (value_hoe h3) 19.574121122271315)
		(= (value_hoe h4) 27.540918069774285)

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

