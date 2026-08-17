;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_8)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.225546481332984)

        (= (sled_supplies s0) 6.952428954384898)

        (= (factor_value f0) 0.9292572031782796)
		(= (factor_value f1) 0.655181813676567)
		(= (factor_value f2) 0.9696442160676413)
		(= (factor_value f3) 0.8719210593335606)

        (= (dummy_1_value d1_0) 0.7080861313825128)

        (= (dummy_2_value d2_0) 3.271222920518518)
		(= (dummy_2_value d2_1) 1.0763223621730196)
		(= (dummy_2_value d2_2) 8.908461083879619)

        (= (dummy_3_value d3_0) 4.753736529259477)
		(= (dummy_3_value d3_1) 82.12199695066693)

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

