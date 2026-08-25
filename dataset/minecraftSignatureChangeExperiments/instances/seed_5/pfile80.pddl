;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.016909592095560755)
		(= (value_axe a1) 0.6986898565442345)
		(= (value_axe a2) 0.7590037524092014)
		(= (value_axe a3) 0.108658835174823)

        (= (value_pickaxe p0) 0.6935408511146233)
		(= (value_pickaxe p1) 0.11957101708431583)
		(= (value_pickaxe p2) 0.8989654560783275)

        (= (value_shovel s0) 5.440518027314343)
		(= (value_shovel s1) 6.4054595304085415)
		(= (value_shovel s2) 7.266714365641406)
		(= (value_shovel s3) 5.091338108795987)

        (= (value_hoe h0) 28.436239188267688)
		(= (value_hoe h1) 17.019666400946285)
		(= (value_hoe h2) 16.74371365532341)
		(= (value_hoe h3) 18.216117496653904)
		(= (value_hoe h4) 25.54075051396472)

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

