;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_85)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.699861943981311)

        (= (sled_supplies s0) 0.3818166893226871)

        (= (factor_value f0) 0.9142794988777816)
		(= (factor_value f1) 0.6517351833498038)

        (= (dummy_1_value d1_0) 0.9663247962574779)

        (= (dummy_2_value d2_0) 2.5607122973990566)

        (= (dummy_3_value d3_0) 70.5475451270405)
		(= (dummy_3_value d3_1) 76.72094452347443)

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

