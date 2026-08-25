;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_34)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.49640298366579)

        (= (sled_supplies s0) 4.189834296544786)

        (= (factor_value f0) 0.8213288414375428)
		(= (factor_value f1) 0.670783077724834)
		(= (factor_value f2) 0.5959775540401835)
		(= (factor_value f3) 0.8768018486780191)

        (= (dummy_1_value d1_0) 0.961965812566513)
		(= (dummy_1_value d1_1) 0.8431732234929421)
		(= (dummy_1_value d1_2) 0.6823239640252725)
		(= (dummy_1_value d1_3) 0.8920543217972299)

        (= (dummy_2_value d2_0) 1.6030385453464362)
		(= (dummy_2_value d2_1) 5.668237216230506)

        (= (dummy_3_value d3_0) 25.73834532278823)

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

