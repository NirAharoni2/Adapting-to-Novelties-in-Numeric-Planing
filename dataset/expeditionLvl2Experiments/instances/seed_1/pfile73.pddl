;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.478990048646666)

        (= (sled_supplies s0) 4.843765505500733)

        (= (factor_value f0) 0.7812732129732066)
		(= (factor_value f1) 0.7528066994255)
		(= (factor_value f2) 0.5468384428377724)
		(= (factor_value f3) 0.5924256377606459)
		(= (factor_value f4) 0.6124464987834155)

        (= (dummy_1_value d1_0) 0.652092750764238)
		(= (dummy_1_value d1_1) 0.9030184898442783)
		(= (dummy_1_value d1_2) 0.5293982580112682)
		(= (dummy_1_value d1_3) 0.6569295371996309)

        (= (dummy_2_value d2_0) 7.53828252342857)

        (= (dummy_3_value d3_0) 7.2190746401583)
		(= (dummy_3_value d3_1) 44.874340153154826)
		(= (dummy_3_value d3_2) 23.86287481537155)

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

