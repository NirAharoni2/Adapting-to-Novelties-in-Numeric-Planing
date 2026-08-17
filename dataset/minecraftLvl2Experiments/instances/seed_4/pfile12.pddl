;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.6954269751495632)
		(= (value_axe a1) 0.11291647321605103)
		(= (value_axe a2) 0.5608062734061466)
		(= (value_axe a3) 0.25695147073362123)
		(= (value_axe a4) 0.7741128291097411)

        (= (value_pickaxe p0) 0.04137625815398749)
		(= (value_pickaxe p1) 0.07968991821691007)

        (= (value_shovel s0) 7.1535018061168785)
		(= (value_shovel s1) 7.3352498268623565)

        (= (value_hoe h0) 15.938768958701036)
		(= (value_hoe h1) 16.938252423340302)

        (= (trees_in_map) 22)

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

