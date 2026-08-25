;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.477659217923938)

        (= (sled_supplies s0) 2.1847865444181553)

        (= (factor_value f0) 0.7791463511226371)
		(= (factor_value f1) 0.9473281431138365)
		(= (factor_value f2) 0.7408227069725902)
		(= (factor_value f3) 0.9868741135128518)

        (= (dummy_1_value d1_0) 0.7634943055400771)

        (= (dummy_2_value d2_0) 2.6299136319418657)
		(= (dummy_2_value d2_1) 6.5356237826454215)
		(= (dummy_2_value d2_2) 6.400830313518795)
		(= (dummy_2_value d2_3) 6.392991469623364)

        (= (dummy_3_value d3_0) 72.73974373517734)
		(= (dummy_3_value d3_1) 3.2643984474066405)

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

