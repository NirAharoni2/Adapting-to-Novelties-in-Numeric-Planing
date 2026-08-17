;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.916835926969943)

        (= (sled_supplies s0) 4.270865188303485)

        (= (factor_value f0) 0.5902066789038656)

        (= (dummy_1_value d1_0) 0.9319745884340277)
		(= (dummy_1_value d1_1) 0.5008462506410977)
		(= (dummy_1_value d1_2) 0.526459699904676)
		(= (dummy_1_value d1_3) 0.9538185459124765)
		(= (dummy_1_value d1_4) 0.772042385908926)

        (= (dummy_2_value d2_0) 9.182364688838)
		(= (dummy_2_value d2_1) 8.042078205963024)

        (= (dummy_3_value d3_0) 57.265571320499404)
		(= (dummy_3_value d3_1) 93.7369467682025)
		(= (dummy_3_value d3_2) 51.15944600774414)
		(= (dummy_3_value d3_3) 44.63440710817986)

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

