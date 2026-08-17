;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_14)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7764976607227775)
		(= (value_axe a1) 0.0018086497263791745)
		(= (value_axe a2) 0.054833589309793096)
		(= (value_axe a3) 0.12686328624326626)
		(= (value_axe a4) 0.12462623454506172)

        (= (value_pickaxe p0) 0.06841668846318827)
		(= (value_pickaxe p1) 0.974692531175994)

        (= (value_shovel s0) 6.9811425431745855)
		(= (value_shovel s1) 1.6028960541474206)
		(= (value_shovel s2) 4.514840047284519)
		(= (value_shovel s3) 3.211273708189216)
		(= (value_shovel s4) 3.2020586021425275)

        (= (value_hoe h0) 17.025791166096493)
		(= (value_hoe h1) 22.938272266035682)
		(= (value_hoe h2) 21.732262418287725)
		(= (value_hoe h3) 17.216691712279687)

        (= (trees_in_map) 26)

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

