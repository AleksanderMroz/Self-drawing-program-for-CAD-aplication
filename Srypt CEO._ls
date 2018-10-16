(defun C:CEO()
  (setq G (getreal "\n Podaj grubosc: "))
  (setq L (getreal "\n Podaj dlugosc ram: "))

  ;;Punkt Pocz¹tkowy
  (setq X0 (car PU))
  (setq Y0 (cadr PU))

  ;;Punkt 1
  (setq X (+ X0 L))
  (setq PU1 (list X Y0))

  ;; Punkt 2
  (setq Y (+ Y0 G))
  (setq PU2 (list X Y))

  ;; Punkt 3
  (setq X (- X (- L G)))
  (setq PU3 (list X Y0))

  ;; Punkt 4
  (setq X (+ Y (- L G)))
  (setq PU4 (list X Y0))


  ;; Punkt 5
  (setq X (- X G))
  (setq PU5 (list X Y0))

  ;; Rysowanie pline
  (command "_PLINE" PU PU1 PU2 PU3 PU4 PU5 "_c")
  )