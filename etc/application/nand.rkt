(ns nand
  (:refer-clojure :exclude [and or not]))

(defn nand [& inputs]
  (clojure.core/not (every? true? inputs)))

(defn and [a b]
  (nand (nand a b) (nand a b)))

(defn or [a b]
  (nand (nand a) (nand b)))

(defn not [a]
  (nand a))
