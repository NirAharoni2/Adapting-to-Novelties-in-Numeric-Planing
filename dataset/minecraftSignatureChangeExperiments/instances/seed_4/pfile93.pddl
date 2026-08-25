;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_93)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.09787180106632098)
		(= (value_axe a1) 0.1349593300722307)
		(= (value_axe a2) 0.8090555162952734)

        (= (value_pickaxe p0) 0.764062665888013)
		(= (value_pickaxe p1) 0.606511414615699)
		(= (value_pickaxe p2) 0.014450142761960327)
		(= (value_pickaxe p3) 0.7668053623266151)

        (= (value_shovel s0) 6.850278310520161)
		(= (value_shovel s1) 2.8888772557353213)
		(= (value_shovel s2) 2.226546642659045)

        (= (value_hoe h0) 24.68058708806164)
		(= (value_hoe h1) 15.702583051366446)
		(= (value_hoe h2) 13.9237983242791)
		(= (value_hoe h3) 25.229421865219265)
		(= (value_hoe h4) 11.07908364289796)

        (= (trees_in_map) 21)

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

