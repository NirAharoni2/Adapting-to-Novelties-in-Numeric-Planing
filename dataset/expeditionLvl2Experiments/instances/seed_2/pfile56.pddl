;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.29944086899211)

        (= (sled_supplies s0) 6.748485819798109)

        (= (factor_value f0) 0.5510746584817956)

        (= (dummy_1_value d1_0) 0.7927952715855103)
		(= (dummy_1_value d1_1) 0.5235854320824985)

        (= (dummy_2_value d2_0) 8.370457686575872)
		(= (dummy_2_value d2_1) 3.1278810137434974)

        (= (dummy_3_value d3_0) 82.6051239179026)
		(= (dummy_3_value d3_1) 62.81231951922616)

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

