;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_59)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.748434279490363)

        (= (sled_supplies s0) 3.892206648439599)

        (= (factor_value f0) 0.6236417278238862)
		(= (factor_value f1) 0.6294202896617366)
		(= (factor_value f2) 0.9024964322355711)
		(= (factor_value f3) 0.9621435850918069)

        (= (dummy_1_value d1_0) 0.86506659505483)
		(= (dummy_1_value d1_1) 0.9142224119802916)

        (= (dummy_2_value d2_0) 1.0678358900257539)

        (= (dummy_3_value d3_0) 21.49614412398523)
		(= (dummy_3_value d3_1) 6.598234818444485)
		(= (dummy_3_value d3_2) 44.78314146932838)

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

