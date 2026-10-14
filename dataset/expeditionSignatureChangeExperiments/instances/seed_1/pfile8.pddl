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

        (= (sled_capacity s0) 34.10672893165837)

        (= (sled_supplies s0) 4.81100562590409)

        (= (factor_value f0) 8.599292622929937)
		(= (factor_value f1) 3.1725999107960274)
		(= (factor_value f2) 9.398955478139296)
		(= (factor_value f3) 7.4640369748044995)

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

