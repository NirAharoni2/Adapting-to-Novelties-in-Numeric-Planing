;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.38669602903881894)
		(= (value_axe a1) 0.4553911881765431)
		(= (value_axe a2) 0.7512698828160487)
		(= (value_axe a3) 0.5135303324671154)

        (= (value_pickaxe p0) 0.7022969938769681)
		(= (value_pickaxe p1) 0.27502978814418433)
		(= (value_pickaxe p2) 0.7474503767164954)
		(= (value_pickaxe p3) 0.9795348956626654)
		(= (value_pickaxe p4) 0.2727363496217724)

        (= (value_shovel s0) 6.727415981910536)
		(= (value_shovel s1) 2.5501202651782733)
		(= (value_shovel s2) 4.873882117476786)

        (= (value_hoe h0) 27.248567862529036)
		(= (value_hoe h1) 16.444672112619223)

        (= (trees_in_map) 24)

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

