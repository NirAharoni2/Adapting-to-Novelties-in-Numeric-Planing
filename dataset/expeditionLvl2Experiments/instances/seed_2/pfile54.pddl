;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.777383744708718)

        (= (sled_supplies s0) 6.658087968629249)

        (= (factor_value f0) 0.6483053083491936)
		(= (factor_value f1) 0.828611295570828)

        (= (dummy_1_value d1_0) 0.586837741595124)
		(= (dummy_1_value d1_1) 0.8946668619459232)

        (= (dummy_2_value d2_0) 4.773115918665205)
		(= (dummy_2_value d2_1) 8.491432313598718)
		(= (dummy_2_value d2_2) 9.707930339760328)
		(= (dummy_2_value d2_3) 6.231384563276669)

        (= (dummy_3_value d3_0) 3.1040600240822003)
		(= (dummy_3_value d3_1) 37.24523727732149)
		(= (dummy_3_value d3_2) 97.61381817842208)
		(= (dummy_3_value d3_3) 65.55547632303848)

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

