(defun C:CEO ()
  (setq G (getreal "\n Podaj grubosc4: "))
  (setq L (getreal "\n Podaj dlugosc ram: "))
  (setq PU (getpoint " Naroznik ceownika: "))

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
  (setq X (- X L))
  (setq PU3 (list X Y))

  ;; Rysowanie pline
  (command "_PLINE" PU PU1 PU2 PU3 "_c")
)