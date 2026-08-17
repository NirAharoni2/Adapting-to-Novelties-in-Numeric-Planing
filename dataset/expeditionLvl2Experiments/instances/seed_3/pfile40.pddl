;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_40)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.647505893873333)

        (= (sled_supplies s0) 6.8498784809401005)

        (= (factor_value f0) 0.9255338655058435)
		(= (factor_value f1) 0.9138004685153208)
		(= (factor_value f2) 0.9656629397925101)
		(= (factor_value f3) 0.8062317977599339)
		(= (factor_value f4) 0.5152980287242787)

        (= (dummy_1_value d1_0) 0.7872543468986797)
		(= (dummy_1_value d1_1) 0.7748740245254817)

        (= (dummy_2_value d2_0) 5.388284930043106)
		(= (dummy_2_value d2_1) 3.5186454807943255)
		(= (dummy_2_value d2_2) 7.384562416253632)
		(= (dummy_2_value d2_3) 9.204614605074994)
		(= (dummy_2_value d2_4) 1.922117269908476)

        (= (dummy_3_value d3_0) 67.20053905627917)
		(= (dummy_3_value d3_1) 37.758943135525435)
		(= (dummy_3_value d3_2) 51.96450525681144)

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

