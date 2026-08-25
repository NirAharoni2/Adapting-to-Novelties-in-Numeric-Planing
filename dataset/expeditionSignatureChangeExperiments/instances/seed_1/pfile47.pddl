;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.678809908550136)

        (= (sled_supplies s0) 0.5187676006896702)

        (= (factor_value f0) 0.6968853596638709)
		(= (factor_value f1) 0.9491596937901994)
		(= (factor_value f2) 0.8163647029648402)
		(= (factor_value f3) 0.7745615360629705)

        (= (dummy_1_value d1_0) 0.5269695281985827)

        (= (dummy_2_value d2_0) 5.576753027653815)
		(= (dummy_2_value d2_1) 2.5763205078634126)
		(= (dummy_2_value d2_2) 2.9352089693776264)
		(= (dummy_2_value d2_3) 4.9115104188803205)
		(= (dummy_2_value d2_4) 5.913611383586191)

        (= (dummy_3_value d3_0) 25.790801155153368)
		(= (dummy_3_value d3_1) 27.82250363780953)
		(= (dummy_3_value d3_2) 53.48448765957909)
		(= (dummy_3_value d3_3) 47.850173253426334)
		(= (dummy_3_value d3_4) 40.92546082420948)

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

