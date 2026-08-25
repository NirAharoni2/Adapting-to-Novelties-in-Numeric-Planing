;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.665803015456325)

        (= (sled_supplies s0) 4.5955620048700565)

        (= (factor_value f0) 0.5893154917197343)

        (= (dummy_1_value d1_0) 0.9167563390911406)

        (= (dummy_2_value d2_0) 3.930844344541006)

        (= (dummy_3_value d3_0) 8.964431473324257)
		(= (dummy_3_value d3_1) 60.37734931365001)
		(= (dummy_3_value d3_2) 40.831862795218456)

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

