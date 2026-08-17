;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_57)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.8901006567914259)
		(= (value_axe a1) 0.7122846927923602)

        (= (value_pickaxe p0) 0.9485197089661369)
		(= (value_pickaxe p1) 0.7760889125350294)

        (= (value_shovel s0) 5.748670981500426)
		(= (value_shovel s1) 7.453955216335382)
		(= (value_shovel s2) 1.903508928605632)

        (= (value_hoe h0) 29.842227239891464)
		(= (value_hoe h1) 14.573962922632266)
		(= (value_hoe h2) 24.521256205277968)
		(= (value_hoe h3) 24.911399070886734)

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

