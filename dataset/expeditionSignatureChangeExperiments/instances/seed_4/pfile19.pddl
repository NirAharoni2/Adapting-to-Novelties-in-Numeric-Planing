;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_19)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.168795441475606)

        (= (sled_supplies s0) 3.125271828239911)

        (= (factor_value f0) 0.7936135015933006)
		(= (factor_value f1) 0.5535812321115641)
		(= (factor_value f2) 0.8096234683062131)
		(= (factor_value f3) 0.9558686254798865)
		(= (factor_value f4) 0.6525740732642269)

        (= (dummy_1_value d1_0) 0.8234242529863102)
		(= (dummy_1_value d1_1) 0.948581171830785)

        (= (dummy_2_value d2_0) 6.400908258875699)
		(= (dummy_2_value d2_1) 1.3350323690945392)
		(= (dummy_2_value d2_2) 6.687531358808391)
		(= (dummy_2_value d2_3) 3.301021488091148)

        (= (dummy_3_value d3_0) 85.93842126001074)
		(= (dummy_3_value d3_1) 66.53307326519753)
		(= (dummy_3_value d3_2) 31.431811643013308)
		(= (dummy_3_value d3_3) 89.66888486050624)

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

