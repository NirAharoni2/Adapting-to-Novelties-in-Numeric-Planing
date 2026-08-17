;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_65)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.108150102792944)

        (= (sled_supplies s0) 0.8837178038449837)

        (= (factor_value f0) 0.6531280356102744)
		(= (factor_value f1) 0.6956495239415776)
		(= (factor_value f2) 0.6205148462946926)
		(= (factor_value f3) 0.981567596983304)
		(= (factor_value f4) 0.9191663414630565)

        (= (dummy_1_value d1_0) 0.8835614372220728)
		(= (dummy_1_value d1_1) 0.7349238911626998)
		(= (dummy_1_value d1_2) 0.6161200622132086)

        (= (dummy_2_value d2_0) 1.4970790264410145)
		(= (dummy_2_value d2_1) 7.719891045860909)
		(= (dummy_2_value d2_2) 7.803264977081537)

        (= (dummy_3_value d3_0) 94.39459810524939)
		(= (dummy_3_value d3_1) 22.611776239783342)
		(= (dummy_3_value d3_2) 66.84851330329951)

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

