;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_30)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 108.72689170668798)

        (= (sled_supplies s0) 3.438374094709083)

        (= (factor_value f0) 4.202803764463646)
		(= (factor_value f1) 6.223566105711074)
		(= (factor_value f2) 7.8365141113755294)
		(= (factor_value f3) 7.430140701815072)
		(= (factor_value f4) 3.7611325436653686)

        (= (dummy_1_value d1_0) 0.9645948447825761)
		(= (dummy_1_value d1_1) 0.637299529944363)

        (= (dummy_2_value d2_0) 7.44460738531994)
		(= (dummy_2_value d2_1) 1.6482971633980172)
		(= (dummy_2_value d2_2) 7.780541314147259)

        (= (dummy_3_value d3_0) 67.32416198568421)
		(= (dummy_3_value d3_1) 95.73419931351096)
		(= (dummy_3_value d3_2) 89.81807768187527)

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

