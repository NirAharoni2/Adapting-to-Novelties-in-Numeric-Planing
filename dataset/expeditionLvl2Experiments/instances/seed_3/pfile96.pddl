;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.265894932946475)

        (= (sled_supplies s0) 7.540430235104573)

        (= (factor_value f0) 0.6526329655611388)
		(= (factor_value f1) 0.5989098313918699)
		(= (factor_value f2) 0.9560942127132501)

        (= (dummy_1_value d1_0) 0.6834371716183347)
		(= (dummy_1_value d1_1) 0.5529052670161705)

        (= (dummy_2_value d2_0) 9.787846863650742)
		(= (dummy_2_value d2_1) 5.597112897626491)
		(= (dummy_2_value d2_2) 7.082535517521829)

        (= (dummy_3_value d3_0) 34.58000214910899)
		(= (dummy_3_value d3_1) 15.742233961749603)
		(= (dummy_3_value d3_2) 33.91124767117815)
		(= (dummy_3_value d3_3) 83.51334549081017)
		(= (dummy_3_value d3_4) 28.11577715195506)

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

