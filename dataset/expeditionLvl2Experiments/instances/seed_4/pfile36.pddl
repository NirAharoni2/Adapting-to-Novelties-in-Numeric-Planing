;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.138669852130255)

        (= (sled_supplies s0) 0.8846342141064238)

        (= (factor_value f0) 0.6676050146465763)
		(= (factor_value f1) 0.5177691896261685)
		(= (factor_value f2) 0.9389068028950399)
		(= (factor_value f3) 0.814743376574065)

        (= (dummy_1_value d1_0) 0.8363827604206191)
		(= (dummy_1_value d1_1) 0.619028250180789)
		(= (dummy_1_value d1_2) 0.5922729141092746)
		(= (dummy_1_value d1_3) 0.7393530280567828)

        (= (dummy_2_value d2_0) 8.893413131398429)
		(= (dummy_2_value d2_1) 4.192192094875301)
		(= (dummy_2_value d2_2) 4.797552622532601)

        (= (dummy_3_value d3_0) 42.371093903709955)
		(= (dummy_3_value d3_1) 84.60006484352523)

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

