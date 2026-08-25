;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_18)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.1654493993402466)
		(= (value_axe a1) 0.6952327679775308)
		(= (value_axe a2) 0.8886900283223533)
		(= (value_axe a3) 0.9729218433107212)

        (= (value_pickaxe p0) 0.5379447650427203)
		(= (value_pickaxe p1) 0.42556075443217334)
		(= (value_pickaxe p2) 0.5414062277363467)
		(= (value_pickaxe p3) 0.04855407825424751)
		(= (value_pickaxe p4) 0.7326342704148535)

        (= (value_shovel s0) 2.87043384266761)
		(= (value_shovel s1) 1.5963733683694419)
		(= (value_shovel s2) 1.4404231134445205)
		(= (value_shovel s3) 7.595163100800464)

        (= (value_hoe h0) 16.66103194990733)
		(= (value_hoe h1) 18.58672365228623)
		(= (value_hoe h2) 11.37409225081421)

        (= (trees_in_map) 32)

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

