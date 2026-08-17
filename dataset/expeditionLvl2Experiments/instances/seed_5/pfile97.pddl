;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_97)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.276528429852412)

        (= (sled_supplies s0) 2.81662852377686)

        (= (factor_value f0) 0.9252117293528523)
		(= (factor_value f1) 0.6538552952027985)
		(= (factor_value f2) 0.6227952259367369)
		(= (factor_value f3) 0.5039802154984108)

        (= (dummy_1_value d1_0) 0.9996766291616548)
		(= (dummy_1_value d1_1) 0.8924389784605178)

        (= (dummy_2_value d2_0) 1.2575556116946904)
		(= (dummy_2_value d2_1) 8.609271797370429)

        (= (dummy_3_value d3_0) 28.046468854949506)
		(= (dummy_3_value d3_1) 92.05166195339379)
		(= (dummy_3_value d3_2) 61.13849787486775)
		(= (dummy_3_value d3_3) 59.120965965023814)

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

