;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_77)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.17739001188788894)
		(= (value_axe a1) 0.47450619933559945)
		(= (value_axe a2) 0.31955939419172263)
		(= (value_axe a3) 0.6249933770933154)
		(= (value_axe a4) 0.11128882644834226)

        (= (value_pickaxe p0) 0.8852648680908295)
		(= (value_pickaxe p1) 0.3704895296726971)
		(= (value_pickaxe p2) 0.7837549622356733)
		(= (value_pickaxe p3) 0.9428192423852282)
		(= (value_pickaxe p4) 0.940216042960563)

        (= (value_shovel s0) 3.7314081848689966)
		(= (value_shovel s1) 6.998207182776531)
		(= (value_shovel s2) 7.978982916864202)
		(= (value_shovel s3) 1.911198265939918)
		(= (value_shovel s4) 6.232280750589781)

        (= (value_hoe h0) 24.5444723281693)
		(= (value_hoe h1) 19.15438463647717)

        (= (trees_in_map) 28)

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

