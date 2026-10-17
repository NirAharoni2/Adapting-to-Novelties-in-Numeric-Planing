;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 196.96652180807547)

        (= (sled_supplies s0) 1.0780989453690804)

        (= (factor_value f0) 6.364139549542466)
		(= (factor_value f1) 1.93206744001739)
		(= (factor_value f2) 8.328329784084623)
		(= (factor_value f3) 4.775115558277692)

        (= (dummy_1_value d1_0) 0.5261556439383227)
		(= (dummy_1_value d1_1) 0.9890049845020616)

        (= (dummy_2_value d2_0) 1.295835578298162)
		(= (dummy_2_value d2_1) 6.1929166624130545)
		(= (dummy_2_value d2_2) 5.337948622893624)
		(= (dummy_2_value d2_3) 8.936102756772794)

        (= (dummy_3_value d3_0) 39.87906707044549)

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

