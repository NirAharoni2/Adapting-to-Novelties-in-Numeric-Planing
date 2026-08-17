;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 10.0)
		(= (x b1) -3.0)
		(= (y b1) -3.0)

		(= (d p0) 149.0)
		(= (d p1) -107.0)

        (= (dummy_1_d d1_0) 126.0)

        (= (dummy_2_d d2_0) -12.0)
		(= (dummy_2_d d2_1) -1.0)
		(= (dummy_2_d d2_2) -7.0)
		(= (dummy_2_d d2_3) 4.0)
		(= (dummy_2_d d2_4) -13.0)

        (= (dummy_3_d d3_0) -237.0)
		(= (dummy_3_d d3_1) 513.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

