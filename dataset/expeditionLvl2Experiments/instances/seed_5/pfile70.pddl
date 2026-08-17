;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.012160917647574)

        (= (sled_supplies s0) 7.857238383954266)

        (= (factor_value f0) 0.5876247896544781)
		(= (factor_value f1) 0.71569722375434)
		(= (factor_value f2) 0.90409406503352)
		(= (factor_value f3) 0.8383800933883272)
		(= (factor_value f4) 0.5813123357499598)

        (= (dummy_1_value d1_0) 0.6916488621674368)

        (= (dummy_2_value d2_0) 8.433073590579676)
		(= (dummy_2_value d2_1) 8.706257517171064)

        (= (dummy_3_value d3_0) 92.46670065692197)
		(= (dummy_3_value d3_1) 57.037584452315244)
		(= (dummy_3_value d3_2) 78.75744277553977)
		(= (dummy_3_value d3_3) 66.35844799159483)
		(= (dummy_3_value d3_4) 29.02358294781554)

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

