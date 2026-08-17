;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_100)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.586607385081784)

        (= (sled_supplies s0) 0.8159484885289492)

        (= (factor_value f0) 0.8191345247799917)
		(= (factor_value f1) 0.8795932010667628)
		(= (factor_value f2) 0.8726755933588748)
		(= (factor_value f3) 0.7489853332290475)
		(= (factor_value f4) 0.842026566497897)

        (= (dummy_1_value d1_0) 0.583669870937386)
		(= (dummy_1_value d1_1) 0.6687910696738975)

        (= (dummy_2_value d2_0) 1.7850252028851528)
		(= (dummy_2_value d2_1) 8.416022607837263)
		(= (dummy_2_value d2_2) 3.2612858260786055)
		(= (dummy_2_value d2_3) 5.791569225174951)
		(= (dummy_2_value d2_4) 3.816282073954002)

        (= (dummy_3_value d3_0) 59.80090141056942)
		(= (dummy_3_value d3_1) 3.906940267219306)
		(= (dummy_3_value d3_2) 55.40254149002496)
		(= (dummy_3_value d3_3) 15.184143702878263)
		(= (dummy_3_value d3_4) 94.54710064325798)

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

