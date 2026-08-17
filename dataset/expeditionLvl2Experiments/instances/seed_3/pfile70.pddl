;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.9460179937590265)

        (= (sled_supplies s0) 2.9079966163414257)

        (= (factor_value f0) 0.8893468294560143)
		(= (factor_value f1) 0.7188623808259053)
		(= (factor_value f2) 0.8839533968582842)
		(= (factor_value f3) 0.7413345687122379)
		(= (factor_value f4) 0.5601687199727305)

        (= (dummy_1_value d1_0) 0.585118220632642)

        (= (dummy_2_value d2_0) 8.628777024798811)
		(= (dummy_2_value d2_1) 5.313618343343342)
		(= (dummy_2_value d2_2) 4.4418878453055255)
		(= (dummy_2_value d2_3) 5.640836438391128)

        (= (dummy_3_value d3_0) 84.77608439043082)
		(= (dummy_3_value d3_1) 38.157547279047016)
		(= (dummy_3_value d3_2) 36.797484077537426)

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

