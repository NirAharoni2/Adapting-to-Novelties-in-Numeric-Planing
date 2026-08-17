;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.032259259459128)

        (= (sled_supplies s0) 4.692908772328209)

        (= (factor_value f0) 0.564018357043778)
		(= (factor_value f1) 0.8225791190610587)
		(= (factor_value f2) 0.6887359339645411)
		(= (factor_value f3) 0.537685753838545)

        (= (dummy_1_value d1_0) 0.7181324656333316)
		(= (dummy_1_value d1_1) 0.8028646389441071)
		(= (dummy_1_value d1_2) 0.8440790491197024)
		(= (dummy_1_value d1_3) 0.570619502786156)

        (= (dummy_2_value d2_0) 5.737858512876642)
		(= (dummy_2_value d2_1) 2.823848638472898)
		(= (dummy_2_value d2_2) 1.7086780689664713)
		(= (dummy_2_value d2_3) 7.0815056085034565)
		(= (dummy_2_value d2_4) 8.59364240743149)

        (= (dummy_3_value d3_0) 19.4192535146727)

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

