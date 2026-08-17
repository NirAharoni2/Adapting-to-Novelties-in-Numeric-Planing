;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.7938077996138535)

        (= (sled_supplies s0) 0.22817549275776763)

        (= (factor_value f0) 0.6436332719989702)

        (= (dummy_1_value d1_0) 0.5891301963274449)
		(= (dummy_1_value d1_1) 0.5126977162512925)
		(= (dummy_1_value d1_2) 0.737697800983439)

        (= (dummy_2_value d2_0) 5.73081635392996)

        (= (dummy_3_value d3_0) 88.42757120598185)
		(= (dummy_3_value d3_1) 48.766225353016445)
		(= (dummy_3_value d3_2) 18.26725066752001)
		(= (dummy_3_value d3_3) 43.476345760870494)
		(= (dummy_3_value d3_4) 16.81400568789034)

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

