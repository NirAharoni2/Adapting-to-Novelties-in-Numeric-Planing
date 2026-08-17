;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.884349778828236)

        (= (sled_supplies s0) 3.53323580856898)

        (= (factor_value f0) 0.861689934808429)
		(= (factor_value f1) 0.6967571134255868)
		(= (factor_value f2) 0.9770405130832136)
		(= (factor_value f3) 0.8171026405286356)
		(= (factor_value f4) 0.6452674969843273)

        (= (dummy_1_value d1_0) 0.8472138300994091)
		(= (dummy_1_value d1_1) 0.974313479451274)
		(= (dummy_1_value d1_2) 0.5765595052508583)
		(= (dummy_1_value d1_3) 0.8423170545227245)
		(= (dummy_1_value d1_4) 0.8307595064429132)

        (= (dummy_2_value d2_0) 6.0754878597181)
		(= (dummy_2_value d2_1) 3.1706245284663552)
		(= (dummy_2_value d2_2) 5.555112755155014)
		(= (dummy_2_value d2_3) 5.07948101574291)
		(= (dummy_2_value d2_4) 7.6403923805853795)

        (= (dummy_3_value d3_0) 42.01840398150824)
		(= (dummy_3_value d3_1) 80.87098824531385)
		(= (dummy_3_value d3_2) 74.54179314094524)

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

