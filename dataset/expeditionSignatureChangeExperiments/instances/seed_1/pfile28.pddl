;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.476154246258183)

        (= (sled_supplies s0) 3.987213559643455)

        (= (factor_value f0) 0.6998528735086994)
		(= (factor_value f1) 0.7475114407010894)
		(= (factor_value f2) 0.6889471365161706)
		(= (factor_value f3) 0.5842987894022398)
		(= (factor_value f4) 0.6158586563011137)

        (= (dummy_1_value d1_0) 0.9100749987499472)
		(= (dummy_1_value d1_1) 0.7312879023962449)
		(= (dummy_1_value d1_2) 0.7899663723617549)
		(= (dummy_1_value d1_3) 0.6059535088080797)

        (= (dummy_2_value d2_0) 7.434415529078799)
		(= (dummy_2_value d2_1) 3.9710553323253728)
		(= (dummy_2_value d2_2) 6.342567287374367)

        (= (dummy_3_value d3_0) 91.03921921678574)
		(= (dummy_3_value d3_1) 99.44494747971285)
		(= (dummy_3_value d3_2) 5.575576883001406)

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

