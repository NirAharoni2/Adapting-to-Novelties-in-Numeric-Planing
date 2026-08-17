;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -10.0)
		(= (y b0) -10.0)
		(= (x b1) 8.0)
		(= (y b1) -9.0)

		(= (d p0) -39.0)
		(= (d p1) 32.0)

        (= (dummy_1_d d1_0) -112.0)
		(= (dummy_1_d d1_1) -72.0)

        (= (dummy_2_d d2_0) 3.0)
		(= (dummy_2_d d2_1) 8.0)
		(= (dummy_2_d d2_2) 11.0)
		(= (dummy_2_d d2_3) 14.0)
		(= (dummy_2_d d2_4) -4.0)

        (= (dummy_3_d d3_0) -179.0)
		(= (dummy_3_d d3_1) 129.0)
		(= (dummy_3_d d3_2) -530.0)
		(= (dummy_3_d d3_3) -851.0)
		(= (dummy_3_d d3_4) -1199.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

