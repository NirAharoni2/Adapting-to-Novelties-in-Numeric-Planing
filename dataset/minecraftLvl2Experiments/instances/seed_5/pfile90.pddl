;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8477134455549703)
		(= (value_axe a1) 0.8936044690146517)
		(= (value_axe a2) 0.32322636283260886)

        (= (value_pickaxe p0) 0.7698576000278701)
		(= (value_pickaxe p1) 0.5874980190302684)
		(= (value_pickaxe p2) 0.008919049051592465)

        (= (value_shovel s0) 7.923338638965293)
		(= (value_shovel s1) 2.42451092848527)
		(= (value_shovel s2) 4.838935699322471)
		(= (value_shovel s3) 2.7736839051661555)
		(= (value_shovel s4) 7.803581029849328)

        (= (value_hoe h0) 14.604143621310685)
		(= (value_hoe h1) 23.3881076039926)
		(= (value_hoe h2) 18.868130991977523)
		(= (value_hoe h3) 11.331320340688439)
		(= (value_hoe h4) 19.924782946171362)

        (= (trees_in_map) 35)

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

