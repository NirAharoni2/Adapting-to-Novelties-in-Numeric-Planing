;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.18742587856145654)
		(= (value_axe a1) 0.9359649944321714)
		(= (value_axe a2) 0.02282137325050404)

        (= (value_pickaxe p0) 0.7595656670557446)
		(= (value_pickaxe p1) 0.6996857131527184)
		(= (value_pickaxe p2) 0.030728685532841582)
		(= (value_pickaxe p3) 0.14777276891995605)

        (= (value_shovel s0) 7.7227615011962945)
		(= (value_shovel s1) 5.835946765983235)
		(= (value_shovel s2) 4.208909306631639)
		(= (value_shovel s3) 5.349041444206877)

        (= (value_hoe h0) 10.302858869906137)
		(= (value_hoe h1) 20.880979285483043)

        (= (trees_in_map) 20)

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

