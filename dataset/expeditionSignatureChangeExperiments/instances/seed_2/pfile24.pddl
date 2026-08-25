;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.989638712530219)

        (= (sled_supplies s0) 2.4073200724831794)

        (= (factor_value f0) 0.5044227251892779)
		(= (factor_value f1) 0.5529799896057492)
		(= (factor_value f2) 0.675320603775194)
		(= (factor_value f3) 0.5865691156124329)
		(= (factor_value f4) 0.5734301076356503)

        (= (dummy_1_value d1_0) 0.8348821810757525)
		(= (dummy_1_value d1_1) 0.5459614632130088)

        (= (dummy_2_value d2_0) 9.743539097737674)

        (= (dummy_3_value d3_0) 65.28678428439305)
		(= (dummy_3_value d3_1) 5.9268962589213725)
		(= (dummy_3_value d3_2) 89.97331316776446)
		(= (dummy_3_value d3_3) 24.911126437764427)

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

