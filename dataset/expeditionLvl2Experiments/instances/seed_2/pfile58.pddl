;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_58)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.854362067788998)

        (= (sled_supplies s0) 4.728215880679495)

        (= (factor_value f0) 0.811881022238307)

        (= (dummy_1_value d1_0) 0.9983260206700806)
		(= (dummy_1_value d1_1) 0.712779368786185)
		(= (dummy_1_value d1_2) 0.8223967507958695)
		(= (dummy_1_value d1_3) 0.549601245491866)

        (= (dummy_2_value d2_0) 5.822257367365102)
		(= (dummy_2_value d2_1) 6.817868236016717)
		(= (dummy_2_value d2_2) 3.0961562641590117)
		(= (dummy_2_value d2_3) 6.618246441430734)
		(= (dummy_2_value d2_4) 2.190323595557529)

        (= (dummy_3_value d3_0) 46.68639310473884)
		(= (dummy_3_value d3_1) 61.10010039189927)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

