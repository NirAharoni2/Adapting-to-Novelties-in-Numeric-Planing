;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_49)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) 7.0)
		(= (y b0) 9.0)
		(= (x b1) -9.0)
		(= (y b1) -7.0)

		(= (d p0) 79.0)
		(= (d p1) 66.0)

        (= (dummy_1_d d1_0) 55.0)
		(= (dummy_1_d d1_1) 51.0)
		(= (dummy_1_d d1_2) -62.0)
		(= (dummy_1_d d1_3) -148.0)
		(= (dummy_1_d d1_4) 31.0)

        (= (dummy_2_d d2_0) 5.0)
		(= (dummy_2_d d2_1) -3.0)
		(= (dummy_2_d d2_2) -12.0)
		(= (dummy_2_d d2_3) -1.0)
		(= (dummy_2_d d2_4) 15.0)

        (= (dummy_3_d d3_0) 602.0)
		(= (dummy_3_d d3_1) 582.0)
		(= (dummy_3_d d3_2) -1454.0)
		(= (dummy_3_d d3_3) 561.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

