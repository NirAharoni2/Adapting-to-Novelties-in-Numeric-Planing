;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.312893310983306)

        (= (sled_supplies s0) 1.068323485744485)

        (= (factor_value f0) 0.8322167504448534)

        (= (dummy_1_value d1_0) 0.82093648765807)
		(= (dummy_1_value d1_1) 0.9952572214591211)
		(= (dummy_1_value d1_2) 0.6695814291873879)
		(= (dummy_1_value d1_3) 0.6948138887975027)
		(= (dummy_1_value d1_4) 0.5623545388759931)

        (= (dummy_2_value d2_0) 7.153484833617677)

        (= (dummy_3_value d3_0) 7.967493113381158)
		(= (dummy_3_value d3_1) 85.07294636224557)

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

