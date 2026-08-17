;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 - dummy_3
	)

  (:init
		(= (x b0) -7.0)
		(= (y b0) 9.0)
		(= (x b1) -0.0)
		(= (y b1) 4.0)

		(= (d p0) 130.0)
		(= (d p1) -128.0)

        (= (dummy_1_d d1_0) 16.0)
		(= (dummy_1_d d1_1) -19.0)
		(= (dummy_1_d d1_2) -150.0)
		(= (dummy_1_d d1_3) -38.0)

        (= (dummy_2_d d2_0) -8.0)
		(= (dummy_2_d d2_1) 1.0)
		(= (dummy_2_d d2_2) 10.0)

        (= (dummy_3_d d3_0) -1080.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

