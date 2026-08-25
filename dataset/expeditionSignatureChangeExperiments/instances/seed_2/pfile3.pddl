;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_3)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 14.77466559983805)

        (= (sled_supplies s0) 2.2827555793005434)

        (= (factor_value f0) 0.6999317471502382)
		(= (factor_value f1) 0.8692951107822608)
		(= (factor_value f2) 0.827455489077999)

        (= (dummy_1_value d1_0) 0.6249508838728588)
		(= (dummy_1_value d1_1) 0.6395511214615108)
		(= (dummy_1_value d1_2) 0.7490327153386215)
		(= (dummy_1_value d1_3) 0.7576961026770044)
		(= (dummy_1_value d1_4) 0.8981081223261513)

        (= (dummy_2_value d2_0) 6.955170400035815)
		(= (dummy_2_value d2_1) 5.092199080417345)
		(= (dummy_2_value d2_2) 9.128589884557645)

        (= (dummy_3_value d3_0) 35.726705843231095)
		(= (dummy_3_value d3_1) 72.86263523334796)
		(= (dummy_3_value d3_2) 56.200702463489186)

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

